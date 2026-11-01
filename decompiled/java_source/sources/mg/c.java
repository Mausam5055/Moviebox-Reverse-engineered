package mg;

import android.app.Application;
import android.os.Environment;
import android.util.Log;
import com.elvishew.xlog.printer.file.FilePrinter;
import com.tn.lib.logger.xlog.LogType;
import f8.d;
import java.io.File;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import q7.e;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Application f69561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f69562c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f69560a = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static LogType f69563d = LogType.TYPE_LOGCAT;

    public static final class a {

        /* JADX INFO: renamed from: mg.c$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0838a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f69564a;

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
                f69564a = iArr;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void g(a aVar, Application application, LogType logType, boolean z10, String str, long j11, int i11, Object obj) {
            if ((i11 & 8) != 0) {
                str = "";
            }
            String str2 = str;
            if ((i11 & 16) != 0) {
                j11 = 0;
            }
            aVar.f(application, logType, z10, str2, j11);
        }

        private final void h(String str, long j11, boolean z10) {
            i(str, j11, z10);
        }

        private final void i(String str, long j11, boolean z10) {
            String strC = c(b());
            if (str.length() <= 0) {
                str = strC;
            }
            q7.a aVarR = new q7.a.C0892a().B(Integer.MIN_VALUE).E("X-LOG").A(new u7.a()).H(new x7.a()).G(new w7.a()).F(new ng.b()).D(new y7.a()).q(new t7.b()).p(new a8.a() { // from class: mg.b
                @Override // a8.a
                public final q7.b a(q7.b bVar) {
                    return c.a.j(bVar);
                }
            }).r();
            e8.a aVar = new e8.a();
            FilePrinter filePrinterB = str.length() > 0 ? new FilePrinter.b(str).d(new ng.a()).a(new d()).c(new ng.c()).f(new r7.a()).b() : null;
            if (z10) {
                if (filePrinterB == null) {
                    e.f(aVarR, aVar);
                    return;
                } else {
                    e.f(aVarR, aVar, filePrinterB);
                    return;
                }
            }
            if (filePrinterB == null) {
                e.e(aVarR);
            } else {
                e.f(aVarR, filePrinterB);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final q7.b j(q7.b bVar) {
            return bVar;
        }

        private final boolean k() {
            return Intrinsics.c(Environment.getExternalStorageState(), "mounted");
        }

        public final Application b() {
            return c.f69561b;
        }

        public final String c(Application application) {
            if (application == null) {
                throw new RuntimeException("日志库传入Application为空");
            }
            if (k()) {
                StringBuilder sb2 = new StringBuilder();
                File externalFilesDir = application.getExternalFilesDir(null);
                sb2.append(externalFilesDir != null ? externalFilesDir.getParent() : null);
                sb2.append(File.separator);
                sb2.append("log");
                return sb2.toString();
            }
            StringBuilder sb3 = new StringBuilder();
            File filesDir = application.getFilesDir();
            sb3.append(filesDir != null ? filesDir.getParent() : null);
            sb3.append(File.separator);
            sb3.append("log");
            return sb3.toString();
        }

        public final LogType d() {
            return c.f69563d;
        }

        public final boolean e() {
            return c.f69562c;
        }

        public final void f(Application application, LogType logType, boolean z10, String loggerPath, long j11) {
            Intrinsics.h(application, "application");
            Intrinsics.h(logType, "logType");
            Intrinsics.h(loggerPath, "loggerPath");
            a aVar = c.f69560a;
            if (aVar.b() != null) {
                return;
            }
            c.f69563d = logType;
            c.f69562c = z10 || Log.isLoggable("oneroom_logger", 3);
            aVar.l(application);
            int i11 = C0838a.f69564a[logType.ordinal()];
            if (i11 == 1) {
                h(loggerPath, j11, z10);
            } else {
                if (i11 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                i(loggerPath, j11, z10);
            }
        }

        public final void l(Application application) {
            c.f69561b = application;
        }
    }
}
