package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes7.dex */
final class s1 extends w1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1 f67917e;

    public s1(Function1 function1) {
        this.f67917e = function1;
    }

    @Override // kotlinx.coroutines.w1
    public boolean u() {
        return false;
    }

    @Override // kotlinx.coroutines.w1
    public void v(Throwable th2) {
        this.f67917e.invoke(th2);
    }
}
