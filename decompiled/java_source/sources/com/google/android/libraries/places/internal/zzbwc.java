package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes4.dex */
public interface zzbwc extends WritableByteChannel, zzbwq {
    @Override // com.google.android.libraries.places.internal.zzbwq, java.io.Flushable
    void flush() throws IOException;

    zzbwc zzv(int i11) throws IOException;

    zzbwc zzw(int i11) throws IOException;

    zzbwc zzx(String str) throws IOException;
}
