# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static website for dallasbirthdayclub.com — a multi-page site served by nginx. No build system, no package manager, no tests.

## Structure

- `src/` — Web root containing `index.html`, `apply.html`, and static assets (images)
- `etc/nginx/` — nginx server configuration (redirects www to bare domain, serves from `src/`)

## Deployment

The nginx config expects the site root at `/home/chris/www/dallasbirthdayclub.com/src/` on the server. Changes are deployed by updating files on the server and ensuring the nginx config is linked/copied to the server's nginx sites config.
