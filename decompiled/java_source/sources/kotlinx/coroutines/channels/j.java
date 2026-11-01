package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.s2;

/* JADX INFO: loaded from: classes7.dex */
public final class j extends w {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BufferedChannel f67694e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f67695f;

    public j(long j11, j jVar, BufferedChannel bufferedChannel, int i11) {
        super(j11, jVar, i11);
        this.f67694e = bufferedChannel;
        this.f67695f = new AtomicReferenceArray(BufferedChannelKt.f67662b * 2);
    }

    private final void E(int i11, Object obj) {
        z().set(i11 * 2, obj);
    }

    private final /* synthetic */ AtomicReferenceArray z() {
        return this.f67695f;
    }

    public final Object A(int i11) {
        return z().get(i11 * 2);
    }

    public final Object B(int i11) {
        return z().get((i11 * 2) + 1);
    }

    public final void C(int i11, boolean z10) {
        if (z10) {
            y().m1((this.f67887c * ((long) BufferedChannelKt.f67662b)) + ((long) i11));
        }
        t();
    }

    public final Object D(int i11) {
        Object objA = A(i11);
        w(i11);
        return objA;
    }

    public final void F(int i11, Object obj) {
        z().set((i11 * 2) + 1, obj);
    }

    public final void G(int i11, Object obj) {
        E(i11, obj);
    }

    @Override // kotlinx.coroutines.internal.w
    public int r() {
        return BufferedChannelKt.f67662b;
    }

    @Override // kotlinx.coroutines.internal.w
    public void s(int i11, Throwable th2, CoroutineContext coroutineContext) {
        Function1 function1;
        Function1 function2;
        int i12 = BufferedChannelKt.f67662b;
        boolean z10 = i11 >= i12;
        if (z10) {
            i11 -= i12;
        }
        Object objA = A(i11);
        while (true) {
            Object objB = B(i11);
            if ((objB instanceof s2) || (objB instanceof s)) {
                if (v(i11, objB, z10 ? BufferedChannelKt.f67670j : BufferedChannelKt.f67671k)) {
                    w(i11);
                    C(i11, !z10);
                    if (!z10 || (function1 = y().f67656b) == null) {
                        return;
                    }
                    kotlinx.coroutines.internal.s.a(function1, objA, coroutineContext);
                    return;
                }
            } else {
                if (objB == BufferedChannelKt.f67670j || objB == BufferedChannelKt.f67671k) {
                    break;
                }
                if (objB != BufferedChannelKt.f67667g && objB != BufferedChannelKt.f67666f) {
                    if (objB == BufferedChannelKt.f67669i || objB == BufferedChannelKt.f67664d || objB == BufferedChannelKt.z()) {
                        return;
                    }
                    throw new IllegalStateException(("unexpected state: " + objB).toString());
                }
            }
        }
        w(i11);
        if (!z10 || (function2 = y().f67656b) == null) {
            return;
        }
        kotlinx.coroutines.internal.s.a(function2, objA, coroutineContext);
    }

    public final boolean v(int i11, Object obj, Object obj2) {
        return i.a(z(), (i11 * 2) + 1, obj, obj2);
    }

    public final void w(int i11) {
        E(i11, null);
    }

    public final Object x(int i11, Object obj) {
        return z().getAndSet((i11 * 2) + 1, obj);
    }

    public final BufferedChannel y() {
        BufferedChannel bufferedChannel = this.f67694e;
        Intrinsics.e(bufferedChannel);
        return bufferedChannel;
    }
}
