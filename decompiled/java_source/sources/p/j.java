package p;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.d1;
import kotlinx.coroutines.flow.x0;

/* JADX INFO: loaded from: classes2.dex */
final class j implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x0 f72217a = d1.b(0, 16, BufferOverflow.DROP_OLDEST, 1, null);

    @Override // p.i
    public boolean a(f fVar) {
        return b().b(fVar);
    }

    @Override // p.i
    public Object c(f fVar, Continuation continuation) {
        Object objEmit = b().emit(fVar, continuation);
        return objEmit == IntrinsicsKt.f() ? objEmit : Unit.f67061a;
    }

    @Override // p.g
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public x0 b() {
        return this.f72217a;
    }
}
