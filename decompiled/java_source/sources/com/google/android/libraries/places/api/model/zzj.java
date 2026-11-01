package com.google.android.libraries.places.api.model;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzj extends zzby {
    private final int zza;
    private final int zzb;

    zzj(int i11, int i12) {
        this.zza = i11;
        this.zzb = i12;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzby) {
            zzby zzbyVar = (zzby) obj;
            if (this.zza == zzbyVar.zzb() && this.zzb == zzbyVar.zza()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza ^ 1000003) * 1000003) ^ this.zzb;
    }

    public final String toString() {
        return "SubstringMatch{offset=" + this.zza + ", length=" + this.zzb + "}";
    }

    @Override // com.google.android.libraries.places.api.model.zzby
    final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.libraries.places.api.model.zzby
    final int zzb() {
        return this.zza;
    }
}
