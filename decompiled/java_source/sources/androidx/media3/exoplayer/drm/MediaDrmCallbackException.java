package androidx.media3.exoplayer.drm;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaDrmCallbackException extends IOException {
    public final long bytesLoaded;
    public final w1.h dataSpec;
    public final Map<String, List<String>> responseHeaders;
    public final Uri uriAfterRedirects;

    public MediaDrmCallbackException(w1.h hVar, Uri uri, Map<String, List<String>> map, long j11, Throwable th2) {
        super(th2);
        this.dataSpec = hVar;
        this.uriAfterRedirects = uri;
        this.responseHeaders = map;
        this.bytesLoaded = j11;
    }
}
