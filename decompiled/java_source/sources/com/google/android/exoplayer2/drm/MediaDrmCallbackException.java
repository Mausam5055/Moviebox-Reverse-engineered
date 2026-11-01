package com.google.android.exoplayer2.drm;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaDrmCallbackException extends IOException {
    public final long bytesLoaded;
    public final com.google.android.exoplayer2.upstream.n dataSpec;
    public final Map<String, List<String>> responseHeaders;
    public final Uri uriAfterRedirects;

    public MediaDrmCallbackException(com.google.android.exoplayer2.upstream.n nVar, Uri uri, Map<String, List<String>> map, long j11, Throwable th2) {
        super(th2);
        this.dataSpec = nVar;
        this.uriAfterRedirects = uri;
        this.responseHeaders = map;
        this.bytesLoaded = j11;
    }
}
