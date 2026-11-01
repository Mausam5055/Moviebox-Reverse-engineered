package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.window.extensions.layout.WindowLayoutComponent;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes2.dex */
public interface x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15375a = a.f15376a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f15376a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final String f15377b = Reflection.b(x.class).g();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static y f15378c = m.f15341a;

        private a() {
        }

        public final x a(Context context) {
            Intrinsics.h(context, "context");
            return f15378c.a(new WindowInfoTrackerImpl(f0.f15338a, b(context)));
        }

        public final v b(Context context) {
            Intrinsics.h(context, "context");
            p pVar = null;
            try {
                WindowLayoutComponent windowLayoutComponentM = SafeWindowLayoutComponentProvider.f15306a.m();
                if (windowLayoutComponentM != null) {
                    pVar = new p(windowLayoutComponentM);
                }
            } catch (Throwable unused) {
            }
            return pVar == null ? t.f15363c.a(context) : pVar;
        }
    }

    kotlinx.coroutines.flow.b a(Activity activity);
}
