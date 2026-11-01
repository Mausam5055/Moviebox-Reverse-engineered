package androidx.media3.exoplayer.hls;

import android.net.Uri;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class FullSegmentEncryptionKeyCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap f11660a;

    public FullSegmentEncryptionKeyCache(final int i11) {
        this.f11660a = new LinkedHashMap<Uri, byte[]>(i11 + 1, 1.0f, false) { // from class: androidx.media3.exoplayer.hls.FullSegmentEncryptionKeyCache.1
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
        return (byte[]) this.f11660a.get(uri);
    }

    public byte[] b(Uri uri, byte[] bArr) {
        return (byte[]) this.f11660a.put((Uri) androidx.media3.common.util.a.e(uri), (byte[]) androidx.media3.common.util.a.e(bArr));
    }

    public byte[] c(Uri uri) {
        return (byte[]) this.f11660a.remove(androidx.media3.common.util.a.e(uri));
    }
}
