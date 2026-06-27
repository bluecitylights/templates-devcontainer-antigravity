# Devcontainer Template with Antigravity CLI

This is a reusable Devcontainer environment pre-configured for projects using the Antigravity CLI (`agy`). It seamlessly reuses your active Windows host session and Git configuration.

---

## 🛠️ Windows Host Setup (One-time)

Before launching the container, configure your Windows host so the container can locate your login sessions and Git credentials.

### 1. Set the `HOME` Environment Variable
1. Open the Windows Start Menu, search for **"Edit the system environment variables"**, and click **Environment Variables...**.
2. Under *User variables*, click **New...** and enter:
   * **Variable name:** `HOME`
   * **Variable value:** `C:\Users\<YOUR_USERNAME>` *(e.g., `C:\Users\richard`)*
3. Click **OK** to save, then **restart VS Code** completely to apply the changes.

### 2. Install Antigravity CLI & Log In on the Host
Run the following commands in your Windows terminal (PowerShell or Bash) to install the CLI and authenticate:

Bash
```bash
curl -fsSL https://antigravity.google/cli/install.sh | bash
```

Powershell
```bash
irm https://antigravity.google/cli/install.ps1 | iex
```

# Initialize configuration and log in
agy init
```

### Install & Configure Git on the Host
Ensure Git is installed on Windows and your global identity is configured:

```bash
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
```

### Launching the Container
Open this repository in VS Code on your Windows host.

Ensure your Docker or Podman engine is running.

Open the Command Palette (Ctrl+Shift+P), run Dev Containers: Rebuild and Reopen in Container.

The container will automatically mount your Git configuration and active Antigravity session. You can use agy inside the container immediately without any login prompts!