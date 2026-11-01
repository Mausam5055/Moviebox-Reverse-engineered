package kotlin;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class a extends DeepRecursiveScope implements Continuation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Function3 f67063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f67064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Continuation f67065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f67066d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Function3 block, Object obj) {
        super(null);
        Intrinsics.h(block, "block");
        this.f67063a = block;
        this.f67064b = obj;
        Intrinsics.f(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.f67065c = this;
        this.f67066d = DeepRecursiveKt.f67027a;
    }

    @Override // kotlin.DeepRecursiveScope
    public Object a(Object obj, Continuation continuation) {
        Intrinsics.f(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.f67065c = continuation;
        this.f67064b = obj;
        Object objF = IntrinsicsKt.f();
        if (objF == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objF;
    }

    public final Object e() throws Throwable {
        while (true) {
            Object obj = this.f67066d;
            Continuation continuation = this.f67065c;
            if (continuation == null) {
                ResultKt.b(obj);
                return obj;
            }
            if (Result.m456equalsimpl0(DeepRecursiveKt.f67027a, obj)) {
                try {
                    Function3 function3 = this.f67063a;
                    Object obj2 = this.f67064b;
                    Object objE = !(function3 instanceof BaseContinuationImpl) ? IntrinsicsKt.e(function3, this, obj2, continuation) : ((Function3) TypeIntrinsics.e(function3, 3)).invoke(this, obj2, continuation);
                    if (objE != IntrinsicsKt.f()) {
                        continuation.resumeWith(Result.m454constructorimpl(objE));
                    }
                } catch (Throwable th2) {
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(Result.m454constructorimpl(ResultKt.a(th2)));
                }
            } else {
                this.f67066d = DeepRecursiveKt.f67027a;
                continuation.resumeWith(obj);
            }
        }
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext */
    public CoroutineContext getF67179a() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        this.f67065c = null;
        this.f67066d = obj;
    }
}
