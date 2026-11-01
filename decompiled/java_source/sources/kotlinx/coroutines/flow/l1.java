package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes7.dex */
public final class l1 implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f67823a;

    public l1(Throwable th2) {
        this.f67823a = th2;
    }

    @Override // kotlinx.coroutines.flow.c
    public Object emit(Object obj, Continuation continuation) throws Throwable {
        throw this.f67823a;
    }
}
