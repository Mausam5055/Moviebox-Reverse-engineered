package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes3.dex */
public abstract class k {
    public static com.google.android.exoplayer2.upstream.n a(int i11) {
        return new com.google.android.exoplayer2.upstream.n(Uri.parse(p0.C("%s:%d", "rtp://0.0.0.0", Integer.valueOf(i11))));
    }
}
