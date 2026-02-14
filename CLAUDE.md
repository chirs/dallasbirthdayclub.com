# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static website for dallasbirthdayclub.com — a multi-page site served by nginx. No build system, no package manager, no tests.

## Structure

- `src/` — Web root containing `index.html`, `apply.html`, and static assets (images)
- `src/images/` — Dallas skyline hero image, Dallas flag favicon SVG
- `etc/nginx/` — nginx server configuration (redirects www to bare domain, serves from `src/`)

## Pages

- `index.html` — Landing page with full-viewport hero image, mission/origin sections, FAQ card grid, and CTA linking to the application
- `apply.html` — Membership application form (name, birthday, relationship to Dallas, email) with dark banner header. Deadpan tone throughout — treats a birthday club like a serious institution. No backend yet; form submission hides the form and shows a confirmation message via JS.

## Tone

The site plays it straight. The humor comes from the mismatch between dead-serious presentation and the absurd premise. Copy should sound institutional — like an application to something exclusive and important. The design reinforces this with a luxury members-club aesthetic.

## Design System

### Color Palette
| Role | Value |
|------|-------|
| Body background | `#fffef7` (warm cream) |
| Alt section bg | `#fff` (alternating with cream) |
| Primary text | `#111` |
| Secondary text | `#444` |
| Muted/hint text | `#888` |
| Hero/dark sections | `#1a1a1a` |
| Hero overlay | `rgba(0,0,0,0.55)` |
| Hero/footer text | `#fff` / `rgba(255,255,255,0.5)` |
| Card border | `rgba(0,0,0,0.06)` |
| Nav border | `rgba(0,0,0,0.08)` |
| Card radius | `10px` |

### Typography
- **Headings:** Instrument Serif (Google Fonts), 400 weight
- **Body:** DM Sans (Google Fonts), 400/500 weight
- **Nav links / labels / CTAs:** DM Sans, uppercase, 0.05–0.1em letter-spacing, 500 weight
- **Line-height:** 1.7 body, 1.8 section paragraphs

### Layout Patterns
- **Nav:** Fixed 72px bar with frosted glass (`backdrop-filter: blur(12px)`), DBC monogram + title left, nav link right
- **Hero (index):** Full-viewport skyline image with dark overlay, centered white text, outlined CTA button
- **Sections:** Full-width with alternating cream/white backgrounds, inner content at `max-width: 720px` (1000px for FAQ)
- **FAQ:** 2-column card grid with `border-radius: 10px` cards
- **Apply header:** Dark `#1a1a1a` banner with white text
- **Form:** 480px max-width, uppercase labels, 10px radius inputs, custom SVG select chevrons, squared submit button
- **Footer:** Dark `#1a1a1a` with muted DBC monogram and uppercase copyright

### Responsive Breakpoints
- **768px:** Nav 64px, hero 70vh, headings scale down, FAQ single column
- **480px:** Nav 56px, hide title text (monogram only), hero 60vh, submit button gets `border-radius: 10px`

## Deployment

The nginx config expects the site root at `/home/chris/www/dallasbirthdayclub.com/src/` on the server. Changes are deployed by updating files on the server and ensuring the nginx config is linked/copied to the server's nginx sites config.
