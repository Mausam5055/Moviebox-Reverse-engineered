package retrofit2;

import kotlin.KotlinNothingValueException;
import kotlin.KotlinNullPointerException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public abstract class KotlinExtensions {

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.n f74335a;

        a(kotlinx.coroutines.n nVar) {
            this.f74335a = nVar;
        }

        @Override // retrofit2.f
        public void a(d call, Throwable t11) {
            Intrinsics.h(call, "call");
            Intrinsics.h(t11, "t");
            kotlinx.coroutines.n nVar = this.f74335a;
            Result.Companion companion = Result.INSTANCE;
            nVar.resumeWith(Result.m454constructorimpl(ResultKt.a(t11)));
        }

        @Override // retrofit2.f
        public void b(d call, j0 response) {
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            if (!response.e()) {
                kotlinx.coroutines.n nVar = this.f74335a;
                Result.Companion companion = Result.INSTANCE;
                nVar.resumeWith(Result.m454constructorimpl(ResultKt.a(new HttpException(response))));
                return;
            }
            Object objA = response.a();
            if (objA != null) {
                this.f74335a.resumeWith(Result.m454constructorimpl(objA));
                return;
            }
            Object objTag = call.request().tag(v.class);
            Intrinsics.e(objTag);
            v vVar = (v) objTag;
            KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException("Response from " + vVar.b().getName() + '.' + vVar.a().getName() + " was null but response body type was declared as non-null");
            kotlinx.coroutines.n nVar2 = this.f74335a;
            Result.Companion companion2 = Result.INSTANCE;
            nVar2.resumeWith(Result.m454constructorimpl(ResultKt.a(kotlinNullPointerException)));
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class b implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.n f74336a;

        b(kotlinx.coroutines.n nVar) {
            this.f74336a = nVar;
        }

        @Override // retrofit2.f
        public void a(d call, Throwable t11) {
            Intrinsics.h(call, "call");
            Intrinsics.h(t11, "t");
            kotlinx.coroutines.n nVar = this.f74336a;
            Result.Companion companion = Result.INSTANCE;
            nVar.resumeWith(Result.m454constructorimpl(ResultKt.a(t11)));
        }

        @Override // retrofit2.f
        public void b(d call, j0 response) {
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            if (response.e()) {
                kotlinx.coroutines.n nVar = this.f74336a;
                Result.Companion companion = Result.INSTANCE;
                nVar.resumeWith(Result.m454constructorimpl(response.a()));
            } else {
                kotlinx.coroutines.n nVar2 = this.f74336a;
                Result.Companion companion2 = Result.INSTANCE;
                nVar2.resumeWith(Result.m454constructorimpl(ResultKt.a(new HttpException(response))));
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class c implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.n f74337a;

        c(kotlinx.coroutines.n nVar) {
            this.f74337a = nVar;
        }

        @Override // retrofit2.f
        public void a(d call, Throwable t11) {
            Intrinsics.h(call, "call");
            Intrinsics.h(t11, "t");
            kotlinx.coroutines.n nVar = this.f74337a;
            Result.Companion companion = Result.INSTANCE;
            nVar.resumeWith(Result.m454constructorimpl(ResultKt.a(t11)));
        }

        @Override // retrofit2.f
        public void b(d call, j0 response) {
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            this.f74337a.resumeWith(Result.m454constructorimpl(response));
        }
    }

    public static final Object a(final d dVar, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$await$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f67061a;
            }

            public final void invoke(Throwable th2) {
                dVar.cancel();
            }
        });
        dVar.h(new a(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    public static final Object b(final d dVar, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$await$4$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f67061a;
            }

            public final void invoke(Throwable th2) {
                dVar.cancel();
            }
        });
        dVar.h(new b(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    public static final Object c(final d dVar, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f67061a;
            }

            public final void invoke(Throwable th2) {
                dVar.cancel();
            }
        });
        dVar.h(new c(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    public static final Object d(d dVar, Continuation continuation) {
        Intrinsics.f(dVar, "null cannot be cast to non-null type retrofit2.Call<kotlin.Unit?>");
        return b(dVar, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object e(final Throwable th2, Continuation continuation) throws Throwable {
        final KotlinExtensions$suspendAndThrow$1 kotlinExtensions$suspendAndThrow$1;
        if (continuation instanceof KotlinExtensions$suspendAndThrow$1) {
            kotlinExtensions$suspendAndThrow$1 = (KotlinExtensions$suspendAndThrow$1) continuation;
            int i11 = kotlinExtensions$suspendAndThrow$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                kotlinExtensions$suspendAndThrow$1.label = i11 - Integer.MIN_VALUE;
            } else {
                kotlinExtensions$suspendAndThrow$1 = new KotlinExtensions$suspendAndThrow$1(continuation);
            }
        } else {
            kotlinExtensions$suspendAndThrow$1 = new KotlinExtensions$suspendAndThrow$1(continuation);
        }
        Object obj = kotlinExtensions$suspendAndThrow$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = kotlinExtensions$suspendAndThrow$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            kotlinExtensions$suspendAndThrow$1.L$0 = th2;
            kotlinExtensions$suspendAndThrow$1.label = 1;
            y0.a().dispatch(kotlinExtensions$suspendAndThrow$1.getF67028a(), new Runnable() { // from class: retrofit2.KotlinExtensions$suspendAndThrow$2$1
                @Override // java.lang.Runnable
                public final void run() {
                    Continuation continuationC = IntrinsicsKt.c(kotlinExtensions$suspendAndThrow$1);
                    Result.Companion companion = Result.INSTANCE;
                    continuationC.resumeWith(Result.m454constructorimpl(ResultKt.a(th2)));
                }
            });
            Object objF2 = IntrinsicsKt.f();
            if (objF2 == IntrinsicsKt.f()) {
                DebugProbesKt.c(kotlinExtensions$suspendAndThrow$1);
            }
            if (objF2 == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        throw new KotlinNothingValueException();
    }
}
