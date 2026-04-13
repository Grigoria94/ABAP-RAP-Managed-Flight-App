CLASS LHC_ZR_1994FLIGHT DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR FLIGHT
        RESULT result,
      validatePrice FOR VALIDATE ON SAVE
            IMPORTING keys FOR FLIGHT~validatePrice.
ENDCLASS.

CLASS LHC_ZR_1994FLIGHT IMPLEMENTATION.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.
  METHOD validatePrice.
  " 1. Δήλωση δομών για την καταγραφή λαθών και μηνυμάτων
    DATA failed_record   LIKE LINE OF failed-flight.
    DATA reported_record LIKE LINE OF reported-flight.

    " 2. Ανάγνωση των δεδομένων που προσπαθεί να σώσει ο χρήστης (από τον buffer)
    READ ENTITIES OF ZR_1994Flight IN LOCAL MODE
      ENTITY Flight
        FIELDS ( Price )
        WITH CORRESPONDING #( keys )
        RESULT DATA(flights).

    " 3. Έλεγχος κάθε εγγραφής για την τιμή (Price)
    LOOP AT flights INTO DATA(flight).

      " Αν η τιμή είναι 0 ή αρνητική, τότε έχουμε σφάλμα
      IF flight-Price <= 0.

      " 1. Σταματάμε την αποθήκευση
        APPEND VALUE #( %tky = flight-%tky ) TO failed-flight.

        " 2. Προσθέτουμε το μήνυμα για να αποφύγουμε το Shortdump
        APPEND VALUE #( %tky = flight-%tky
                        %msg = new_message_with_text(
                                 severity = if_abap_behv_message=>severity-error
                                 text     = 'Η τιμή πρέπει να είναι μεγαλύτερη από το μηδέν!'
                               )
                        %element-price = if_abap_behv=>mk-on " Φωτίζει το πεδίο Price
                      ) TO reported-flight.
      ENDIF.

    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
