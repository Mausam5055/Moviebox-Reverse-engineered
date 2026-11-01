package t5;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.sP.Sj.Ym;
import java.io.File;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f76064a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f76065b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f76066c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Ym f76067d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f76068e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f76069f;

    public static Ym a() {
        if (f76067d == null) {
            Ym.Sj sj2 = new Ym.Sj("v_config");
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f76067d = sj2.Sj(10000L, timeUnit).sP(10000L, timeUnit).TKC(10000L, timeUnit).Sj();
        }
        return f76067d;
    }

    public static boolean b() {
        return f76069f;
    }

    public static Context c() {
        return f76064a;
    }

    public static void d(int i11) {
        f76068e = i11;
    }

    public static void e(Context context, String str) {
        f76064a = context;
        f76065b = str;
    }

    public static void f(Ym ym2) {
        f76067d = ym2;
    }

    public static void g(boolean z10) {
        f76066c = z10;
    }

    public static boolean h() {
        return f76066c;
    }

    public static String i() {
        if (TextUtils.isEmpty(f76065b)) {
            try {
                File file = new File(c().getFilesDir(), "ttad_dir");
                if (!file.exists()) {
                    file.mkdirs();
                }
                f76065b = file.getAbsolutePath();
            } catch (Throwable unused) {
            }
        }
        return f76065b;
    }

    public static int j() {
        return f76068e;
    }
}
