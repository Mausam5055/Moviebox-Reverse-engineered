package w6;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f77597a = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicInteger f77598b = new AtomicInteger(0);

    public final boolean a() {
        return this.f77598b.get() >= this.f77597a;
    }

    public final void b() {
        this.f77598b.set(0);
    }

    public final void c(Function0 downCallBack) {
        Intrinsics.h(downCallBack, "downCallBack");
        if (this.f77598b.incrementAndGet() >= this.f77597a) {
            downCallBack.invoke();
        }
    }
}
