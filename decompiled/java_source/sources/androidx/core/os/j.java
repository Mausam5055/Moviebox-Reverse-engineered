package androidx.core.os;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class j implements k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Locale[] f8167c = new Locale[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Locale f8168d = new Locale("en", "XA");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Locale f8169e = new Locale("ar", "XB");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Locale f8170f = i.b("en-Latn");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Locale[] f8171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f8172b;

    j(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f8171a = f8167c;
            this.f8172b = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < localeArr.length; i11++) {
            Locale locale = localeArr[i11];
            if (locale == null) {
                throw new NullPointerException("list[" + i11 + "] is null");
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                c(sb2, locale2);
                if (i11 < localeArr.length - 1) {
                    sb2.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f8171a = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f8172b = sb2.toString();
    }

    static void c(StringBuilder sb2, Locale locale) {
        sb2.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country == null || country.isEmpty()) {
            return;
        }
        sb2.append('-');
        sb2.append(locale.getCountry());
    }

    @Override // androidx.core.os.k
    public String a() {
        return this.f8172b;
    }

    @Override // androidx.core.os.k
    public Object b() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        Locale[] localeArr = ((j) obj).f8171a;
        if (this.f8171a.length != localeArr.length) {
            return false;
        }
        int i11 = 0;
        while (true) {
            Locale[] localeArr2 = this.f8171a;
            if (i11 >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i11].equals(localeArr[i11])) {
                return false;
            }
            i11++;
        }
    }

    @Override // androidx.core.os.k
    public Locale get(int i11) {
        if (i11 >= 0) {
            Locale[] localeArr = this.f8171a;
            if (i11 < localeArr.length) {
                return localeArr[i11];
            }
        }
        return null;
    }

    public int hashCode() {
        int iHashCode = 1;
        for (Locale locale : this.f8171a) {
            iHashCode = (iHashCode * 31) + locale.hashCode();
        }
        return iHashCode;
    }

    @Override // androidx.core.os.k
    public boolean isEmpty() {
        return this.f8171a.length == 0;
    }

    @Override // androidx.core.os.k
    public int size() {
        return this.f8171a.length;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        int i11 = 0;
        while (true) {
            Locale[] localeArr = this.f8171a;
            if (i11 >= localeArr.length) {
                sb2.append("]");
                return sb2.toString();
            }
            sb2.append(localeArr[i11]);
            if (i11 < this.f8171a.length - 1) {
                sb2.append(',');
            }
            i11++;
        }
    }
}
