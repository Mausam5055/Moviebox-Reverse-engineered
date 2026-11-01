package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class zzayz implements zzazb {
    @Override // com.google.android.libraries.places.internal.zzazo
    public final InputStream zza(InputStream inputStream) throws IOException {
        return new GZIPInputStream(inputStream);
    }

    @Override // com.google.android.libraries.places.internal.zzazc, com.google.android.libraries.places.internal.zzazo
    public final String zzb() {
        return "gzip";
    }
}
