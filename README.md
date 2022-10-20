# Mail Transfer Agent (MTA) with auth

Basing on postfix. Designed for an authentication step in front of a mail server with anonymous authentication.

## Installation

1. Go to the required directory on the server and run the command `git clone https://src.sakhalin.gov.ru/gku/osa/bi-infrastructure/postfix_auth.git`
2. Go to the application directory `cd postfix_auth`
3. Copy `.env.example` to `.env` with the command `cp .env.example .env`

## Setup

1. Setup `main.cf` file - specify `myhostname` and `relayhost`
2. Setup `.env` file

## Launch

Run the command `docker compose build && docker compose up -d`
