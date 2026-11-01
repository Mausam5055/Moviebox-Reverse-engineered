package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
final class a1 implements i1, b, kotlinx.coroutines.flow.internal.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ i1 f67773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t1 f67774b;

    public a1(i1 i1Var, t1 t1Var) {
        this.f67773a = i1Var;
        this.f67774b = t1Var;
    }

    @Override // kotlinx.coroutines.flow.c1, kotlinx.coroutines.flow.b
    public Object a(c cVar, Continuation continuation) {
        return this.f67773a.a(cVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.j
    public b d(CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        return j1.d(this, coroutineContext, i11, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.i1
    public Object getValue() {
        return this.f67773a.getValue();
    }
}
