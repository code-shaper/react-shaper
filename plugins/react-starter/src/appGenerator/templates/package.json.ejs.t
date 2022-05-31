{
  "name": "<%= itemNameKebabCase %>",
  "description": "<%= itemNameCapitalCase %>",
  "version": "0.1.0",
  "author": "",
  "license": "MIT",
  "repository": {
    "type": "git",
    "url": ""
  },
  "scripts": {
    "build": "react-scripts build",
    "build-storybook": "build-storybook -s public",
    "cypress": "cypress open",
    "eject": "react-scripts eject",
    "format": "prettier --write README.md \"src/**/{*.md,*.json,*.css,*.ts*}\" \"cypress/integration/**/*\"",
    "lint": "eslint src",
    "prepare": "husky install",
    "start": "react-scripts start",
    "storybook": "start-storybook -p 6006 -s public",
    "test": "npm run lint && npm run test:coverage",
    "test:coverage": "react-scripts test --coverage --watchAll=false",
    "test:update": "react-scripts test --watchAll=false --updateSnapshot",
    "test:watch": "react-scripts test"
  },
  "dependencies": {
    "history": "^5.3.0",
    "react": "^18.1.0",
    "react-dom": "^18.1.0",
    "react-router-dom": "^6.3.0",
    "web-vitals": "^2.1.4"
  },
  "devDependencies": {
    "@babel/runtime": "^7.18.3",
    "@mdx-js/react": "^1.6.22",
    "@storybook/addon-a11y": "6.5.6",
    "@storybook/addon-actions": "^6.5.6",
    "@storybook/addon-essentials": "^6.5.6",
    "@storybook/addon-interactions": "^6.5.6",
    "@storybook/addon-links": "^6.5.6",
    "@storybook/builder-webpack5": "^6.5.6",
    "@storybook/manager-webpack5": "^6.5.6",
    "@storybook/node-logger": "^6.5.6",
    "@storybook/preset-create-react-app": "^4.1.1",
    "@storybook/react": "^6.5.6",
    "@storybook/testing-library": "^0.0.11",
    "@testing-library/dom": "^8.13.0",
    "@testing-library/jest-dom": "^5.16.4",
    "@testing-library/react": "^13.3.0",
    "@testing-library/user-event": "^14.2.0",
    "@types/jest": "^27.5.1",
    "@types/node": "^17.0.36",
    "@types/react": "^18.0.9",
    "@types/react-dom": "^18.0.5",
    "cypress": "^9.7.0",
    "husky": "^8.0.1",
    "lint-staged": "^12.4.3",
    "msw": "^0.42.0",
    "prettier": "^2.6.2",
    "pretty-quick": "^3.1.3",
    "react-scripts": "5.0.1",
    "typescript": "^4.7.2"
  },
  "overrides": {
    "react": "^18.1.0",
    "react-dom": "^18.1.0",
    "react-refresh": "0.13.0"
  },
  "lint-staged": {
    "*.{js,jsx,ts,tsx,json}": "prettier --write"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest"
    ],
    "rules": {},
    "overrides": [
      {
        "files": [
          "**/*.ts?(x)"
        ],
        "rules": {
          "@typescript-eslint/no-unused-vars": "error"
        }
      }
    ]
  },
  "jest": {
    "collectCoverageFrom": [
      "src/**/*.{js,jsx,ts,tsx}",
      "!src/**/*.stories.{js,jsx,ts,tsx}",
      "!src/mocks/**",
      "!src/stories/**",
      "!src/test/**",
      "!src/index.tsx",
      "!src/reportWebVitals.ts"
    ],
    "coverageThreshold": {
      "global": {
        "branches": 80,
        "functions": 80,
        "lines": 80,
        "statements": 80
      }
    }
  },
  "msw": {
    "workerDirectory": "public"
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  }
}
