package x3;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    public static final CoroutineContext.Element a(ThreadLocal threadLocal, Object obj) {
        Intrinsics.h(threadLocal, "<this>");
        return n2.a(threadLocal, obj);
    }

    public static final long b() {
        return Thread.currentThread().getId();
    }
}
