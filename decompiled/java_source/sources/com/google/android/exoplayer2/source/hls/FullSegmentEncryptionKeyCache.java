package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class FullSegmentEncryptionKeyCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap f25909a;

    public FullSegmentEncryptionKeyCache(final int i11) {
        this.f25909a = new LinkedHashMap<Uri, byte[]>(this, i11 + 1, 1.0f, false) { // from class: com.google.android.exoplayer2.source.hls.FullSegmentEncryptionKeyCache.1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
                return size() > i11;
            }
        };
    }

    public byte[] a(Uri uri) {
        if (uri == null) {
            return null;
        }
        return (byte[]) this.f25909a.get(uri);
    }

    public byte[] b(Uri uri, byte[] bArr) {
        return (byte[]) this.f25909a.put((Uri) com.google.android.exoplayer2.util.a.e(uri), (byte[]) com.google.android.exoplayer2.util.a.e(bArr));
    }

    public byte[] c(Uri uri) {
        return (byte[]) this.f25909a.remove(com.google.android.exoplayer2.util.a.e(uri));
    }
}
