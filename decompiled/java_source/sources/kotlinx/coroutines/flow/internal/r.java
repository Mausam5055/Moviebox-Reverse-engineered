package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class r implements kotlinx.coroutines.flow.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.coroutines.channels.r f67817a;

    public r(kotlinx.coroutines.channels.r rVar) {
        this.f67817a = rVar;
    }

    @Override // kotlinx.coroutines.flow.c
    public Object emit(Object obj, Continuation continuation) {
        Object objP = this.f67817a.p(obj, continuation);
        return objP == IntrinsicsKt.f() ? objP : Unit.f67061a;
    }
}
