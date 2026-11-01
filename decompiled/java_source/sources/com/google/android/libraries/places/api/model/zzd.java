package com.google.android.libraries.places.api.model;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class zzd extends AuthorAttribution.Builder {
    private String zza;
    private String zzb;
    private String zzc;

    zzd() {
    }

    @Override // com.google.android.libraries.places.api.model.AuthorAttribution.Builder
    @Nullable
    public final String getPhotoUri() {
        return this.zzc;
    }

    @Override // com.google.android.libraries.places.api.model.AuthorAttribution.Builder
    @Nullable
    public final String getUri() {
        return this.zzb;
    }

    @Override // com.google.android.libraries.places.api.model.AuthorAttribution.Builder
    public final AuthorAttribution.Builder setPhotoUri(@Nullable String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.libraries.places.api.model.AuthorAttribution.Builder
    public final AuthorAttribution.Builder setUri(@Nullable String str) {
        this.zzb = str;
        return this;
    }

    final AuthorAttribution.Builder zza(String str) {
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        this.zza = str;
        return this;
    }

    @Override // com.google.android.libraries.places.api.model.AuthorAttribution.Builder
    final AuthorAttribution zzb() {
        String str = this.zza;
        if (str != null) {
            return new zzao(str, this.zzb, this.zzc);
        }
        throw new IllegalStateException("Missing required properties: name");
    }
}
