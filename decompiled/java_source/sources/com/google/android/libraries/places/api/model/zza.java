package com.google.android.libraries.places.api.model;

import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zza extends AddressComponent.Builder {
    private String zza;
    private String zzb;
    private List zzc;

    zza() {
    }

    @Override // com.google.android.libraries.places.api.model.AddressComponent.Builder
    @Nullable
    public final String getShortName() {
        return this.zzb;
    }

    @Override // com.google.android.libraries.places.api.model.AddressComponent.Builder
    public final AddressComponent.Builder setShortName(@Nullable String str) {
        this.zzb = str;
        return this;
    }

    final AddressComponent.Builder zza(String str) {
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        this.zza = str;
        return this;
    }

    @Override // com.google.android.libraries.places.api.model.AddressComponent.Builder
    final AddressComponent.Builder zzb(List list) {
        if (list == null) {
            throw new NullPointerException("Null types");
        }
        this.zzc = list;
        return this;
    }

    @Override // com.google.android.libraries.places.api.model.AddressComponent.Builder
    final AddressComponent zzc() {
        List list;
        String str = this.zza;
        if (str != null && (list = this.zzc) != null) {
            return new zzak(str, this.zzb, list);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.zza == null) {
            sb2.append(" name");
        }
        if (this.zzc == null) {
            sb2.append(" types");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }
}
