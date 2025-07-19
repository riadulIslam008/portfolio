# 🚀 My Flutter Portfolio Website

Welcome to my personal portfolio website built entirely using **Flutter Web**!  
It showcases my projects, skills, resume, and more — all in a responsive and interactive design.

## 🌐 Live Demo

👉 [Visit My Portfolio](https://github.com/riadulIslam008?tab=repositories) 

---

## ✨ Features

- 🖼️ **Project Gallery** with banners, GitHub links, and live demo previews  
- 🧾 **Resume Section** with timeline layout  
- 💬 **Feedback Form** with email sending functionality  
- ⚙️ **Skills & Tech Stack** display using icons  
- 🎭 **Animated texts** and smooth UI transitions  
- 🌗 **Responsive Design** for mobile and desktop

---

## 🧰 Packages Used

| Package                  | Description                                   |
|--------------------------|-----------------------------------------------|
| `cached_network_image`   | Efficient image loading & caching             |
| `font_awesome_flutter`   | Icons for GitHub, LinkedIn, WhatsApp, etc.    |
| `twemoji`                | Emoji rendering                               |
| `flutter_blurhash`       | Blur placeholders while images load           |
| `animated_text_kit`      | Typing and rotating text animations           |
| `google_fonts`           | Use custom Google Fonts                       |
| `auto_size_text`         | Auto-scaling text widgets                     |
| `visibility_detector`    | Detect widget visibility (scroll animations)  |
| `carousel_slider`        | Image carousel in dialog popups               |
| `url_launcher`           | Open links like email, WhatsApp, GitHub       |
| `http`                   | For sending form data via HTTP POST           |
| `web`                    | For accessing `window.location` in web        |

---

## 📬 Contact Form

The feedback section includes:

- Name, Email, Subject, and Message fields
- Form validation (required fields, email format, name character check)
- Email sending using HTTP request to backend/email API
- Snackbars for success/error feedback
- After successful submission, the form clears automatically

---

## 🔗 External Links Support

The website includes external links for:

- GitHub projects
- Live app demos
- WhatsApp & Email via `url_launcher`

---

## 📦 Deployment

This site is deployed using **GitHub Pages**. If you'd like to do the same:

1. Run: `flutter build web`
2. Copy contents from `/build/web`
3. Push to `gh-pages` branch or configure via GitHub Actions

---

## 📁 Folder Structure

lib/
├── Config/ # App-wide configurations
│ ├── color_code.dart # Color constants
│ ├── description_text_view.dart
│ ├── flexible_text.dart
│ ├── font_text_style.dart # Font styles
│ ├── header.dart
│ ├── image_link.dart
│ ├── social_media_icons.dart # Social media icon config
│ └── text_string.dart # Text constants

├── widgets/ # UI Components and Views
│ ├── About/
│ ├── Drawer/
│ ├── Feedback/
│ ├── Home/
│ ├── MainView/
│ ├── NavigationRailView.dart
│ ├── Projects/
│ ├── Resume/
│ └── Skills/

├── landing_page.dart # Entry layout and platform handler
└── main.dart # Main entry point of the app


---

## 💡 Future Improvements

- Add dark mode support
- Backend integration for real-time data
- SEO & accessibility improvements

---

## 🧑‍💻 Author

Made with ❤️ by [RIADUL ISLAM]

> Feel free to fork or use it as a template for your own Flutter web portfolio!
