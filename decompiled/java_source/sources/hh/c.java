package hh;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import nh.m;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f64464a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f64465b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Application application) {
            Intrinsics.h(application, "application");
            if (c.f64465b) {
                return;
            }
            c.f64465b = true;
            Utils.b(application);
            m.f70474a.f();
            b.f64461b.a().e(application);
        }
    }
}
