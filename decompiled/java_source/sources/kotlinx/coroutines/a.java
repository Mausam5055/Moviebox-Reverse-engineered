package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a extends JobSupport implements t1, Continuation, n0 {
    private final CoroutineContext context;

    public a(CoroutineContext coroutineContext, boolean z10, boolean z11) {
        super(z11);
        if (z10) {
            initParentJob((t1) coroutineContext.get(t1.f67996l1));
        }
        this.context = coroutineContext.plus(this);
    }

    public static /* synthetic */ void getContext$annotations() {
    }

    protected void afterResume(Object obj) {
        afterCompletion(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    public String cancellationExceptionMessage() {
        return p0.a(this) + " was cancelled";
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.n0
    public CoroutineContext getCoroutineContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void handleOnCompletionException$kotlinx_coroutines_core(Throwable th2) {
        k0.a(this.context, th2);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.t1
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.JobSupport
    public String nameString$kotlinx_coroutines_core() {
        String strG = g0.g(this.context);
        if (strG == null) {
            return super.nameString$kotlinx_coroutines_core();
        }
        return '\"' + strG + "\":" + super.nameString$kotlinx_coroutines_core();
    }

    protected void onCancelled(Throwable th2, boolean z10) {
    }

    protected void onCompleted(Object obj) {
    }

    @Override // kotlinx.coroutines.JobSupport
    protected final void onCompletionInternal(Object obj) {
        if (!(obj instanceof b0)) {
            onCompleted(obj);
        } else {
            b0 b0Var = (b0) obj;
            onCancelled(b0Var.f67641a, b0Var.a());
        }
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Object objMakeCompletingOnce$kotlinx_coroutines_core = makeCompletingOnce$kotlinx_coroutines_core(c0.b(obj));
        if (objMakeCompletingOnce$kotlinx_coroutines_core == x1.f68006b) {
            return;
        }
        afterResume(objMakeCompletingOnce$kotlinx_coroutines_core);
    }

    public final <R> void start(CoroutineStart coroutineStart, R r11, Function2<? super R, ? super Continuation<Object>, ? extends Object> function2) {
        coroutineStart.invoke(function2, r11, this);
    }
}
