# Nuxt Base Template

A comprehensive starter template for Nuxt.js applications with a robust SCSS architecture, TypeScript support, and pre-configured components.

## 🚀 Features

- **Nuxt 4** with latest Vue 3 and Vue Router
- **TypeScript** support with strict configuration
- **SCSS Architecture** powered by [scss-base](https://github.com/victorquinn/scss-base) for a modular, scalable, and maintainable style foundation
- **Design System** with color tokens, semantic colors, and utility functions
- **Component Library** with pre-built Vue components (`VqButton`, `VqHeader`, `VqIcon`)
- **ESLint** configuration with Nuxt ESLint module
- **Material Symbols** icon integration
- **Poppins Font** integration
- **SPA Mode** configured for client-side applications

## 🏗️ Project Structure

```
nuxt-base/
├── app/
│   ├── assets/
│   │   └── scss/
│   │       ├── abstracts/     # Functions, mixins, variables, placeholders
│   │       ├── base/          # Global styles, reset, animations
│   │       ├── components/    # Component-specific styles
│   │       ├── layout/        # Layout styles
│   │       ├── pages/         # Page-specific styles
│   │       ├── themes/        # Theme configurations
│   │       ├── tokens/        # Design tokens (colors, semantics)
│   │       └── vendors/       # Third-party styles
│   ├── components/            # Vue components
│   │   ├── VqButton.vue      # Customizable button component
│   │   ├── VqHeader.vue      # Header component with logo
│   │   └── VqIcon.vue        # Material Symbols icon wrapper
│   ├── utils/                 # Utility functions and constants
│   └── app.vue               # Main application component
├── public/                    # Static assets
└── bash/                     # Utility scripts
```

## 🎨 Design System

### Color System
- **Base Colors**: Yellow, Green variants (green-1 through green-4)
- **Shade Generation**: Automatic shade generation from 50-950
- **Semantic Colors**: Theme-aware color tokens
- **Utility Functions**: `get-color()` and `semantic-color()` functions

### SCSS Functions
- `px-to-rem()` - Convert pixels to rem units
- `px-to-em()` - Convert pixels to em units
- `z-index()` - Access z-index layers
- `get-color()` - Retrieve colors with shade support
- `semantic-color()` - Access semantic color tokens

## 🛠️ Setup

### Prerequisites
- Node.js >= 22.20.0
- Yarn 4.10.3 (recommended) or npm/pnpm/bun

### Installation

```bash
# Clone the repository
git clone https://github.com/mouli-bheemaneti/nuxt-base.git
cd nuxt-base

# Install dependencies
yarn install
# or
npm install
# or
pnpm install
# or
bun install
```

## 🚦 Development

Start the development server:

```bash
# Using Yarn (recommended)
yarn dev

# Using npm
npm run dev

# Using pnpm
pnpm dev

# Using bun
bun run dev
```

The application will be available at `http://localhost:3000`.

## 📦 Available Scripts

| Script | Description |
|--------|-------------|
| `dev` | Start development server |
| `build` | Build for production |
| `generate` | Generate static site |
| `preview` | Preview production build |
| `lint` | Run ESLint |
| `lint:fix` | Fix ESLint errors |
| `up:pkgs` | Interactive package upgrades |
| `up` | Update dependencies |
| `clean` | Clean build artifacts |

## 🎯 Components

### VqButton
A customizable button component with variants:
```vue
<VqButton variant="primary">Primary Button</VqButton>
<VqButton variant="outline">Outline Button</VqButton>
```

### VqHeader
A header component with title and logo:
```vue
<VqHeader />
```

### VqIcon
Material Symbols icon wrapper:
```vue
<VqIcon icon="home" :size="24" />
```

## 🎨 Styling Guidelines

### Using Design Tokens
```scss
// Using color functions
.my-element {
  background-color: get-color("green-4", 400);
  color: semantic-color("text-primary");
  padding: px-to-rem(16);
}
```

### SCSS Architecture
- **Abstracts**: Reusable functions, mixins, and variables
- **Base**: Global styles, CSS reset, and animations
- **Components**: Component-specific styles
- **Layout**: Layout and page structure styles
- **Tokens**: Design system tokens and semantic values

## 🚀 Production

Build the application:

```bash
yarn build
# or
npm run build
```

Preview the production build:

```bash
yarn preview
# or
npm run preview
```

## 🔧 Configuration

### Nuxt Configuration
- **SSR**: Disabled (SPA mode)
- **Devtools**: Disabled
- **ESLint**: Enabled with Nuxt ESLint module
- **SCSS**: Pre-configured with global imports

### TypeScript Configuration
Strict TypeScript configuration with proper path mapping and Nuxt types.

## 📚 Documentation

- [Nuxt Documentation](https://nuxt.com/docs/getting-started/introduction)
- [Vue 3 Documentation](https://vuejs.org/guide/)
- [SCSS Documentation](https://sass-lang.com/documentation)

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is private and proprietary.

## 👨‍💻 Author

**Mouli Bheemaneti**
- Repository: [github.com/mouli-bheemaneti/nuxt-base](https://github.com/mouli-bheemaneti/nuxt-base)

---

## 🚀 Getting Started

1. Clone this template
2. Install dependencies
3. Start developing your Nuxt application with a solid foundation!

This template provides everything you need to start building modern Vue.js applications with Nuxt 4, TypeScript, and a well-organized SCSS architecture.
