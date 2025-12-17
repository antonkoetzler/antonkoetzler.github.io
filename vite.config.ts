/// <reference types='vitest' />
/// <reference types='vite/client' />

import path from 'path';
import react from '@vitejs/plugin-react';
import { defineConfig } from 'vite';
import { configDefaults } from 'vitest/config';
import i18nChecker from 'vite-plugin-i18n-checker';

export default defineConfig({
  plugins: [
    react(),
    i18nChecker({
      sourceLocale: 'en',
      localesPath: './src/locales',
      extensions: 'json',
      failOnError: true,
      applyMode: 'all',
    }),
  ],
  resolve: {
    alias: {
      '@': path.resolve(__dirname, './src'),
    },
  },
  test: {
    environment: 'jsdom',
    setupFiles: ['./src/test/setupTests.ts'],
    coverage: {
      provider: 'v8',
      exclude: [
        ...configDefaults.exclude,
        '*.config.*',
        'src/main.tsx',
        'src/vite-env.d.ts',
      ],
      thresholds: {
        lines: 100,
        functions: 100,
        branches: 100,
        statements: 100,
      },
    },
  },
});
