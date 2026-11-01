package kotlinx.coroutines;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes7.dex */
final class h2 extends w1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Continuation f67836e;

    public h2(Continuation continuation) {
        this.f67836e = continuation;
    }

    @Override // kotlinx.coroutines.w1
    public boolean u() {
        return false;
    }

    @Override // kotlinx.coroutines.w1
    public void v(Throwable th2) {
        Continuation continuation = this.f67836e;
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m454constructorimpl(Unit.f67061a));
    }
}
