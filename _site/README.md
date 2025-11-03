# Team TJA2 Website

This is the website for the Traffic Jam Assist project team at Michigan State University. The site is built using Jekyll, a static site generator.

## Project Overview

Our project focuses on developing Traffic Jam Assist technology, an advanced driver assistance system based on Adaptive Cruise Control (ACC) that helps drivers navigate through congested traffic conditions safely and efficiently.

## Website Structure

```
.
├── _config.yml        # Jekyll configuration
├── _includes         # Reusable components
├── _layouts          # Template layouts
├── _sass            # CSS style partials
├── _team_members    # Team member profiles
├── assets           # Static files (images, compiled CSS)
│   ├── css
│   └── img
├── about.html       # Team information page
├── index.html       # Home page
└── Gemfile         # Ruby dependencies
```

## Development Setup

### Prerequisites

1. Install Ruby on Windows:
   - Download the Ruby+Devkit installer from [RubyInstaller](https://rubyinstaller.org/downloads/)
   - Choose Ruby+Devkit version 2.7.0 or higher (x64)
   - During installation, check "Add Ruby executables to your PATH"
   - At the end of installation, check "Run 'ridk install'"
   - When the MSYS2 installer opens, press ENTER to install all components

2. Verify installation by opening PowerShell and running:
   ```powershell
   ruby -v
   gem -v
   ```

### Installation

1. Install Jekyll and Bundler:
   ```powershell
   gem install jekyll bundler
   ```

2. Install project dependencies (run in the project directory):
   ```powershell
   bundle install
   ```

3. Start the development server:
   ```powershell
   bundle exec jekyll serve --livereload
   ```

3. View the site at `http://localhost:4000`

### Adding/Updating Content

#### Team Members
Team member profiles are stored in `_team_members/` as Markdown files. Each profile should include:

```yaml
---
name: Team Member Name
role: Role Title
email: email@msu.edu
website: https://linkedin.com/profile (optional)
image: /assets/img/about/profile.jpg
---
```

#### Styles
- Main styles are in `_sass/`
- Custom CSS should be added to the appropriate SCSS partial
- All partials are imported in `assets/css/styles.scss`

## Deployment

The site can be built for production using:
```bash
bundle exec jekyll build
```

This will generate the static site in the `_site` directory, which can then be deployed to any web server.

## Contributing

1. Create a new branch for your changes
2. Make your changes
3. Test locally using `bundle exec jekyll serve`
4. Submit a pull request

## License

This project is maintained by Team TJA2 at Michigan State University.
