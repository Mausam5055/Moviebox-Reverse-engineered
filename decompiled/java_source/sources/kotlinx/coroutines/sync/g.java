package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.z;

/* JADX INFO: loaded from: classes7.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final z f67986a = new z("NO_OWNER");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final z f67987b = new z("ALREADY_LOCKED_BY_OWNER");

    public static final a a(boolean z10) {
        return new f(z10);
    }

    public static /* synthetic */ a b(boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        return a(z10);
    }
}
