package com.google.android.libraries.places.internal;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class zzhq {

    @Nullable
    private String description;

    @Nullable
    private Integer distanceMeters;

    @Nullable
    private zzb[] matchedSubstrings;

    @Nullable
    private String placeId;

    @Nullable
    private zza structuredFormatting;

    @Nullable
    private String[] types;

    class zza {

        @Nullable
        private String mainText;

        @Nullable
        private zzb[] mainTextMatchedSubstrings;

        @Nullable
        private String secondaryText;

        @Nullable
        private zzb[] secondaryTextMatchedSubstrings;

        zza() {
        }

        final zznx zza() {
            zzb[] zzbVarArr = this.mainTextMatchedSubstrings;
            return zzbVarArr != null ? zznx.zzk(zzbVarArr) : zznx.zzl();
        }

        final zznx zzb() {
            zzb[] zzbVarArr = this.secondaryTextMatchedSubstrings;
            return zzbVarArr != null ? zznx.zzk(zzbVarArr) : zznx.zzl();
        }

        @Nullable
        final String zzc() {
            return this.mainText;
        }

        @Nullable
        final String zzd() {
            return this.secondaryText;
        }
    }

    class zzb {

        @Nullable
        Integer length;

        @Nullable
        Integer offset;

        zzb() {
        }
    }

    zzhq() {
    }

    @Nullable
    final zza zza() {
        return this.structuredFormatting;
    }

    final zznx zzb() {
        zzb[] zzbVarArr = this.matchedSubstrings;
        return zzbVarArr != null ? zznx.zzk(zzbVarArr) : zznx.zzl();
    }

    final zznx zzc() {
        String[] strArr = this.types;
        return strArr != null ? zznx.zzk(strArr) : zznx.zzl();
    }

    @Nullable
    final Integer zzd() {
        return this.distanceMeters;
    }

    @Nullable
    final String zze() {
        return this.description;
    }

    @Nullable
    final String zzf() {
        return this.placeId;
    }
}
