# ABAP-RAP-Managed-Flight-App
A full-stack SAP RAP application featuring a Managed Business Object, custom validations, and Fiori Elements UI configuration.
# Managed RAP Flight Application

## Overview
This repository contains a full-stack implementation of a **Managed Business Object** using the **ABAP RESTful Application Programming Model (RAP)**.

## Key Features
* **Managed Implementation:** CRUD operations handled by the RAP framework.
* **Price Validation:** Custom ABAP logic to ensure flight prices are always positive.
* **UI Optimization:** Metadata Extensions used to configure Fiori Elements (filters, field positions, and visibility).
* **Field Control:** `Plane Type` is set to read-only at the behavior level.

## How to use
1. Clone this repository via **abapGit**.
2. Activate all objects in your ABAP Package.
3. Open Service Binding `ZUI_1994FLIGHT_O4` and click **Preview**.
