package androidx.p009lifecycle;

import android.os.Handler;
import androidx.core.app.NotificationCompat;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class ServiceLifecycleDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w f9564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f9565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DispatchRunnable f9566c;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000bR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;", "Ljava/lang/Runnable;", "Landroidx/lifecycle/w;", "registry", "Landroidx/lifecycle/Lifecycle$Event;", NotificationCompat.CATEGORY_EVENT, "<init>", "(Landroidx/lifecycle/w;Landroidx/lifecycle/Lifecycle$Event;)V", "", "run", "()V", "Landroidx/lifecycle/w;", "Landroidx/lifecycle/Lifecycle$Event;", "getEvent", "()Landroidx/lifecycle/Lifecycle$Event;", "", "wasExecuted", "Z", "lifecycle-service_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DispatchRunnable implements Runnable {
        private final Lifecycle.Event event;
        private final w registry;
        private boolean wasExecuted;

        public DispatchRunnable(w registry, Lifecycle.Event event) {
            Intrinsics.h(registry, "registry");
            Intrinsics.h(event, "event");
            this.registry = registry;
            this.event = event;
        }

        public final Lifecycle.Event getEvent() {
            return this.event;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.wasExecuted) {
                return;
            }
            this.registry.i(this.event);
            this.wasExecuted = true;
        }
    }

    public ServiceLifecycleDispatcher(u provider) {
        Intrinsics.h(provider, "provider");
        this.f9564a = new w(provider);
        this.f9565b = new Handler();
    }

    private final void f(Lifecycle.Event event) {
        DispatchRunnable dispatchRunnable = this.f9566c;
        if (dispatchRunnable != null) {
            dispatchRunnable.run();
        }
        DispatchRunnable dispatchRunnable2 = new DispatchRunnable(this.f9564a, event);
        this.f9566c = dispatchRunnable2;
        Handler handler = this.f9565b;
        Intrinsics.e(dispatchRunnable2);
        handler.postAtFrontOfQueue(dispatchRunnable2);
    }

    public Lifecycle a() {
        return this.f9564a;
    }

    public void b() {
        f(Lifecycle.Event.ON_START);
    }

    public void c() {
        f(Lifecycle.Event.ON_CREATE);
    }

    public void d() {
        f(Lifecycle.Event.ON_STOP);
        f(Lifecycle.Event.ON_DESTROY);
    }

    public void e() {
        f(Lifecycle.Event.ON_START);
    }
}
