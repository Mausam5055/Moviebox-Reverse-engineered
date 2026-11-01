package ur;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f76889a = new a();

    private a() {
    }

    private final String a(String str) {
        return "shorttv_ad_" + str;
    }

    public static /* synthetic */ void c(a aVar, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str3 = null;
        }
        aVar.b(str, str2, str3);
    }

    public static /* synthetic */ void e(a aVar, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str3 = null;
        }
        aVar.d(str, str2, str3);
    }

    public static /* synthetic */ void g(a aVar, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str3 = null;
        }
        aVar.f(str, str2, str3);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0034  */
    public final void b(String tag, String message, String str) {
        String str2;
        Intrinsics.h(tag, "tag");
        Intrinsics.h(message, "message");
        if (str == null) {
            str2 = message;
        } else {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                String str3 = "sceneId=" + str + ", " + message;
                if (str3 == null) {
                    str2 = message;
                } else {
                    str2 = str3;
                }
            } else {
                str2 = message;
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, a(tag), str2, false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0034  */
    public final void d(String tag, String message, String str) {
        String str2;
        Intrinsics.h(tag, "tag");
        Intrinsics.h(message, "message");
        if (str == null) {
            str2 = message;
        } else {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                String str3 = "sceneId=" + str + ", " + message;
                if (str3 == null) {
                    str2 = message;
                } else {
                    str2 = str3;
                }
            } else {
                str2 = message;
            }
        }
        lg.a.C0828a.l(lg.a.f68839a, a(tag), str2, false, 4, null);
    }

    public final void f(String tag, String message, String str) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(message, "message");
        if (str != null) {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                String str2 = "sceneId=" + str + ", " + message;
                if (str2 != null) {
                    message = str2;
                }
            }
        }
        lg.a.C0828a.r(lg.a.f68839a, a(tag), new String[]{message}, false, 4, null);
    }
}
