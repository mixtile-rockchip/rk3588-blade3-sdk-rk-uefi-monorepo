## @file
# This package provides advanced feature functionality for ACPI Debug support.
# This package should only depend on EDK II Core packages, IntelSiliconPkg, and MinPlatformPkg.
#
# The DEC files are used by the utilities that parse DSC and
# INF files to generate AutoGen.c and AutoGen.h files
# for the build infrastructure.
#
# Copyright (c) 2019, Intel Corporation. All rights reserved.<BR>
#
# SPDX-License-Identifier: BSD-2-Clause-Patent
#
##

[Defines]
  PLATFORM_NAME                  = AcpiDebugFeaturePkg
  PLATFORM_GUID                  = F3001DF1-4A5B-42A9-944B-E766BDDC7B99
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = IA32|X64
  BUILD_TARGETS                  = DEBUG|RELEASE|NOOPT
  SKUID_IDENTIFIER               = DEFAULT
  PEI_ARCH                       = IA32
  DXE_ARCH                       = X64

#
# This package always builds the feature.
#
!include Include/AcpiDebugFeature.dsc
