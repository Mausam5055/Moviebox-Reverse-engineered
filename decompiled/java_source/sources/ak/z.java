package ak;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class z {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f659b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f660c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: ak.y
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return z.b();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f661a = Executors.newFixedThreadPool(3);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final z a() {
            return (z) z.f660c.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final z b() {
        return new z();
    }

    public final void d(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        ExecutorService executorService = this.f661a;
        if (executorService != null) {
            executorService.submit(runnable);
        }
    }
}
