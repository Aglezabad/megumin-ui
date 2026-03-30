# megumin-ui

A lightweight, dark-mode ready CSS framework focusing on simplicity and modern design.

## Table of Contents

1. [Getting Started](#getting-started)
   - [Quick Start](#quick-start)
   - [Build Variants](#build-variants)
   - [Build from Source](#build-from-source)
2. [Components](#components)
   - [Typography](#typography)
   - [Buttons](#buttons)
   - [Badges](#badges)
   - [Alerts](#alerts)
   - [Forms](#forms)
   - [Tables](#tables)
   - [Headers](#headers)
   - [Footers](#footers)
   - [Layout](#layout)
3. [Theming](#theming)
   - [CSS Custom Properties](#css-custom-properties)
   - [Dark Mode](#dark-mode)
4. [Browser Support](#browser-support)
5. [License](#license)

---

## Getting Started

### Quick Start

Download one of the prebuilt CSS files from the `dist/` directory and link it in your HTML:

```html
<link rel="stylesheet" href="dist/megumin-ui.css">
```

### Build Variants

Four prebuilt variants are provided to minimise your CSS footprint:

| File | Dark mode | Layout utilities |
|------|-----------|------------------|
| `dist/megumin-ui.css` | ✅ | ✅ |
| `dist/megumin-ui-no-dark.css` | ❌ | ✅ |
| `dist/megumin-ui-no-layout.css` | ✅ | ❌ |
| `dist/megumin-ui-no-dark-no-layout.css` | ❌ | ❌ |

### Build from Source

Requirements: [LESS](https://lesscss.org/) compiler (`lessc`).

```bash
sh utils/generate-dist.sh
```

LESS users can also import the source directly:

```less
@import "megumin-ui/src/main.less";
```

Or import individual components on-demand:

```less
@import "megumin-ui/src/components/default/buttons.less";
@import "megumin-ui/src/components/default/layout.less";
```

---

## Components

### Typography

Headings `h1`–`h6` and links receive sensible default styles out of the box.

```html
<h1>Heading 1 (2.5rem)</h1>
<h2>Heading 2 (2rem)</h2>
<h3>Heading 3 (1.75rem)</h3>
<h4>Heading 4 (1.5rem)</h4>
<h5>Heading 5 (1.25rem)</h5>
<h6>Heading 6 (1rem)</h6>

<a href="#">Default link style</a>
```

Text utility classes:

```html
<span class="font-bold">Bold text</span>
<span class="font-normal">Normal text</span>
<span class="uppercase">Uppercased</span>
<span class="truncate">Text that is too long to fit…</span>

<div class="text-left">Left-aligned</div>
<div class="text-center">Centred</div>
<div class="text-right">Right-aligned</div>
```

### Buttons

```html
<!-- Color variants -->
<button>Default</button>
<button class="primary">Primary</button>
<button class="secondary">Secondary</button>
<button class="tertiary">Tertiary</button>

<!-- Sizes -->
<button class="primary small">Small</button>
<button class="primary">Default</button>
<button class="primary large">Large</button>
<button class="primary x-large">X-Large</button>

<!-- Disabled state -->
<button disabled>Default</button>
<button class="primary" disabled>Primary</button>
```

### Badges

Inline status indicators and count labels:

```html
<!-- Color variants -->
<span class="badge">Default</span>
<span class="badge primary">Primary</span>
<span class="badge secondary">Secondary</span>
<span class="badge tertiary">Tertiary</span>

<!-- Inline usage -->
<span>Pending tasks <span class="badge primary">3</span></span>
<span>New messages <span class="badge secondary">12</span></span>
```

### Alerts

Alerts support the standard palette variants as well as semantic state variants. An optional dismiss button can be included.

```html
<!-- Palette variants -->
<div class="alert" role="alert"><span>Default alert.</span></div>
<div class="alert primary" role="alert"><span>Primary alert.</span></div>
<div class="alert secondary" role="alert"><span>Secondary alert.</span></div>
<div class="alert tertiary" role="alert"><span>Tertiary alert.</span></div>

<!-- Semantic state variants -->
<div class="alert success" role="alert"><span>Operation completed successfully.</span></div>
<div class="alert error" role="alert"><span>An error occurred. Please try again.</span></div>
<div class="alert warning" role="alert"><span>Warning: this action cannot be undone.</span></div>
<div class="alert info" role="alert"><span>Here is some helpful information.</span></div>

<!-- With dismiss button -->
<div class="alert success" role="alert">
  <span>Your changes have been saved.</span>
  <button class="dismiss" aria-label="Dismiss" onclick="this.closest('.alert').remove()">&#x2715;</button>
</div>
```

### Forms

All standard form elements are styled and support the same color variant system as buttons.

```html
<!-- Text inputs -->
<input type="text" placeholder="Default input">
<input type="text" class="primary" placeholder="Primary input">
<input type="text" class="secondary" placeholder="Secondary input">
<input type="text" class="tertiary" placeholder="Tertiary input">
<input type="text" placeholder="Disabled" disabled>

<!-- Textarea -->
<textarea placeholder="Enter your message here…"></textarea>

<!-- Select -->
<select>
  <option value="">Default select</option>
  <option value="1">Option 1</option>
</select>
<select class="primary">
  <option value="">Primary select</option>
</select>

<!-- Checkboxes -->
<label><input type="checkbox"> Default</label>
<label><input type="checkbox" class="primary" checked> Primary</label>

<!-- Radio buttons -->
<label><input type="radio" name="group"> Option A</label>
<label><input type="radio" name="group" class="primary" checked> Option B</label>
```

### Tables

Wrap tables in `.table-responsive` to ensure horizontal scrolling on narrow viewports.

```html
<div class="table-responsive">
  <table>
    <thead>
      <tr>
        <th>Name</th>
        <th>Role</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Megumin</td>
        <td>Arch-wizard</td>
        <td><span class="badge primary">Active</span></td>
      </tr>
    </tbody>
  </table>
</div>
```

### Headers

```html
<!-- Default header -->
<header class="header">
  <a class="brand-link" href="#">Brand</a>
  <nav>
    <ul>
      <li><a href="#" class="selected">Home</a></li>
      <li><a href="#">About</a></li>
    </ul>
  </nav>
</header>

<!-- Color variants: primary | secondary | tertiary -->
<header class="header primary">…</header>

<!-- Position modifiers: sticky | fixed -->
<header class="header primary sticky">…</header>
```

### Footers

```html
<!-- Default footer -->
<footer class="footer">
  <span>© 2025 Megumin UI</span>
  <span>MIT License</span>
</footer>

<!-- Color variants: primary | secondary | tertiary -->
<footer class="footer primary">…</footer>

<!-- Position modifiers: sticky | fixed -->
<footer class="footer primary sticky">…</footer>
```

### Layout

#### Container

```html
<body class="screen-size">
  <div class="container">
    <!-- Content here -->
  </div>
</body>
```

#### Grid

```html
<div class="grid cols-2">…</div>
<div class="grid cols-3">…</div>
<div class="grid cols-4">…</div>
```

#### Flex

```html
<div class="flex justify-between items-center">…</div>
```

#### Background color utilities

```html
<div class="bg-primary">…</div>
<div class="bg-secondary">…</div>
<div class="bg-tertiary">…</div>
```

#### Spacing utilities

```html
<!-- Margin: m-{1-8}, mt-*, mr-*, mb-*, ml-* -->
<div class="mb-4">…</div>

<!-- Padding: p-{1-8}, pt-*, pr-*, pb-*, pl-* -->
<div class="p-4">…</div>
```

---

## Theming

### CSS Custom Properties

Megumin UI exposes a set of `--mg-*` CSS custom properties that can be overridden in your own stylesheet:

```css
:root {
  --mg-primary-bg: #e63946;
  --mg-secondary-bg: #f4a261;
  --mg-tertiary-bg: #6a4c2e;
}
```

For LESS-based projects the source variables live in `src/theme.less`:

```less
@primary-color: #e63946;
@secondary-color: #f4a261;
@tertiary-color: #6a4c2e;
@base-color: #ffffff;
@link-color: #f4a261;
```

### Dark Mode

Dark mode activates automatically based on the user's system preference (`prefers-color-scheme: dark`). No extra classes or configuration are required when using a build variant that includes dark mode support.

---

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Opera (latest)

---

## License

Released under the [MIT License](LICENSE). Copyright © 2025 Ángel González.