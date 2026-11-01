package com.google.android.libraries.places.api.net;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.CancellationToken;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzq extends FindCurrentPlaceRequest.Builder {
    private List zza;
    private CancellationToken zzb;

    zzq() {
    }

    @Override // com.google.android.libraries.places.api.net.FindCurrentPlaceRequest.Builder
    @Nullable
    public final CancellationToken getCancellationToken() {
        return this.zzb;
    }

    @Override // com.google.android.libraries.places.api.net.FindCurrentPlaceRequest.Builder
    public final FindCurrentPlaceRequest.Builder setCancellationToken(@Nullable CancellationToken cancellationToken) {
        this.zzb = cancellationToken;
        return this;
    }

    @Override // com.google.android.libraries.places.api.net.FindCurrentPlaceRequest.Builder
    final FindCurrentPlaceRequest.Builder zza(List list) {
        if (list == null) {
            throw new NullPointerException("Null placeFields");
        }
        this.zza = list;
        return this;
    }

    @Override // com.google.android.libraries.places.api.net.FindCurrentPlaceRequest.Builder
    final FindCurrentPlaceRequest zzb() {
        List list = this.zza;
        if (list != null) {
            return new zzs(list, this.zzb, null);
        }
        throw new IllegalStateException("Missing required properties: placeFields");
    }
}
