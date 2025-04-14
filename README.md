![Docker](https://img.shields.io/badge/docker-ready-blue?logo=docker)
![React](https://img.shields.io/badge/react-61DAFB?logo=react&logoColor=black)
![TypeScript](https://img.shields.io/badge/typescript-3178C6?logo=typescript&logoColor=white)
![Jest](https://img.shields.io/badge/jest-99424f?logo=jest)
![Vite](https://img.shields.io/badge/vite-646CFF?logo=vite&logoColor=white)
![Husky](https://img.shields.io/badge/hooks-husky-8E64C5?logo=git)
![Conventional Commits](https://img.shields.io/badge/commits-conventional-FFA500?logo=git)
![ESLint](https://img.shields.io/badge/code%20style-eslint-4B32C3?logo=eslint)
![Prettier](https://img.shields.io/badge/styled%20with-prettier-F7B93E?logo=prettier)
![Lint Staged](https://img.shields.io/badge/lint--staged-enabled-brightgreen)

# React + TypeScript + Vite + Docker

This project is based on the default Vite `create-project` template using **React + TypeScript** and was built solely as
a way to support my learning journey with React and frontend testing. It is meant to serve as a starting point for basic
projects, offering a ready-to-use setup with useful development and quality tools already in place.

## 🔧 Features

- Enhanced code quality tools:
  - `eslint` + `prettier`
  - `commitlint` with `@commitlint/config-conventional`
  - All integrated with `husky` pre-commit and commit-msg hooks
  - `lint-staged` runs ESLint and Prettier only on staged files
- **Jest** and `react-test-renderer` already set up for testing
- **Docker support** for easy setup and environment isolation
  - **Git** for better integration with githooks when using docker
  - **Anchor** lightweight CLI that helps you interact with Docker in a simple way

## 📦 Stack

- Vite + React + TypeScript
- ESLint + Prettier + Commitlint
- Husky + Lint-Staged
- Jest + React Test Renderer
- Docker

---

## 🚀 Development

This project requires **Docker** and **Docker Compose** to run in an isolated and consistent environment.

Even if you have little or no experience with Docker, you can still use the project easily thanks to the custom CLI
script called **`anchor`**, which wraps common Docker commands for you.

The rest of this documentation assumes you're using Docker via `anchor`.

> **Alternative:**  
> If you prefer to run the project on your local machine without Docker, make sure you have **Node.js 18.18.0**
> installed.

### Common commands (using `anchor`):

Start the container:

```bash
./anchor up -d
```

Install dependencies:

```bash
./anchor npm install
```

Start the development server:

```bash
./anchor npm run dev
```

Run the test suite:

```bash
./anchor npm run test
```

Build the project:

```bash
./anchor npm run build
```

Start a shell inside the container:

```bash
./anchor sh
```

---

## ⚓ Anchor CLI

This project includes a lightweight wrapper called anchor.
It helps you interact with Docker in a simple way, without cluttering your host system.

Example usage:

```bash
./anchor up
./anchor down
./anchor npm run dev
./anchor git commit -m "feat: add anchor script"
```

## ⚙️ Configuring a Shell Alias

By default, `anchor` commands are executed using the script at the root of the project:

```bash
./anchor up
```

However, instead of typing `./anchor` every time, you can configure a shell alias to simplify usage:

```bash
alias anchor='sh $([ -f anchor ] && echo anchor || echo ./anchor)'
```

To ensure the alias is always available, add it to your shell configuration file (e.g., `~/.bashrc`, `~/.zshrc`,
or `~/.bash_aliases`) and restart your shell or run:

```bash
source ~/.bashrc
```

Once the alias is configured, you can use `anchor` like this:

```bash
anchor up
anchor npm run dev
```
