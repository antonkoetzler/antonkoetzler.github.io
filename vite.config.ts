/// <reference types='vitest' />
/// <reference types='vite/client' />

import path from 'path';
import react from '@vitejs/plugin-react';
import { defineConfig } from 'vite';
import { configDefaults } from 'vitest/config';

export default defineConfig({
  plugins: [react()],
  resolve: {
    alias: {
      '@': path.resolve(__dirname, './src'),
    },
  },
  test: {
    environment: 'jsdom',
    setupFiles: ['./src/test/setupTests.ts'],
    coverage: {
      exclude: [
        ...configDefaults.exclude,
        '*.config.*',
        'src/main.tsx',
        'src/vite-env.d.ts',
      ],
    },
  },
});
