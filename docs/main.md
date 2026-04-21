# Megumin UI Documentation

*This is a draft version and it's not accurate.*

A lightweight, dark-mode ready CSS framework focusing on simplicity and modern design.

## Table of Contents
1. [Getting Started](#getting-started)
   - [Installation](#installation)
   - [Basic Setup](#basic-setup)
2. [Components](#components)
   - [Layout](#layout)
   - [Typography](#typography)
   - [Buttons](#buttons)
   - [Badges](#badges)
   - [Alerts](#alerts)
   - [Footers](#footers)
3. [Utilities](#utilities)
   - [Text Utilities](#text-utilities)
   - [Layout Utilities](#layout-utilities)
   - [Spacing Utilities](#spacing-utilities)
4. [Theming](#theming)
   - [Colors](#colors)
   - [Dark Mode](#dark-mode)
5. [Browser Support](#browser-support)
6. [Migration Guide](#migration-guide)

## Getting Started

### Installation

```bash
# Using npm
npm install megumin-ui

# Using yarn
yarn add megumin-ui
```

### Basic Setup

Add to your HTML:
```html
<link rel="stylesheet" href="node_modules/megumin-ui/dist/megumin-ui.css">
```

Or import in LESS:
```less
@import "megumin-ui/src/main.less";
```

#### Opt-out variants

If you do not need the layout utilities (flex/grid classes), use one of the smaller no-layout builds to reduce your CSS footprint:

| File | Dark mode | Layout utilities |
|------|-----------|------------------|
| `dist/megumin-ui.css` | ✅ | ✅ |
| `dist/megumin-ui-no-dark.css` | ❌ | ✅ |
| `dist/megumin-ui-no-layout.css` | ✅ | ❌ |
| `dist/megumin-ui-no-dark-no-layout.css` | ❌ | ❌ |

LESS users can also import layout utilities on-demand:

```less
// Import only the layout utilities
@import "megumin-ui/src/components/default/layout.less";
```

## Components

### Layout

The framework uses a flexible container system:

```html
<div class="container">
  <!-- Content here -->
</div>

<!-- Full screen container -->
<body class="screen-size">
  <div class="container">
    <!-- Content here -->
  </div>
</body>
```

### Typography

Built-in typography with responsive sizing:

```html
<h1>Heading 1 (2.5rem)</h1>
<h2>Heading 2 (2rem)</h2>
<h3>Heading 3 (1.75rem)</h3>
<h4>Heading 4 (1.5rem)</h4>
<h5>Heading 5 (1.25rem)</h5>
<h6>Heading 6 (1rem)</h6>

<a href="#">Default Link Style</a>
```

### Buttons

Various button styles and sizes. The same color variant classes work on both `<button>` elements and `<a>` elements with the `.btn` class.

```html
<!-- Colors -->
<button>Default</button>
<button class="primary">Primary</button>
<button class="secondary">Secondary</button>
<button class="tertiary">Tertiary</button>

<!-- Anchor elements styled as buttons -->
<a href="/signup" class="btn primary">Sign Up</a>
<a href="/learn-more" class="btn secondary">Learn More</a>
<a href="/docs" class="btn tertiary">Documentation</a>

<!-- Sizes -->
<button class="small">Small Button</button>
<button class="large">Large Button</button>
<button class="x-large">Extra Large Button</button>

<!-- States -->
<button disabled>Disabled Button</button>
<!-- For anchor elements, use aria-disabled -->
<a class="btn primary" aria-disabled="true">Disabled Link Button</a>
```

### Badges

Inline status indicators and count labels. Badges support both palette variants and semantic state variants.

```html
<!-- Palette variants -->
<span class="badge">Default</span>
<span class="badge primary">Primary</span>
<span class="badge secondary">Secondary</span>
<span class="badge tertiary">Tertiary</span>

<!-- Semantic state variants -->
<span class="badge success">Active</span>
<span class="badge warning">Pending</span>
<span class="badge error">Failed</span>
<span class="badge info">Draft</span>

<!-- Usage examples -->
<span>Pending tasks <span class="badge warning">3</span></span>
<span>New messages <span class="badge primary">12</span></span>
<span>System status <span class="badge success">Online</span></span>
```

### Alerts

Alert and banner components for surfacing feedback to the user. Alerts support the existing color palette (primary, secondary, tertiary) as well as semantic state variants (success, error, warning, info). An optional dismiss affordance can be included as a `button.dismiss` inside the alert.

```html
<!-- Default alert -->
<div class="alert" role="alert">
  <span>This is a default alert message.</span>
</div>

<!-- Palette color variants -->
<div class="alert primary" role="alert">
  <span>This is a primary (brand) alert.</span>
</div>

<div class="alert secondary" role="alert">
  <span>This is a secondary alert.</span>
</div>

<div class="alert tertiary" role="alert">
  <span>This is a tertiary alert.</span>
</div>

<!-- Semantic state variants -->
<div class="alert success" role="alert">
  <span>Operation completed successfully.</span>
</div>

<div class="alert error" role="alert">
  <span>An error occurred. Please try again.</span>
</div>

<div class="alert warning" role="alert">
  <span>Warning: this action cannot be undone.</span>
</div>

<div class="alert info" role="alert">
  <span>Here is some helpful information.</span>
</div>

<!-- With optional dismiss button -->
<div class="alert success" role="alert">
  <span>Your changes have been saved.</span>
  <button class="dismiss" aria-label="Dismiss" onclick="this.closest('.alert').remove()">&#x2715;</button>
</div>
```

### Footers

Flexible footer components:

```html
<!-- Basic Footer -->
<footer class="footer">
  <div>Left Content</div>
  <div>Right Content</div>
</footer>

<!-- Positioned Footers -->
<footer class="footer fixed">Fixed Footer</footer>
<footer class="footer sticky">Sticky Footer</footer>

<!-- Colored Footers -->
<footer class="footer primary">Primary Footer</footer>
```

## Utilities

### Text Utilities

```html
<!-- Text alignment -->
<p class="text-left">Left aligned</p>
<p class="text-center">Centered</p>
<p class="text-right">Right aligned</p>

<!-- Text sizes -->
<p class="text-xs">Extra small (0.75rem)</p>
<p class="text-sm">Small (0.875rem)</p>
<!-- default body text -->
<p class="text-lg">Large (1.125rem)</p>
<p class="text-xl">Extra large (1.25rem)</p>
<p class="text-2xl">2x large (1.5rem)</p>
<p class="text-3xl">3x large (1.875rem)</p>

<!-- Font weight -->
<p class="font-bold">Bold</p>
<p class="font-semibold">Semibold</p>
<p class="font-medium">Medium</p>
<p class="font-normal">Normal</p>

<!-- Font style -->
<p class="italic">Italic text</p>

<!-- Text transform -->
<p class="uppercase">Uppercase text</p>

<!-- Text overflow -->
<p class="truncate">Long text that will be truncated with an ellipsis...</p>
<p class="whitespace-nowrap">Text that will not wrap</p>

<!-- Line clamp -->
<p class="line-clamp-1">Text clamped to one line...</p>
<p class="line-clamp-3">Text clamped to three lines...</p>

<!-- Text colors -->
<p class="text-muted">Muted / secondary text</p>
<p class="text-success">Success state text</p>
<p class="text-danger">Danger / error state text</p>
```

### Layout Utilities

```html
<!-- Overflow -->
<div class="overflow-hidden">Content with hidden overflow</div>
<div class="overflow-x-auto">Horizontally scrollable content</div>

<!-- Flex helpers (standalone) -->
<div style="display:flex">
  <div class="flex-1">Grows to fill available space</div>
  <div class="flex-shrink-0">Does not shrink</div>
</div>

<!-- Sizing -->
<div class="w-full">Full width element</div>

<!-- Cursor -->
<span class="cursor-pointer">Clickable element</span>

<!-- Resize -->
<textarea class="resize-none">Non-resizable textarea</textarea>

<!-- Position -->
<div class="relative">Relatively positioned element</div>
```

### Spacing Utilities

Generated spacing scale: `0`, `1` (0.25rem), `2` (0.5rem), `3` (0.75rem), `4` (1rem), `5` (1.25rem), `6` (1.5rem), `8` (2rem), `10` (2.5rem), `12` (3rem).

```html
<!-- Margin -->
<div class="m-4">Margin 1rem all sides</div>
<div class="mt-2">Margin top 0.5rem</div>
<div class="mb-2">Margin bottom 0.5rem</div>
<div class="ml-4">Margin left 1rem</div>
<div class="mr-4">Margin right 1rem</div>
<div class="mx-auto">Horizontal auto margin (centering)</div>
<div class="ml-auto">Push element to the right</div>
<div class="mt-auto">Push element to the bottom (in flex column)</div>

<!-- Padding -->
<div class="p-4">Padding 1rem all sides</div>
<div class="pt-2">Padding top 0.5rem</div>
<div class="px-6">Horizontal padding 1.5rem</div>
```

## Theming

### Colors

Customize your theme:

```less
// filepath: your-theme.less
@primary-color: #ff69b4;
@secondary-color: #4a90e2;
@tertiary-color: #50e3c2;
@base-color: #ffffff;
@link-color: #0066cc;

// Dark mode colors
@primary-color-dark: #ff69b4;
@secondary-color-dark: #4a90e2;
@tertiary-color-dark: #50e3c2;
@base-color-dark: #1a1a1a;

// Alert / badge semantic state colors
@alert-green: #1e6b45;
@alert-red:   #8a1a00;
@alert-amber: #8a6200;
@alert-blue:  #1a3d6e;
```

### Dark Mode

Dark mode activates automatically based on system preferences:

```html
<!-- Force dark mode -->
<div class="dark-mode">
  <!-- Content will use dark theme -->
</div>
```

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Opera (latest)

## Migration Guide

### From v1.x to v2.x

```less
// Old syntax
.old-button {
  .button-color(@color);
}

// New syntax
.new-button {
  .button-color(@color, @dark-mode: false);
}
```

### Best Practices

1. Use semantic HTML elements
2. Follow color contrast guidelines (WCAG 2.1)
3. Maintain responsive designs
4. Use provided mixins for consistency

```html
<!-- Good: native button element -->
<button class="primary">Submit</button>

<!-- Good: anchor styled as button using .btn -->
<a href="/action" class="btn primary">Go</a>

<!-- Avoid: non-semantic div styled as button -->
<div class="button primary">Submit</div>
```
