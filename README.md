# Learning SAP RAP: From Scratch to a Managed Business Object:
A full-stack SAP RAP application featuring a Managed Business Object, custom validations, and Fiori Elements UI configuration.

## 🚀 The Journey
This project represents my hands-on learning process with the **ABAP RESTful Application Programming Model (RAP)**. I started from a blank system and built a complete flight management application, overcoming challenges in data modeling, business logic, and UI configuration.

## 🧠 What I Learned & Implemented
- **Data Modeling:** Built CDS entities from scratch, separating the Base Layer (`ZR_`) from the Projection Layer (`ZC_`).
- **Managed Behavior:** Implemented a Managed Business Object where I learned how the framework handles CRUD operations automatically.
- **Business Logic (ABAP):** - Created a **Behavior Pool** class to handle custom logic.
    - Developed a **Validation** to ensure flight prices are valid, learning how to trigger state messages and handle "Dumps" during debugging.
- **Field Control:** Learned how to lock specific fields (like `PlaneTypeID`) using `field ( readonly )` to enforce business rules.
- **UI & UX (Fiori Elements):** - Mastered **Metadata Extensions** to organize a messy UI into a clean, professional interface.
    - Configured Search Filters, Value Helps, and hidden administrative fields.

## 🛠 Lessons Learned during Debugging
One of the most valuable parts of this project was learning to use the **ABAP Debugger** and **Runtime Error Browser**. I successfully resolved issues related to missing message classes and draft-locking mechanisms.
