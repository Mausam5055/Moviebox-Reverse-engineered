package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final i f8164b = a(new Locale[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f8165a;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Locale[] f8166a = {new Locale("en", "XA"), new Locale("ar", "XB")};

        static Locale a(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    static class b {
        static LocaleList a(Locale... localeArr) {
            return new LocaleList(localeArr);
        }
    }

    private i(k kVar) {
        this.f8165a = kVar;
    }

    public static i a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? j(b.a(localeArr)) : new i(new j(localeArr));
    }

    static Locale b(String str) {
        if (str.contains("-")) {
            String[] strArrSplit = str.split("-", -1);
            if (strArrSplit.length > 2) {
                return new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
            }
            if (strArrSplit.length > 1) {
                return new Locale(strArrSplit[0], strArrSplit[1]);
            }
            if (strArrSplit.length == 1) {
                return new Locale(strArrSplit[0]);
            }
        } else {
            if (!str.contains("_")) {
                return new Locale(str);
            }
            String[] strArrSplit2 = str.split("_", -1);
            if (strArrSplit2.length > 2) {
                return new Locale(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2]);
            }
            if (strArrSplit2.length > 1) {
                return new Locale(strArrSplit2[0], strArrSplit2[1]);
            }
            if (strArrSplit2.length == 1) {
                return new Locale(strArrSplit2[0]);
            }
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    public static i c(String str) {
        if (str == null || str.isEmpty()) {
            return e();
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i11 = 0; i11 < length; i11++) {
            localeArr[i11] = a.a(strArrSplit[i11]);
        }
        return a(localeArr);
    }

    public static i e() {
        return f8164b;
    }

    public static i j(LocaleList localeList) {
        return new i(new p(localeList));
    }

    public Locale d(int i11) {
        return this.f8165a.get(i11);
    }

    public boolean equals(Object obj) {
        return (obj instanceof i) && this.f8165a.equals(((i) obj).f8165a);
    }

    public boolean f() {
        return this.f8165a.isEmpty();
    }

    public int g() {
        return this.f8165a.size();
    }

    public String h() {
        return this.f8165a.a();
    }

    public int hashCode() {
        return this.f8165a.hashCode();
    }

    public Object i() {
        return this.f8165a.b();
    }

    public String toString() {
        return this.f8165a.toString();
    }
}
