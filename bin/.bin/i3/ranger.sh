#!/bin/bash
termite -c ~/.config/ranger/termite_config --title=ranger --name=ranger -e "bash -lic ranger '$1'"
