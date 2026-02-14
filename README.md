# DallasBirthdayClub.com

A collaboration between Christopher Edgemon and [censored], who were both born on January 5, 1983 in Dallas, TX. They met in 5th grade attending the same school, and always dreamed of creating a website where people born on the same day who lived in Dallas could meet up and hang out.

That website is this website.

## What Is This?

Dallas Birthday Club connects people in the Dallas area who share the same birthday. Because the only thing better than celebrating your birthday is celebrating it with a stranger who was born on the exact same day as you.

## Pages

- **Landing page** (`src/index.html`) — Explains the concept, links to the application
- **Application** (`src/apply.html`) — Membership application collecting name, birthday, relationship to Dallas, and email. No backend yet — form submission shows a client-side confirmation.

## Development

Static site served by nginx. No build system, no dependencies.

- Web root: `src/`
- Server config: `etc/nginx/`

## Deployment

The site is served from `/home/chris/www/dallasbirthdayclub.com/src/` on the production server via nginx.
