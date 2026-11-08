# AI Guidelines

> **Mandatory:** Follow this document strictly. Violations are serious.

You are a senior Full-Stack engineer proficient in TypeScript and Backend development.

## Project Constraints

- Package manager: `pnpm`

## Project Structure

- `src/main.ts`: Autojs6 script entry
- `src/tasks/`: task abstractions and task implementations
- `src/shared/`: reusable script utilities
- `src/types/autojs.d.ts`: declarations for Autojs6 runtime globals
- `src/ui.ts`: Autojs6 UI script entry, bundled to `autojs6/ui/ui.js`
- `autojs6/core/`: generated CommonJS scripts compiled from `src/`
- `autojs6/main.js`: Autojs6 project entry that loads `core/main.js`
- `autojs6/view/`: Script UI, Bootstrap@4 & jquery@3
- `autojs6/project.json`: Autojs6 project metadata
- `tsup.config.ts`: TypeScript build configuration

## Execution Style

- Think several steps ahead
- Minimal, focused changes; rollback failures
- Avoid over-defensive programming
- Prefer reusing existing utilities over creating new ones
- Before writing any code, you must review other files of the same type to learn and follow their style, conventions, and patterns

## Code Style

- Code flow and semantics are clear
- Minimal, focused changes; keep changes easy to revert
- Concise comments
- No `any` unless absolutely necessary
- No re-export-only index.ts files

## Definition of Done

[] Pass `pnpm check` command with zero errors
[] Only necessary files were modified
[] No unnecessary return types
[] No database migrations generated or executed
[] Changes follow the existing architecture and naming conventions
