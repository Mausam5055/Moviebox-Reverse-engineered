package androidx.room;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class k0 implements CoroutineContext.Element {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f14706c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ContinuationInterceptor f14707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f14708b;

    public static final class a implements CoroutineContext.Key {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public k0(ContinuationInterceptor transactionDispatcher) {
        Intrinsics.h(transactionDispatcher, "transactionDispatcher");
        this.f14707a = transactionDispatcher;
        this.f14708b = new AtomicInteger(0);
    }

    public final void a() {
        this.f14708b.incrementAndGet();
    }

    public final ContinuationInterceptor c() {
        return this.f14707a;
    }

    public final void d() {
        if (this.f14708b.decrementAndGet() < 0) {
            throw new IllegalStateException("Transaction was never started or was already released.");
        }
    }

    @Override // kotlin.coroutines.CoroutineContext
    public Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public CoroutineContext.Key getKey() {
        return f14706c;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.d(this, coroutineContext);
    }
}
