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
   - [Alerts](#alerts)
   - [Footers](#footers)
3. [Theming](#theming)
   - [Colors](#colors)
   - [Dark Mode](#dark-mode)
4. [Browser Support](#browser-support)
5. [Migration Guide](#migration-guide)

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

Various button styles and sizes:

```html
<!-- Colors -->
<button>Default</button>
<button class="primary">Primary</button>
<button class="secondary">Secondary</button>
<button class="tertiary">Tertiary</button>

<!-- Sizes -->
<button class="small">Small Button</button>
<button class="large">Large Button</button>
<button class="x-large">Extra Large Button</button>

<!-- States -->
<button disabled>Disabled Button</button>
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

// Alert semantic state colors
@alert-success-color: #1e6b45;
@alert-error-color: #8a1a00;
@alert-warning-color: #8a6200;
@alert-info-color: #1a3d6e;
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
<!-- Good -->
<button class="primary">Submit</button>

<!-- Avoid -->
<div class="button primary">Submit</div>
```

### Utility Classes

Common utility classes:

```html
<!-- Spacing -->
<div class="m-1">Margin 1rem</div>
<div class="p-2">Padding 2rem</div>

<!-- Display -->
<div class="hidden">Hidden content</div>
<div class="flex">Flex container</div>

<!-- Text -->
<div class="text-center">Centered text</div>
```