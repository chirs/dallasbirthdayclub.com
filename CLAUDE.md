# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static website for dallasbirthdayclub.com — a multi-page site served by nginx. No build system, no package manager, no tests.

## Structure

- `src/` — Web root containing `index.html`, `apply.html`, and static assets (images)
- `etc/nginx/` — nginx server configuration (redirects www to bare domain, serves from `src/`)

## Pages

- `index.html` — Landing page explaining the concept with a CTA linking to the application
- `apply.html` — Membership application form (name, birthday, relationship to Dallas, email). Deadpan tone throughout — treats a birthday club like a serious institution. No backend yet; form submission hides the form and shows a confirmation message via JS.

## Tone

The site plays it straight. The humor comes from the mismatch between dead-serious presentation and the absurd premise. Copy should sound institutional — like an application to something exclusive and important.

## Deployment

The nginx config expects the site root at `/home/chris/www/dallasbirthdayclub.com/src/` on the server. Changes are deployed by updating files on the server and ensuring the nginx config is linked/copied to the server's nginx sites config.
