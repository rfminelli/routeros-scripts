# Create script for setting up global variables
/system script add name="SetGlobalVarsAddressLists" source={
:global AddressListsWebRemoteHost "<AddressListsWebRemoteHost>"
:global AddressListsWebRemoteUser "<AddressListsWebRemoteUser>"
:global AddressListsWebRemotePassword "<AddressListsWebRemotePassword>"
}

# Create scheduler to execute script at boot time
/system scheduler add name="SetGlobalVarsAddressLists" on-event="/system script run SetGlobalVarsAddressLists" start-time=startup

# After installation, execute the script to declare variables (avoids reboot)
/system script run SetGlobalVarsAddressLists

# Print out variables on the CLI for verification
:put "The following global variables are now available:"
:put "---------------------------------------------------"
:put "AddressListsWebRemoteHost -> $AddressListsWebRemoteHost"
:put "AddressListsWebRemoteUser -> $AddressListsWebRemoteUser"
:put "AddressListsWebRemotePassword -> $AddressListsWebRemotePassword"
:put "---------------------------------------------------"
