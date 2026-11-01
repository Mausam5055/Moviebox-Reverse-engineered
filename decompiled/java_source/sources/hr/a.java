package hr;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f64825a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f64826b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Function0 f64827c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Function4 f64828d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Function1 f64829e;

    private a() {
    }

    public final void a() {
        f64826b = "";
        f64827c = null;
        f64828d = null;
        f64829e = null;
    }

    public final String b() {
        return f64826b;
    }

    public final String c() {
        String str;
        Function0 function0 = f64827c;
        return (function0 == null || (str = (String) function0.invoke()) == null) ? "" : str;
    }

    public void d(String appName, Function0 userId, Function4 reportShow, Function1 toastShow) {
        Intrinsics.h(appName, "appName");
        Intrinsics.h(userId, "userId");
        Intrinsics.h(reportShow, "reportShow");
        Intrinsics.h(toastShow, "toastShow");
        f64826b = appName;
        f64827c = userId;
        f64828d = reportShow;
        f64829e = toastShow;
    }

    public final void e(Context context, String str, String id2, com.transsion.share.share.a aVar) {
        Intrinsics.h(context, "context");
        Intrinsics.h(id2, "id");
        Function4 function4 = f64828d;
        if (function4 != null) {
            function4.invoke(context, str, id2, aVar);
        }
    }

    public final void f(String content) {
        Intrinsics.h(content, "content");
        Function1 function1 = f64829e;
        if (function1 != null) {
            function1.invoke(content);
        }
    }
}
