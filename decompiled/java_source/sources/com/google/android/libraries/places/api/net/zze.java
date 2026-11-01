package com.google.android.libraries.places.api.net;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.libraries.places.api.model.AutocompleteSessionToken;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zze extends FetchPlaceRequest.Builder {
    private String zza;
    private List zzb;
    private AutocompleteSessionToken zzc;
    private CancellationToken zzd;
    private String zze;

    zze() {
    }

    @Override // com.google.android.libraries.places.api.net.FetchPlaceRequest.Builder
    @Nullable
    public final CancellationToken getCancellationToken() {
        return this.zzd;
    }

    @Override // com.google.android.libraries.places.api.net.FetchPlaceRequest.Builder
    @Nullable
    public final String getRegionCode() {
        return this.zze;
    }

    @Override // com.google.android.libraries.places.api.net.FetchPlaceRequest.Builder
    @Nullable
    public final AutocompleteSessionToken getSessionToken() {
        return this.zzc;
    }

    @Override // com.google.android.libraries.places.api.net.FetchPlaceRequest.Builder
    public final FetchPlaceRequest.Builder setCancellationToken(@Nullable CancellationToken cancellationToken) {
        this.zzd = cancellationToken;
        return this;
    }

    @Override // com.google.android.libraries.places.api.net.FetchPlaceRequest.Builder
    public final FetchPlaceRequest.Builder setRegionCode(@Nullable String str) {
        this.zze = str;
        return this;
    }

    @Override // com.google.android.libraries.places.api.net.FetchPlaceRequest.Builder
    public final FetchPlaceRequest.Builder setSessionToken(@Nullable AutocompleteSessionToken autocompleteSessionToken) {
        this.zzc = autocompleteSessionToken;
        return this;
    }

    @Override // com.google.android.libraries.places.api.net.FetchPlaceRequest.Builder
    final FetchPlaceRequest.Builder zza(List list) {
        if (list == null) {
            throw new NullPointerException("Null placeFields");
        }
        this.zzb = list;
        return this;
    }

    final FetchPlaceRequest.Builder zzb(String str) {
        if (str == null) {
            throw new NullPointerException("Null placeId");
        }
        this.zza = str;
        return this;
    }

    @Override // com.google.android.libraries.places.api.net.FetchPlaceRequest.Builder
    final FetchPlaceRequest zzc() {
        List list;
        String str = this.zza;
        if (str != null && (list = this.zzb) != null) {
            return new zzg(str, list, this.zzc, this.zzd, this.zze, null);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.zza == null) {
            sb2.append(" placeId");
        }
        if (this.zzb == null) {
            sb2.append(" placeFields");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }
}
