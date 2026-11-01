package xg;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;

/* JADX INFO: loaded from: classes3.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f78303a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ArrayList f78304b = new ArrayList();

    private e() {
    }

    public final void a(Interceptor interceptor) {
        Intrinsics.h(interceptor, "interceptor");
        ArrayList arrayList = f78304b;
        if (!arrayList.contains(interceptor)) {
            arrayList.add(interceptor);
            return;
        }
        lg.a.C0828a.z(lg.a.f68839a, "InterceptorsManager", "add dump interceptor " + interceptor, false, 4, null);
    }

    public final ArrayList b() {
        return f78304b;
    }
}
