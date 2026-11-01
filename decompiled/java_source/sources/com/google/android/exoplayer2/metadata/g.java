package com.google.android.exoplayer2.metadata;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public abstract class g implements b {
    @Override // com.google.android.exoplayer2.metadata.b
    public final Metadata a(d dVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(dVar.f24843c);
        com.google.android.exoplayer2.util.a.a(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (dVar.g()) {
            return null;
        }
        return b(dVar, byteBuffer);
    }

    protected abstract Metadata b(d dVar, ByteBuffer byteBuffer);
}
