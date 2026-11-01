package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;

/* JADX INFO: loaded from: classes7.dex */
public final class n1 implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n1 f67901a = new n1();

    private n1() {
    }

    @Override // kotlinx.coroutines.n0
    public CoroutineContext getCoroutineContext() {
        return EmptyCoroutineContext.INSTANCE;
    }
}
