#!/bin/bash

USER=linuxmint

# Sjekk om brukeren finnes
if id "$USER" &>/dev/null; then
    echo "✅ Bruker '$USER' finnes. Fortsetter..."

    # Legg brukeren til i sudo-gruppen
    usermod -aG sudo $USER && echo "✅ Lagt til '$USER' i sudo-gruppen"

    # Lag sudoers-fil for passordfri sudo
    echo "$USER ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USER

    # Sett riktige permissions
    chmod 0440 /etc/sudoers.d/$USER

    echo "🎉 Bruker '$USER' har nå admin-rettigheter uten passord!"
else
    echo "❌ Bruker '$USER' finnes ikke. Avbryter."
    exit 1
fi
