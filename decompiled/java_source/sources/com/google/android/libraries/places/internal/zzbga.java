package com.google.android.libraries.places.internal;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
final class zzbga implements zzbgc {
    zzbga() {
    }

    @Override // com.google.android.libraries.places.internal.zzbgd
    public final /* bridge */ /* synthetic */ int zza(zzbnv zzbnvVar, int i11, Object obj, int i12) {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(byteBuffer.position() + i11);
        zzbnvVar.zzi(byteBuffer);
        byteBuffer.limit(iLimit);
        return 0;
    }
}
