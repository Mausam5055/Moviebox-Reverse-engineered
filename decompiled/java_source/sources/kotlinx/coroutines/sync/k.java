package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.c0;
import kotlinx.coroutines.internal.z;

/* JADX INFO: loaded from: classes7.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f67989a = c0.e("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final z f67990b = new z("PERMIT");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final z f67991c = new z("TAKEN");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final z f67992d = new z("BROKEN");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final z f67993e = new z("CANCELLED");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f67994f = c0.e("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);

    public static final h a(int i11, int i12) {
        return new j(i11, i12);
    }

    public static /* synthetic */ h b(int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i12 = 0;
        }
        return a(i11, i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l j(long j11, l lVar) {
        return new l(j11, lVar, 0);
    }
}
