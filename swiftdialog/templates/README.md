# swiftDialog JSON Templates

These JSON configuration files provide a cleaner alternative to long CLI commands. Instead of chaining dozens of flags, point swiftDialog at a JSON file:

```bash
dialog --jsonfile /path/to/config.json
# Or with --json for form output:
dialog --jsonfile /path/to/config.json --json
```

## Templates

| Template | Description |
|----------|-------------|
| enrollment.json | Full device enrollment dialog with form fields and department selection |
| branded-alert.json | Corporate-branded alert with color banner, custom fonts, and icon |
| compliance-check.json | Security compliance status dialog with checklist items |

Full guide section: https://fullmetalmac.com/guides/swiftdialog/#json-configuration

> **Note:** Customize these templates by replacing company names, colors, and fields to match your organization.
