package lg;

import android.util.Log;
import com.tn.lib.logger.xlog.LogType;
import java.util.Arrays;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import mg.c;
import og.b;
import og.d;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0828a f68839a = new C0828a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static mg.a f68840b;

    /* JADX INFO: renamed from: lg.a$a, reason: collision with other inner class name */
    public static final class C0828a {

        /* JADX INFO: renamed from: lg.a$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0829a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f68841a;

            static {
                int[] iArr = new int[LogType.values().length];
                try {
                    iArr[LogType.TYPE_LOGCAT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LogType.TYPE_XLOG.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f68841a = iArr;
            }
        }

        private C0828a() {
        }

        public /* synthetic */ C0828a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String a(String str) {
            String str2 = "MB_" + str;
            if (str2.length() <= 23) {
                return str2;
            }
            String strSubstring = str2.substring(0, 23);
            Intrinsics.g(strSubstring, "substring(...)");
            return strSubstring;
        }

        public static /* synthetic */ void e(C0828a c0828a, String str, String str2, Throwable th2, boolean z10, int i11, Object obj) {
            if ((i11 & 8) != 0) {
                z10 = false;
            }
            c0828a.b(str, str2, th2, z10);
        }

        public static /* synthetic */ void f(C0828a c0828a, String str, String str2, boolean z10, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                z10 = false;
            }
            c0828a.c(str, str2, z10);
        }

        public static /* synthetic */ void g(C0828a c0828a, String str, boolean z10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                z10 = false;
            }
            c0828a.d(str, z10);
        }

        public static /* synthetic */ void k(C0828a c0828a, String str, String str2, Throwable th2, boolean z10, int i11, Object obj) {
            if ((i11 & 8) != 0) {
                z10 = false;
            }
            c0828a.h(str, str2, th2, z10);
        }

        public static /* synthetic */ void l(C0828a c0828a, String str, String str2, boolean z10, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                z10 = false;
            }
            c0828a.i(str, str2, z10);
        }

        public static /* synthetic */ void m(C0828a c0828a, String str, boolean z10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                z10 = false;
            }
            c0828a.j(str, z10);
        }

        private final mg.a n() {
            int i11 = C0829a.f68841a[c.f69560a.d().ordinal()];
            if (i11 == 1) {
                return b.f71011b.a();
            }
            if (i11 == 2) {
                return d.f71014b.a();
            }
            throw new NoWhenBranchMatchedException();
        }

        public static /* synthetic */ void q(C0828a c0828a, String str, boolean z10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                z10 = false;
            }
            c0828a.o(str, z10);
        }

        public static /* synthetic */ void r(C0828a c0828a, String str, String[] strArr, boolean z10, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                z10 = false;
            }
            c0828a.p(str, strArr, z10);
        }

        private final boolean s(String str, boolean z10) {
            return !z10 || Log.isLoggable(a(str), 3);
        }

        private final boolean t(String str) {
            return Log.isLoggable(a(str), 3);
        }

        public static /* synthetic */ void v(C0828a c0828a, String str, String str2, boolean z10, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                z10 = false;
            }
            c0828a.u(str, str2, z10);
        }

        public static /* synthetic */ void y(C0828a c0828a, String str, String str2, Throwable th2, boolean z10, int i11, Object obj) {
            if ((i11 & 8) != 0) {
                z10 = false;
            }
            c0828a.w(str, str2, th2, z10);
        }

        public static /* synthetic */ void z(C0828a c0828a, String str, String str2, boolean z10, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                z10 = false;
            }
            c0828a.x(str, str2, z10);
        }

        public final void b(String tag, String msg, Throwable throwable, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            Intrinsics.h(throwable, "throwable");
            if (t(tag)) {
                b.f71011b.a().f(a(tag), msg, throwable.getStackTrace().toString());
                return;
            }
            if (!z10) {
                b.f71011b.a().d(a(tag), msg, throwable.getStackTrace().toString());
                return;
            }
            if (a.f68840b == null) {
                a.f68840b = n();
            }
            mg.a aVar = a.f68840b;
            if (aVar != null) {
                aVar.e(a(tag), msg, throwable.getStackTrace().toString());
            }
        }

        public final void c(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            if (t(tag)) {
                b.f71011b.a().f(a(tag), msg);
                return;
            }
            if (!z10) {
                b.f71011b.a().e(a(tag), msg);
                return;
            }
            if (a.f68840b == null) {
                a.f68840b = n();
            }
            mg.a aVar = a.f68840b;
            if (aVar != null) {
                aVar.e(a(tag), msg);
            }
        }

        public final void d(String msg, boolean z10) {
            Intrinsics.h(msg, "msg");
            if (!z10) {
                b.f71011b.a().c(msg);
                return;
            }
            if (a.f68840b == null) {
                a.f68840b = n();
            }
            mg.a aVar = a.f68840b;
            if (aVar != null) {
                aVar.c(msg);
            }
        }

        public final void h(String tag, String msg, Throwable throwable, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            Intrinsics.h(throwable, "throwable");
            if (s(tag, z10)) {
                b.f71011b.a().g(a(tag), msg, throwable.getStackTrace().toString());
                return;
            }
            if (a.f68840b == null) {
                a.f68840b = n();
            }
            mg.a aVar = a.f68840b;
            if (aVar != null) {
                aVar.g(a(tag), msg, throwable.getStackTrace().toString());
            }
        }

        public final void i(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            if (s(tag, z10)) {
                b.f71011b.a().g(a(tag), msg);
                return;
            }
            if (a.f68840b == null) {
                a.f68840b = n();
            }
            mg.a aVar = a.f68840b;
            if (aVar != null) {
                aVar.g(a(tag), msg);
            }
        }

        public final void j(String msg, boolean z10) {
            Intrinsics.h(msg, "msg");
            if (!z10) {
                b.f71011b.a().b(msg);
                return;
            }
            if (a.f68840b == null) {
                a.f68840b = n();
            }
            mg.a aVar = a.f68840b;
            if (aVar != null) {
                aVar.b(msg);
            }
        }

        public final void o(String msg, boolean z10) {
            Intrinsics.h(msg, "msg");
            if (!z10) {
                b.f71011b.a().a(msg);
                return;
            }
            if (a.f68840b == null) {
                a.f68840b = n();
            }
            mg.a aVar = a.f68840b;
            if (aVar != null) {
                aVar.a(msg);
            }
        }

        public final void p(String tag, String[] msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            if (t(tag)) {
                b.f71011b.a().f(a(tag), (String[]) Arrays.copyOf(msg, msg.length));
                return;
            }
            if (!z10) {
                b.f71011b.a().d(a(tag), (String[]) Arrays.copyOf(msg, msg.length));
                return;
            }
            if (a.f68840b == null) {
                a.f68840b = n();
            }
            mg.a aVar = a.f68840b;
            if (aVar != null) {
                aVar.d(a(tag), (String[]) Arrays.copyOf(msg, msg.length));
            }
        }

        public final void u(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            if (t(tag)) {
                b.f71011b.a().f(a(tag), msg);
                return;
            }
            if (!z10) {
                b.f71011b.a().h(a(tag), msg);
                return;
            }
            if (a.f68840b == null) {
                a.f68840b = n();
            }
            mg.a aVar = a.f68840b;
            if (aVar != null) {
                aVar.h(a(tag), msg);
            }
        }

        public final void w(String tag, String msg, Throwable throwable, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            Intrinsics.h(throwable, "throwable");
            if (s(tag, z10)) {
                b.f71011b.a().f(a(tag), msg, throwable.getStackTrace().toString());
                return;
            }
            if (a.f68840b == null) {
                a.f68840b = n();
            }
            mg.a aVar = a.f68840b;
            if (aVar != null) {
                aVar.f(a(tag), msg, throwable.getStackTrace().toString());
            }
        }

        public final void x(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            if (s(tag, z10)) {
                b.f71011b.a().f(a(tag), msg);
                return;
            }
            if (a.f68840b == null) {
                a.f68840b = n();
            }
            mg.a aVar = a.f68840b;
            if (aVar != null) {
                aVar.f(a(tag), msg);
            }
        }
    }

    public static final void c(String str, String str2, boolean z10) {
        f68839a.c(str, str2, z10);
    }
}
