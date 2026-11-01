package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class BroadcastFrameClock implements u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0 f3551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Throwable f3553c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f3554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f3555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicInt f3556f;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Function1 f3557a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Continuation f3558b;

        public a(Function1 function1, Continuation continuation) {
            this.f3557a = function1;
            this.f3558b = continuation;
        }

        public final Continuation a() {
            return this.f3558b;
        }

        public final void b(long j11) {
            Object objM454constructorimpl;
            Continuation continuation = this.f3558b;
            try {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(this.f3557a.invoke(Long.valueOf(j11)));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            continuation.resumeWith(objM454constructorimpl);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BroadcastFrameClock() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public BroadcastFrameClock(Function0 function0) {
        this.f3551a = function0;
        this.f3552b = new Object();
        this.f3554d = new ArrayList();
        this.f3555e = new ArrayList();
        this.f3556f = new AtomicInt(0);
    }

    public /* synthetic */ BroadcastFrameClock(Function0 function0, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(Throwable th2) {
        synchronized (this.f3552b) {
            try {
                if (this.f3553c != null) {
                    return;
                }
                this.f3553c = th2;
                List list = this.f3554d;
                int size = list.size();
                for (int i11 = 0; i11 < size; i11++) {
                    Continuation continuationA = ((a) list.get(i11)).a();
                    Result.Companion companion = Result.INSTANCE;
                    continuationA.resumeWith(Result.m454constructorimpl(ResultKt.a(th2)));
                }
                this.f3554d.clear();
                this.f3556f.set(0);
                Unit unit = Unit.f67061a;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // kotlin.coroutines.CoroutineContext
    public Object fold(Object obj, Function2 function2) {
        return u0.a.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return u0.a.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public /* synthetic */ CoroutineContext.Key getKey() {
        return t0.a(this);
    }

    @Override // androidx.compose.runtime.u0
    public Object l(Function1 function1, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final a aVar = new a(function1, cancellableContinuationImpl);
        synchronized (this.f3552b) {
            Throwable th2 = this.f3553c;
            if (th2 != null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(ResultKt.a(th2)));
            } else {
                boolean zIsEmpty = this.f3554d.isEmpty();
                this.f3554d.add(aVar);
                if (zIsEmpty) {
                    this.f3556f.set(1);
                }
                cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.BroadcastFrameClock$withFrameNanos$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((Throwable) obj);
                        return Unit.f67061a;
                    }

                    public final void invoke(Throwable th3) {
                        Object obj = this.this$0.f3552b;
                        BroadcastFrameClock broadcastFrameClock = this.this$0;
                        BroadcastFrameClock.a aVar2 = aVar;
                        synchronized (obj) {
                            try {
                                broadcastFrameClock.f3554d.remove(aVar2);
                                if (broadcastFrameClock.f3554d.isEmpty()) {
                                    broadcastFrameClock.f3556f.set(0);
                                }
                                Unit unit = Unit.f67061a;
                            } catch (Throwable th4) {
                                throw th4;
                            }
                        }
                    }
                });
                if (zIsEmpty && this.f3551a != null) {
                    try {
                        this.f3551a.invoke();
                    } catch (Throwable th3) {
                        j(th3);
                    }
                }
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return u0.a.c(this, key);
    }

    public final boolean p() {
        return this.f3556f.get() != 0;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return u0.a.d(this, coroutineContext);
    }

    public final void q(long j11) {
        synchronized (this.f3552b) {
            try {
                List list = this.f3554d;
                this.f3554d = this.f3555e;
                this.f3555e = list;
                this.f3556f.set(0);
                int size = list.size();
                for (int i11 = 0; i11 < size; i11++) {
                    ((a) list.get(i11)).b(j11);
                }
                list.clear();
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
