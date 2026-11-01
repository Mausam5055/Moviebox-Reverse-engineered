package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.internal.c0;
import kotlinx.coroutines.internal.z;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BufferedChannelKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final j f67661a = new j(-1, null, null, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f67662b = c0.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f67663c = c0.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final z f67664d = new z("BUFFERED");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final z f67665e = new z("SHOULD_BUFFER");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final z f67666f = new z("S_RESUMING_BY_RCV");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final z f67667g = new z("RESUMING_BY_EB");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final z f67668h = new z("POISONED");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final z f67669i = new z("DONE_RCV");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final z f67670j = new z("INTERRUPTED_SEND");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final z f67671k = new z("INTERRUPTED_RCV");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final z f67672l = new z("CHANNEL_CLOSED");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final z f67673m = new z("SUSPEND");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final z f67674n = new z("SUSPEND_NO_WAITER");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final z f67675o = new z("FAILED");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final z f67676p = new z("NO_RECEIVE_RESULT");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final z f67677q = new z("CLOSE_HANDLER_CLOSED");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final z f67678r = new z("CLOSE_HANDLER_INVOKED");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final z f67679s = new z("NO_CLOSE_CAUSE");

    /* JADX INFO: Access modifiers changed from: private */
    public static final long A(int i11) {
        if (i11 == 0) {
            return 0L;
        }
        if (i11 != Integer.MAX_VALUE) {
            return i11;
        }
        return Long.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean B(kotlinx.coroutines.n nVar, Object obj, Function3 function3) {
        Object objTryResume = nVar.tryResume(obj, null, function3);
        if (objTryResume == null) {
            return false;
        }
        nVar.completeResume(objTryResume);
        return true;
    }

    static /* synthetic */ boolean C(kotlinx.coroutines.n nVar, Object obj, Function3 function3, int i11, Object obj2) {
        if ((i11 & 2) != 0) {
            function3 = null;
        }
        return B(nVar, obj, function3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long v(long j11, boolean z10) {
        return (z10 ? 4611686018427387904L : 0L) + j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long w(long j11, int i11) {
        return (((long) i11) << 60) + j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j x(long j11, j jVar) {
        return new j(j11, jVar, jVar.y(), 0);
    }

    public static final KFunction y() {
        return BufferedChannelKt$createSegmentFunction$1.INSTANCE;
    }

    public static final z z() {
        return f67672l;
    }
}
