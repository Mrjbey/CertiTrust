#!/bin/bash

echo "🚀 Setting up CertiTrust NG..."

# Create package.json
cat > package.json << 'EOF'
{
  "name": "certitrust-ng",
  "version": "1.0.0",
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "next lint"
  },
  "dependencies": {
    "next": "14.0.0",
    "react": "18.2.0",
    "react-dom": "18.2.0",
    "typescript": "^5.0.0"
  }
}
EOF

echo "📦 Installing Next.js..."
npm install

echo "🎨 Installing Tailwind CSS..."
npm install -D tailwindcss postcss autoprefixer

# Create Tailwind config manually
cat > tailwind.config.js << 'EOF'
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
    "./pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        primary: { navy: '#0A174E', gold: '#D4AF37' },
        secondary: { emerald: '#2E8B57', silver: '#C0C0C0' },
        accent: { ethereum: '#8A2BE2' }
      }
    },
  },
  plugins: [],
}
EOF

# Create PostCSS config
cat > postcss.config.js << 'EOF'
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}
EOF

echo "✅ Setup complete! Run 'npm run dev' to start development."