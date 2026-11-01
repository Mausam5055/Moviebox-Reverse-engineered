package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.g0;

/* JADX INFO: loaded from: classes7.dex */
final class UndispatchedContextCollector implements kotlinx.coroutines.flow.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoroutineContext f67800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f67801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function2 f67802c;

    public UndispatchedContextCollector(kotlinx.coroutines.flow.c cVar, CoroutineContext coroutineContext) {
        this.f67800a = coroutineContext;
        this.f67801b = g0.g(coroutineContext);
        this.f67802c = new UndispatchedContextCollector$emitRef$1(cVar, null);
    }

    @Override // kotlinx.coroutines.flow.c
    public Object emit(Object obj, Continuation continuation) {
        Object objB = d.b(this.f67800a, obj, this.f67801b, this.f67802c, continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f67061a;
    }
}
