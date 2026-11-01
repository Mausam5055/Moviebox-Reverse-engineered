package androidx.core.os;

import android.os.Build;
import android.os.ext.SdkExtensions;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f8152a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f8153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f8154c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f8155d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f8156e;

    /* JADX INFO: renamed from: androidx.core.os.a$a, reason: collision with other inner class name */
    private static final class C0067a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0067a f8157a = new C0067a();

        private C0067a() {
        }

        public final int a(int i11) {
            return SdkExtensions.getExtensionVersion(i11);
        }
    }

    static {
        int i11 = Build.VERSION.SDK_INT;
        f8153b = i11 >= 30 ? C0067a.f8157a.a(30) : 0;
        f8154c = i11 >= 30 ? C0067a.f8157a.a(31) : 0;
        f8155d = i11 >= 30 ? C0067a.f8157a.a(33) : 0;
        f8156e = i11 >= 30 ? C0067a.f8157a.a(1000000) : 0;
    }

    private a() {
    }

    public static final boolean a(String codename, String buildCodename) {
        Intrinsics.h(codename, "codename");
        Intrinsics.h(buildCodename, "buildCodename");
        if (Intrinsics.c("REL", buildCodename)) {
            return false;
        }
        Integer numB = b(buildCodename);
        Integer numB2 = b(codename);
        if (numB != null && numB2 != null) {
            return numB.intValue() >= numB2.intValue();
        }
        if (numB != null || numB2 != null) {
            return numB != null;
        }
        Locale locale = Locale.ROOT;
        String upperCase = buildCodename.toUpperCase(locale);
        Intrinsics.g(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        String upperCase2 = codename.toUpperCase(locale);
        Intrinsics.g(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase.compareTo(upperCase2) >= 0;
    }

    private static final Integer b(String str) {
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return Intrinsics.c(upperCase, "BAKLAVA") ? 0 : null;
    }

    public static final boolean c() {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 34) {
            if (i11 >= 33) {
                String CODENAME = Build.VERSION.CODENAME;
                Intrinsics.g(CODENAME, "CODENAME");
                if (a("UpsideDownCake", CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }

    public static final boolean d() {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 35) {
            if (i11 >= 34) {
                String CODENAME = Build.VERSION.CODENAME;
                Intrinsics.g(CODENAME, "CODENAME");
                if (a("VanillaIceCream", CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }
}
