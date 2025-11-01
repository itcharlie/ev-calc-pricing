# Product Requirements Document: ev-calc-pricing

## 1. Overview

This document outlines the requirements and recommendations for improving the `ev-calc-pricing` application. The project serves a clear purpose by calculating EV charging costs, but it currently suffers from maintainability, data accuracy, and robustness issues.

The following sections detail a plan to refactor the application to address these shortcomings, focusing on automating data management, improving code quality, and enhancing the user experience.

## 2. Current State Analysis

A recent code review identified several key areas for improvement:

*   **The Good:** The application has a simple, understandable structure based on the Dancer2 framework and a clear separation of concerns between the web layer and business logic.
*   **The Bad:** The project relies on manually updated, hardcoded data, which is inefficient and prone to errors. The test suite is minimal, providing no real validation of the application's logic.
*   **The Ugly:** State electricity rate data is hardcoded directly into a Perl module (`StateRates.pm`). The project also contains several unused and redundant data-processing scripts, which adds clutter and confusion. The user interface lacks input validation, potentially leading to application errors.

## 3. Goals and Objectives

The primary goals of this initiative are to:

*   **Improve Maintainability:** Automate the data pipeline to eliminate manual code changes for data updates.
*   **Increase Reliability:** Develop a comprehensive test suite to ensure calculations are accurate and the application is stable.
*   **Enhance Code Quality:** Refactor the codebase to remove hardcoded data and clean up unused scripts.
*   **Improve User Experience:** Add input validation and provide clearer feedback to the user.

## 4. Key Features / Epics

### Epic 1: Automated Data Pipeline

**Description:** The current process of manually updating a Perl hash with electricity rate data is unsustainable. This epic focuses on creating an automated pipeline to fetch, process, and load the data.

**User Stories:**

*   As a developer, I want a script that can automatically download the latest state electricity rate data from a reliable source (e.g., the EIA API or a regularly updated public CSV).
*   As a developer, I want the application to load this data from a flat-file database (like SQLite) or a structured text file (like JSON or CSV) instead of a hardcoded Perl module.
*   As a developer, I want the data update process to be a single, easy-to-run command.

### Epic 2: Comprehensive Test Suite

**Description:** The lack of meaningful tests makes it impossible to verify the correctness of the application's logic or prevent regressions. This epic involves building a robust test suite.

**User Stories:**

*   As a developer, I want unit tests for the cost calculation logic in `EVCalc.pm` to verify its accuracy with a range of inputs.
*   As a developer, I want unit tests for the data-loading module (`StateRates.pm`) to ensure it correctly retrieves data for any given state and year.
*   As a developer, I want integration tests for the main web route (`/`) to ensure it handles GET and POST requests correctly and returns the expected results.

### Epic 3: Code Refactoring and Cleanup

**Description:** The project contains technical debt that makes it difficult to understand and maintain. This epic focuses on cleaning up the codebase.

**User Stories:**

*   As a developer, I want to refactor `StateRates.pm` to read data from an external source (as defined in Epic 1) instead of containing a hardcoded hash.
*   As a developer, I want to remove the redundant and unused scripts from the `bin/` directory (`generate_state_rate_hashdb.pl`, `generate_state_rate_hashdb2.pl`, etc.) to reduce project clutter.
*   As a developer, I want to consolidate any remaining data files (`electric_rates.txt`, `average_electric_rates_by_year.csv`) into a single, canonical data source.

### Epic 4: Enhanced User Experience

**Description:** The application's frontend can be made more robust and user-friendly.

**User Stories:**

*   As a user, I want the application to validate my inputs (AER, battery size, etc.) to ensure they are valid numbers.
*   As a user, I want to see clear error messages if I submit the form with invalid or missing information.
*   As a user, I want the form to remember my previous inputs when the page reloads after submission.

## 5. Success Metrics

*   **Data Update Time:** Time required to update the application with the latest electricity rate data is reduced from hours to minutes.
*   **Code Coverage:** Test suite coverage increases from <1% to >80%.
*   **Bug Reports:** User-reported bugs related to incorrect calculations or invalid inputs are eliminated.

## 6. Future Considerations (Out of Scope)

*   Adding support for historical EV charging cost calculations.
*   Expanding the dataset to include more EV models with pre-filled specifications.
*   Creating a public API to allow other services to consume the pricing data.
