---
description: Build A Expo App Demo
---

# APP Development

## APP Introduction

I want to build an APP With Expo. I'll give you the basic info, and you help me expand some features:

${@:2}

## Basic Requirements

- Language: APP must use English only, no other languages allowed
- Execution: Develop directly according to my requirements, break down tasks into multiple TODOs and complete them step by step

## Development Standards

- If third-party services are needed, mock the data yourself
- No emoji icons allowed, must use @expo/vector-icons for all icons
- Page component styles must be extracted into separate xx.style.ts files
- Components should not exceed 300 lines
- All images use placeholder images with format: `https://picsum.photos/:width/:height?grayscale`

## Backend

Backend uses json-server running on `http://103.236.97.252:56711/$1/<entity>`. Entity reference: `entity-design.md`

### Usage Examples

```typescript
// GET - List query (supports pagination, sorting, search)
GET http://103.236.97.252:56711/$1/<entity-name>?_page=1&_limit=10&_sort=createdAt&_order=desc&q=keyword

// GET - Detail query
GET http://103.236.97.252:56711/$1/<entity-name>/1

// POST - Create resource
POST http://103.236.97.252:56711/$1/<entity-name>/

// PUT - Full update
PUT http://103.236.97.252:56711/$1/<entity-name>/1

// PATCH - Partial update
PATCH http://103.236.97.252:56711/$1/<entity-name>/1

// DELETE - Delete resource
DELETE http://103.236.97.252:56711/$1/<entity-name>/1
```

### Notes

- Don't forget the `$1` prefix when making API calls
- All tables are currently empty; you can use curl to POST data if needed
- All APIs are managed in `api.ts`
- API calls are placed in `store`
- Recommend encapsulating unified request methods with error handling and Loading state

## Design & Feature Standards

1. Design style: Strictly follow Western mainstream APP design standards
2. Page interaction: All page navigation logic must be accurate, clicks should navigate to the target page
3. Page structure: You may adjust page organization as needed, but must ensure complete functional closure

Skill usage:

- ui-ux-pro-max: Determine APP color scheme and overall visual style

## Execution Standards

1. Use GET request to check if the interface is working
2. Output phased, actionable complete TODO list
3. Execute in TODO order, mark each completed item [DONE]

## Delivery Standards

- Complete all functional closures
- Pass lint validation
