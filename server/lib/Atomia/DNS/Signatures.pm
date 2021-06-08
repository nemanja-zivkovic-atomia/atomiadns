package Atomia::DNS::Signatures;

use strict;
use warnings;

our $signatures = {
	"AddZone" => "void string int string string int int int int array string",
	"DeleteZone" => "void string",
	"EditZone" => "void string int string string int int int int array string",
	"AddDnsRecords" => "array[bigint] string array[resourcerecord]",
	"EditDnsRecords" => "void string array[resourcerecord]",
	"SetDnsRecords" => "void string array[resourcerecord]",
	"DeleteDnsRecords" => "void string array[resourcerecord]",
	"GetDnsRecords" => "array[resourcerecord] string string",
	"GetLabels" => "array[string] string",
	"GetZone" => "zone string",
	"GetZoneBulk" => "array[binaryzone] array",
	"GetZoneBinary" => "binaryzone string",
	"GetZoneMetadata" => "array[zonemetadata] string",
	"SetZoneMetadata" => "void string array array",
	"RestoreZone" => "void string string zone",
	"RestoreZoneBinary" => "void string string binaryzone",
	"RestoreZoneBulk" => "void array[bulkzones] string array[binaryzone]",
	"SetDnsRecordsBulk" => "void array array[resourcerecord]",
	"CopyDnsZoneBulk" => "void string array",
	"CopyDnsLabelBulk" => "void string string array[hostname]",
	"DeleteDnsRecordsBulk" => "void array array[resourcerecord]",
	"AddNameserver" => "void string string",
	"DeleteNameserver" => "void string",
	"GetNameserver" => "string string",
	"GetChangedZones" => "changes string",
	"GetChangedZonesBatch" => "changes string int",
	"MarkUpdated" => "void bigint string string",
	"MarkUpdatedBulk" => "void array[bigint] array array",
	"MarkAllUpdatedExcept" => "void string bigint",
	"MarkAllUpdatedExceptBulk" => "void array array[bigint]",
	"GetAllZones" => "zonestruct",
	"ReloadAllZones" => "void",
	"GetUpdatesDisabled" => "int",
	"SetUpdatesDisabled" => "void int",
	"GetNameserverGroup" => "string string",
	"SetNameserverGroup" => "void string string",
	"AddNameserverGroup" => "void string",
	"DeleteNameserverGroup" => "void string",
	"AddSlaveZone" => "void string string string string string",
	"DeleteSlaveZone" => "void string",
	"GetChangedSlaveZones" => "changes string",
	"MarkSlaveZoneUpdated" => "void bigint string string",
	"GetSlaveZone" => "slavezone string",
	"ReloadAllSlaveZones" => "void",
	"AllowZoneTransfer" => "void string string",
	"GetAllowedZoneTransfer" => "allowedtransfer",
	"DeleteAllowedZoneTransfer" => "void string string",
	"GetDNSSECKeys" => "keyset",
	"GetDNSSECKeysDS" => "dsset string",
	"GetExternalDNSSECKeys" => "keyset",
	"AddDNSSECKey" => "keyid string int string int",
	"AddExternalDNSSECKey" => "int string",
	"ActivateDNSSECKey" => "void int",
	"DeactivateDNSSECKey" => "void int",
	"DeleteDNSSECKey" => "void int",
	"DeleteExternalDNSSECKey" => "void int",
	"GetDNSSECZSKInfo" => "zskinfo",
	"AddAccount" => "void string password",
	"EditAccount" => "void string password",
	"DeleteAccount" => "void string",
	"GetNameserverGroups" => "array[string]",
	"FindZones" => "zones string string int int",
	"AddTSIGKey" => "void string string string string",
	"GetChangedTSIGKeys" => "changes string",
	"GetTSIGKey" => "tsigkey string",
	"MarkTSIGKeyUpdated" => "void bigint string string",
	"Noop" => "string"
};

our $authorization_rules = {
	"AddZone" => "", # No authorization
	"DeleteZone" => "authzone",
	"EditZone" => "authzone",
	"AddDnsRecords" => "authzone",
	"EditDnsRecords" => "authzone",
	"SetDnsRecords" => "authzone",
	"DeleteDnsRecords" => "authzone",
	"GetDnsRecords" => "authzone",
	"GetLabels" => "authzone",
	"GetZone" => "authzone",
	"GetZoneBulk" => "authzonearray",
	"GetZoneBinary" => "authzone",
	"RestoreZone" => "authzone",
	"RestoreZoneBinary" => "authzone",
	"RestoreZoneBulk" => "authzonearray",
	"SetDnsRecordsBulk" => "authzonearray",
	"CopyDnsZoneBulk" => "authzone authzonearray",
#	"CopyDnsLabelBulk" => "authzone allow authnamearray",
	"DeleteDnsRecordsBulk" => "authzonearray",
	"AddSlaveZone" => "", # No authorization
	"DeleteSlaveZone" => "authslavezone",
	"GetSlaveZone" => "authslavezone",
	"EditAccount" => "authaccount",
	"DeleteAccount" => "authaccount",
	"GetNameserverGroups" => "", # No authorization
	"FindZones" => "authaccount",
	"Noop" => "", # No authorization
};

1;
