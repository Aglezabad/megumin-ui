# Megumin UI Documentation

A lightweight, dark-mode ready CSS framework focusing on simplicity and modern design.

## Table of Contents
1. [Getting Started](#getting-started)
   - [Installation](#installation)
   - [Basic Setup](#basic-setup)
2. [Components](#components)
   - [Layout](#layout)
   - [Typography](#typography)
   - [Buttons](#buttons)
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