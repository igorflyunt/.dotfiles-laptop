#!/bin/bash

crack_trial() {
	version=$1
	rm -rv $HOME/.config/JetBrains/IntelliJIdea${version}/eval/idea*.evaluation.key
	sed -i '/evlsprt/d' $HOME/.config/JetBrains/IntelliJIdea${version}/options/other.xml
	sed -i '/evlsprt/d' $HOME/.java/.userPrefs/prefs.xml
	rm -rfv $HOME/.java/.userPrefs/jetbrains/idea/*
}

if [ "$1" != "" ]; then
	crack_trial $1
fi
