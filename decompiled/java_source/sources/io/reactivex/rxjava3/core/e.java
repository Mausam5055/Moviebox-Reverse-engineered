package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureBuffer;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureDrop;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureLatest;
import io.reactivex.rxjava3.internal.subscribers.StrictSubscriber;
import java.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e implements u10.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f65314a = Math.max(1, Integer.getInteger("rx3.buffer-size", 128).intValue());

    public static int a() {
        return f65314a;
    }

    public final e b() {
        return c(a(), false, true);
    }

    public final e c(int i11, boolean z10, boolean z11) {
        io.reactivex.rxjava3.internal.functions.a.a(i11, "capacity");
        return pz.a.m(new FlowableOnBackpressureBuffer(this, i11, z11, z10, Functions.f65322c, Functions.a()));
    }

    public final e d() {
        return pz.a.m(new FlowableOnBackpressureDrop(this));
    }

    public final e e() {
        return pz.a.m(new FlowableOnBackpressureLatest(this, null));
    }

    public final void f(f fVar) {
        Objects.requireNonNull(fVar, "subscriber is null");
        try {
            u10.c cVarZ = pz.a.z(this, fVar);
            Objects.requireNonNull(cVarZ, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            g(cVarZ);
        } catch (NullPointerException e11) {
            throw e11;
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            pz.a.r(th2);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    protected abstract void g(u10.c cVar);

    @Override // u10.b
    public final void subscribe(u10.c cVar) {
        if (cVar instanceof f) {
            f((f) cVar);
        } else {
            Objects.requireNonNull(cVar, "subscriber is null");
            f(new StrictSubscriber(cVar));
        }
    }
}
