package v9;

import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.upstream.z;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface j {
    long a(long j11, c3 c3Var);

    boolean d(f fVar, boolean z10, z.c cVar, z zVar);

    void f(long j11, long j12, List list, h hVar);

    void g(f fVar);

    int getPreferredQueueSize(long j11, List list);

    boolean h(long j11, f fVar, List list);

    void maybeThrowError();

    void release();
}
