package ai;

import android.util.Log;
import com.tn.tranpay.logger.LogLevel;
import com.tn.tranpay.logger.LoggerPlugin;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f621c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f619a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static LogLevel f620b = LogLevel.INFO;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final CopyOnWriteArrayList f622d = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: ai.a$a, reason: collision with other inner class name */
    public /* synthetic */ class C0009a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f623a;

        static {
            int[] iArr = new int[LogLevel.values().length];
            try {
                iArr[LogLevel.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LogLevel.INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LogLevel.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LogLevel.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f623a = iArr;
        }
    }

    private a() {
    }

    public static /* synthetic */ void c(a aVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "TranPay";
        }
        aVar.b(str, str2);
    }

    public static /* synthetic */ void e(a aVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "TranPay";
        }
        aVar.d(str, str2);
    }

    public static /* synthetic */ void g(a aVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "TranPay";
        }
        aVar.f(str, str2);
    }

    private final void i(LogLevel logLevel, String str, String str2) {
        if (logLevel.ordinal() < f620b.ordinal()) {
            return;
        }
        if (f621c) {
            int i11 = C0009a.f623a[logLevel.ordinal()];
            if (i11 == 3) {
                Log.w(str, str2);
            } else if (i11 == 4) {
                Log.e(str, str2);
            }
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            for (LoggerPlugin loggerPlugin : f622d) {
                if (loggerPlugin != null) {
                    loggerPlugin.log(logLevel, str, str2);
                }
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public static /* synthetic */ void k(a aVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "TranPay";
        }
        aVar.j(str, str2);
    }

    public final void a(LoggerPlugin loggerPlugin) {
        if (loggerPlugin != null) {
            f622d.add(loggerPlugin);
        } else {
            Log.e("TranPay", "Attempt to add null plugin ignored");
        }
    }

    public final void b(String message, String tag) {
        Intrinsics.h(message, "message");
        Intrinsics.h(tag, "tag");
        i(LogLevel.DEBUG, tag, message);
    }

    public final void d(String message, String tag) {
        Intrinsics.h(message, "message");
        Intrinsics.h(tag, "tag");
        i(LogLevel.ERROR, tag, message);
    }

    public final void f(String message, String tag) {
        Intrinsics.h(message, "message");
        Intrinsics.h(tag, "tag");
        i(LogLevel.INFO, tag, message);
    }

    public final void h(LogLevel level, boolean z10) {
        Intrinsics.h(level, "level");
        f620b = level;
        f621c = z10;
    }

    public final void j(String message, String tag) {
        Intrinsics.h(message, "message");
        Intrinsics.h(tag, "tag");
        i(LogLevel.WARNING, tag, message);
    }
}
