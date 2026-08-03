# AI Fix Notes

Session: seq-1785742373882-ogaanzckr
Repository: Ncorp30/SQL-Repo

## Summary

- Detected actionable issues: 20
- Issues with proposed PR changes: 4
- Issues requiring manual review: 16
- Automated fix mode: partial / safety-first

## Safety Policy

High-priority findings touching security, authentication, credentials, network behavior, dependency safety, privacy, request handling, or response handling are not silently edited by the agent. They are listed for manual review unless the workflow can generate a bounded, low-risk change with enough context.

## Proposed Changes Included in This PR

- [1] (high) Employee-Management-System-SQL/SQL Scripts/02_Create_Tables.sql: The schema defines Email as UNIQUE but leaves it nullable. In SQL Server, UNIQUE constraints allow multiple NULLs, which may not match business rules for employee identity. If every employee must have an email, add NOT NULL and consider a CHECK constraint for format if appropriate.
- [2] (high) Employee-Management-System-SQL/SQL Scripts/08_TOP.sql: Question 1 selects `Department`, but other scripts and likely the schema use `DepartmentID`. If `Department` does not exist, this query will fail. This indicates schema inconsistency and should be corrected to match the actual table definition.
- [3] (medium) Employee-Management-System-SQL/SQL Scripts/02_Create_Tables.sql: The Employees table likely depends on Departments via DepartmentID, but the excerpt does not show an explicit FOREIGN KEY definition. Without referential integrity, invalid department references can be inserted. Add a foreign key constraint and define ON DELETE/UPDATE behavior intentionally.
- [4] (medium) Employee-Management-System-SQL/SQL Scripts/02_Create_Tables.sql: Core columns such as Gender, City, and Phone are stored as free-form VARCHAR fields without domain checks. This increases inconsistent data entry risk. Use CHECK constraints or reference tables where appropriate, especially for Gender if the domain is intentionally limited.

## Manual Review Required

- [1] (medium) Employee-Management-System-SQL/SQL Scripts/03_Insert_Data.sql: Multi-row inserts assume department rows already exist and IDs are stable. The script depends on prior execution order and identity values, making reruns fragile. Prefer explicit natural keys or lookup by DepartmentName when inserting related employee rows.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [2] (medium) Employee-Management-System-SQL/SQL Scripts/04_Basic_SELECT.sql: Queries are written as tutorial-style standalone statements without reusable structure, parameterization, or explanatory context for production use. This is fine for practice, but in a real repository it limits testability and makes it harder to validate assumptions about schema and data.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [3] (medium) Employee-Management-System-SQL/SQL Scripts/07_ORDER_BY.sql: The script repeats SELECT * queries and includes duplicate logic for ordering by salary. SELECT * increases I/O and couples the query to schema changes, which is inefficient and brittle. Select only required columns and remove duplicate examples.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [4] (medium) Employee-Management-System-SQL/SQL Scripts/08_TOP.sql: The `TOP 5` and `TOP 3` queries without `ORDER BY` return nondeterministic results. SQL Server does not guarantee row order unless explicitly sorted, so 'first 5 employees' and 'top 3 youngest employees' are ambiguous or incorrect as written.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [5] (medium) Employee-Management-System-SQL/SQL Scripts/08_TOP.sql: `SELECT TOP 10 * FROM Employees ORDER BY Salary DESC` may be expensive on large tables because sorting on `Salary` can require a full scan if no suitable index exists. Consider an index on `Salary DESC` if this query is common, and avoid `SELECT *` to reduce I/O.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [6] (medium) Employee-Management-System-SQL/SQL Scripts/08_TOP.sql: `ORDER BY DateOfBirth DESC` for finding youngest employees can be slow without an index on `DateOfBirth`. If this is a frequent access pattern, add an appropriate index and select only needed columns instead of `*`.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [7] (medium) Employee-Management-System-SQL/SQL Scripts/10_GROUP_BY.sql: Creating IX_Employees_DepartmentID inside a query practice script is a side effect that changes database state unexpectedly. If the index is intended for permanent use, move it to the schema/setup script. Repeated execution will also fail unless guarded with existence checks.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [8] (medium) Employee-Management-System-SQL/SQL Scripts/10_GROUP_BY.sql: The index creation is not idempotent. Running the script more than once may raise an error if the index already exists. Use IF NOT EXISTS logic before CREATE INDEX to make the script safely rerunnable.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [9] (medium) Employee-Management-System-SQL/SQL Scripts/11_HAVING.sql: The file contains duplicated exercise labels (`Question 2` and `Question 2(Having)`), which makes the script harder to navigate and maintain. Rename sections consistently and ensure each question is unique.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [10] (low) Employee-Management-System-SQL/SQL Scripts/01_Database_Setup.sql: Database creation is not idempotent under concurrent execution. `IF DB_ID(...) IS NULL CREATE DATABASE ...` can still race if two sessions run simultaneously. Use TRY/CATCH or check-and-create from a deployment tool to avoid rare deployment failures.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [11] (low) Employee-Management-System-SQL/SQL Scripts/05_DISTINCT.sql: `SELECT DISTINCT` on large tables can be expensive because it requires deduplication and often sorting/hash aggregation. If this is used frequently in production, consider indexing the referenced columns (`City`, `DepartmentID`) or pre-aggregated reporting structures.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [12] (low) Employee-Management-System-SQL/SQL Scripts/06_WHERE.sql: Queries filter on DepartmentID and Salary. If the dataset grows, missing indexes on frequently filtered columns will slow down scans. Consider indexing DepartmentID and Salary only if these patterns are common and the write overhead is acceptable.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [13] (low) Employee-Management-System-SQL/SQL Scripts/07_ORDER_BY.sql: The presence of both multi-line and single-line versions of the same query indicates duplication without additional learning value. This increases noise and makes the script harder to review. Keep one canonical example per concept.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [14] (low) Employee-Management-System-SQL/SQL Scripts/09_FUNCTIONS.sql: The script is query-practice oriented and contains many standalone SELECT statements without consistent formatting or reusable structure. This is acceptable for learning, but harder to maintain and validate at scale. Consider grouping examples into labeled sections with consistent aliasing and comments.
  - Reason: Deferred by automated fix budget (6 issues per run).
  - Next step: Rerun a focused fix pass or review this issue manually.
- [15] (high) Employee-Management-System-SQL/SQL Scripts/03_Insert_Data.sql: Script begins with a direct USE statement and a transaction, but no visible error handling (TRY/CATCH) or explicit ROLLBACK path. If any insert fails, the batch may leave the transaction open or partially applied depending on execution context. Add TRY/CATCH with COMMIT/ROLLBACK to make the load reliable.
  - Reason: The AI did not generate a meaningful source-file change for this issue.
  - Next step: Review the finding manually or rerun a focused fix pass with more context.
- [16] (high) Employee-Management-System-SQL/SQL Scripts/03_Insert_Data.sql: Sample employee seed data includes personally identifiable information (names, emails, phone numbers, dates of birth, salaries). If this repository is public, this can be mistaken for real data or reused inappropriately. Use clearly fictional/anonymized test data and document that it is synthetic.
  - Reason: The AI did not generate a meaningful source-file change for this issue.
  - Next step: Review the finding manually or rerun a focused fix pass with more context.