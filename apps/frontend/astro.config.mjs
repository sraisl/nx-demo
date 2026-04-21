import { defineConfig } from 'astro/config';

export default defineConfig({
  outDir: '../../dist/apps/frontend',
  server: {
    port: 3000
  }
});
