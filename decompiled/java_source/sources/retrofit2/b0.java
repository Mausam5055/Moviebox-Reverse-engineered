package retrofit2;

import android.os.Build;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes7.dex */
abstract class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Executor f74392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final d0 f74393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final c f74394c;

    static {
        String property = System.getProperty("java.vm.name");
        property.hashCode();
        if (property.equals("RoboVM")) {
            f74392a = null;
            f74393b = new d0();
            f74394c = new c();
        } else {
            if (!property.equals("Dalvik")) {
                f74392a = null;
                f74393b = new d0.b();
                f74394c = new c.a();
                return;
            }
            f74392a = new a();
            if (Build.VERSION.SDK_INT >= 24) {
                f74393b = new d0.a();
                f74394c = new c.a();
            } else {
                f74393b = new d0();
                f74394c = new c();
            }
        }
    }
}
