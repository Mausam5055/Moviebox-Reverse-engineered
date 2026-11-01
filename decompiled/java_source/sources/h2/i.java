package h2;

import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.v2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface i {
    void a(e eVar);

    long b(long j11, c4 c4Var);

    void c(v2 v2Var, long j11, List list, g gVar);

    boolean d(long j11, e eVar, List list);

    boolean f(e eVar, boolean z10, androidx.media3.exoplayer.upstream.m.c cVar, androidx.media3.exoplayer.upstream.m mVar);

    int getPreferredQueueSize(long j11, List list);

    void maybeThrowError();

    void release();
}
