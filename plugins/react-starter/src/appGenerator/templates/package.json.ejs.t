{
  "name": "<%= packageName %>",
  "description": "<%= itemNameCapitalCase %>",
  "private": true,
  "version": "0.0.1",
  "scripts": {
    "dev": "vite",
    "build": "tsc && vite build",
    "preview": "vite preview",
    "lint": "eslint src --ext ts,tsx --report-unused-disable-directives --max-warnings 0",
    "test": "jest",
    "format": "prettier --write README.md \"src/**/{*.md,*.json,*.css,*.ts*}\" \"cypress/integration/**/*\"",
    "cypress": "cypress open",
    "clean": "rimraf .turbo node_modules dist coverage test-output",
    "storybook": "storybook dev -p 6006",
    "build-storybook": "storybook build"
  },
  "dependencies": {
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "react-router-dom": "^6.11.0"
  },
  "devDependencies": {
    "@storybook/addon-a11y": "^7.0.22",
    "@storybook/addon-essentials": "^7.0.22",
    "@storybook/addon-interactions": "^7.0.22",
    "@storybook/addon-links": "^7.0.22",
    "@storybook/blocks": "^7.0.22",
    "@storybook/react": "^7.0.22",
    "@storybook/react-vite": "^7.0.22",
    "@storybook/testing-library": "^0.0.14-next.2",
    "@testing-library/dom": "^9.2.0",
    "@testing-library/jest-dom": "^5.16.5",
    "@testing-library/react": "^14.0.0",
    "@testing-library/user-event": "^14.4.3",
    "@types/jest": "^29.5.1",
    "@types/node": "^18.16.3",
    "@types/react": "^18.2.0",
    "@types/react-dom": "^18.2.1",
    "@typescript-eslint/eslint-plugin": "^5.59.1",
    "@typescript-eslint/parser": "^5.59.1",
    "@vitejs/plugin-react": "^4.0.0",
    "cypress": "^12.11.0",
    "eslint": "^8.39.0",
    "eslint-plugin-react-hooks": "^4.6.0",
    "eslint-plugin-react-refresh": "^0.4.0",
    "eslint-plugin-storybook": "^0.6.12",
    "husky": "^8.0.3",
    "jest": "^29.5.0",
    "jest-environment-jsdom": "^29.5.0",
    "lint-staged": "^13.2.1",
    "msw": "1.2.1",
    "prettier": "^2.8.8",
    "prop-types": "^15.8.1",
    "storybook": "^7.0.22",
    "ts-jest": "^29.1.0",
    "typescript": "^5.0.4",
    "vite": "^4.3.3",
    "vite-tsconfig-paths": "^4.2.0"
  },
  "overrides": {
    "react": "^18.2.0",
    "react-dom": "^18.2.0"
  },
  "msw": {
    "workerDirectory": "public"
  },
  "lint-staged": {
    "*.{js,jsx,ts,tsx,json}": "prettier --write"
  },
  "engines": {
    "npm": ">=8.0.0",
    "node": ">=16.0.0"
  },
  "packageManager": "npm@8.15.0"
}
