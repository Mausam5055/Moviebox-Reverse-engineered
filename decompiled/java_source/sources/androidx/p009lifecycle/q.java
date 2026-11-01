package androidx.p009lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q f9639a = new q();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicBoolean f9640b = new AtomicBoolean(false);

    public static final class a extends j {
        @Override // androidx.p009lifecycle.j, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Intrinsics.h(activity, "activity");
            i0.INSTANCE.c(activity);
        }
    }

    private q() {
    }

    public static final void a(Context context) {
        Intrinsics.h(context, "context");
        if (f9640b.getAndSet(true)) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.f(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new a());
    }
}
