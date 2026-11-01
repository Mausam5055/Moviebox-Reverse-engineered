package kotlinx.coroutines;

/* JADX INFO: loaded from: classes7.dex */
public abstract class x1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.z f68005a = new kotlinx.coroutines.internal.z("COMPLETING_ALREADY");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.z f68006b = new kotlinx.coroutines.internal.z("COMPLETING_WAITING_CHILDREN");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.z f68007c = new kotlinx.coroutines.internal.z("COMPLETING_RETRY");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.z f68008d = new kotlinx.coroutines.internal.z("TOO_LATE_TO_CANCEL");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.z f68009e = new kotlinx.coroutines.internal.z("SEALED");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final d1 f68010f = new d1(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final d1 f68011g = new d1(true);

    public static final Object g(Object obj) {
        return obj instanceof p1 ? new q1((p1) obj) : obj;
    }

    public static final Object h(Object obj) {
        p1 p1Var;
        q1 q1Var = obj instanceof q1 ? (q1) obj : null;
        return (q1Var == null || (p1Var = q1Var.f67910a) == null) ? obj : p1Var;
    }
}
