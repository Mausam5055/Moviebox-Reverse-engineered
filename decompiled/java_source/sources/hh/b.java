package hh;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Stack;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f64461b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f64462c = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: hh.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.d();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Stack f64463a = new Stack();

    /* JADX INFO: loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f64462c.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b d() {
        return new b();
    }

    public final String c() {
        Stack stack = this.f64463a;
        return (stack == null || stack.size() <= 1) ? "" : stack.get(stack.size() - 2).getClass().getSimpleName();
    }

    public final void e(Application app) {
        Intrinsics.h(app, "app");
        app.registerActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
        Stack stack = this.f64463a;
        if (stack != null) {
            stack.add(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        Stack stack = this.f64463a;
        if (stack != null) {
            stack.remove(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.h(activity, "activity");
    }
}
