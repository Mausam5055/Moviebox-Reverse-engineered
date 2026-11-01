package androidx.media3.exoplayer.source;

import android.net.Uri;
import java.util.Map;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public interface v {

    public interface a {
        v a(f4 f4Var);
    }

    void a();

    long b();

    void c(androidx.media3.common.j jVar, Uri uri, Map map, long j11, long j12, l2.t tVar);

    int d(l2.l0 l0Var);

    void release();

    void seek(long j11, long j12);
}
