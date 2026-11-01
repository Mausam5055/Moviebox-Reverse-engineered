package r7;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e implements r7.d, r7.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f74170c = Pattern.compile("\\{([^{}]*)\\}");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f74171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f74172b;

    static class a extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f74173c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ThreadLocal f74174d;

        /* JADX INFO: renamed from: r7.e$a$a, reason: collision with other inner class name */
        class C0901a extends ThreadLocal {
            C0901a() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SimpleDateFormat initialValue() {
                return new SimpleDateFormat(a.this.f74173c, Locale.US);
            }
        }

        a(String str, String str2, String str3) {
            super(str, str2);
            C0901a c0901a = new C0901a();
            this.f74174d = c0901a;
            this.f74173c = str3;
            try {
                ((SimpleDateFormat) c0901a.get()).format(new Date());
            } catch (Exception e11) {
                throw new IllegalArgumentException("Bad date pattern: " + str3, e11);
            }
        }

        @Override // r7.e.d
        protected String a(String str, long j11, int i11, String str2, String str3) {
            return str.replace(this.f74177a, ((SimpleDateFormat) this.f74174d.get()).format(new Date(j11)));
        }
    }

    static class b extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f74176c;

        b(String str, String str2, boolean z10) {
            super(str, str2);
            this.f74176c = z10;
        }

        @Override // r7.e.d
        protected String a(String str, long j11, int i11, String str2, String str3) {
            return this.f74176c ? str.replace(this.f74177a, q7.c.a(i11)) : str.replace(this.f74177a, q7.c.b(i11));
        }
    }

    static class c extends d {
        c(String str, String str2) {
            super(str, str2);
        }

        @Override // r7.e.d
        protected String a(String str, long j11, int i11, String str2, String str3) {
            return str.replace(this.f74177a, str3);
        }
    }

    static abstract class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f74177a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f74178b;

        d(String str, String str2) {
            this.f74177a = str;
            this.f74178b = str2;
        }

        protected abstract String a(String str, long j11, int i11, String str2, String str3);
    }

    /* JADX INFO: renamed from: r7.e$e, reason: collision with other inner class name */
    static class C0902e extends d {
        C0902e(String str, String str2) {
            super(str, str2);
        }

        @Override // r7.e.d
        protected String a(String str, long j11, int i11, String str2, String str3) {
            return str.replace(this.f74177a, str2);
        }
    }

    public e(String str) {
        if (str == null) {
            throw new NullPointerException("Pattern should not be null");
        }
        this.f74171a = str;
        List listG = g(h(str));
        this.f74172b = listG;
        if (listG.size() != 0) {
            return;
        }
        throw new IllegalArgumentException("No recognizable parameter found in the pattern " + str);
    }

    static a c(String str, String str2) {
        if (str2.startsWith("d ") && str2.length() > 2) {
            return new a(str, str2, str2.substring(2));
        }
        if (str2.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D)) {
            return new a(str, str2, "yyyy-MM-dd HH:mm:ss.SSS");
        }
        return null;
    }

    static b d(String str, String str2) {
        if (str2.equals("l")) {
            return new b(str, str2, false);
        }
        if (str2.equals("L")) {
            return new b(str, str2, true);
        }
        return null;
    }

    static c e(String str, String str2) {
        if (str2.equals("m")) {
            return new c(str, str2);
        }
        return null;
    }

    private static d f(String str) {
        String str2 = "{" + str + "}";
        String strTrim = str.trim();
        a aVarC = c(str2, strTrim);
        if (aVarC != null) {
            return aVarC;
        }
        b bVarD = d(str2, strTrim);
        if (bVarD != null) {
            return bVarD;
        }
        C0902e c0902eI = i(str2, strTrim);
        if (c0902eI != null) {
            return c0902eI;
        }
        c cVarE = e(str2, strTrim);
        if (cVarE != null) {
            return cVarE;
        }
        return null;
    }

    private static List g(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d dVarF = f((String) it.next());
            if (dVarF != null) {
                arrayList.add(dVarF);
            }
        }
        return arrayList;
    }

    static List h(String str) {
        ArrayList arrayList = new ArrayList(4);
        Matcher matcher = f74170c.matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group(1));
        }
        return arrayList;
    }

    static C0902e i(String str, String str2) {
        if (str2.equals("t")) {
            return new C0902e(str, str2);
        }
        return null;
    }

    @Override // r7.c
    public CharSequence a(long j11, int i11, String str, String str2) {
        String str3 = this.f74171a;
        Iterator it = this.f74172b.iterator();
        String strA = str3;
        while (it.hasNext()) {
            strA = ((d) it.next()).a(strA, j11, i11, str, str2);
        }
        return strA;
    }

    @Override // r7.d
    public CharSequence b(int i11, String str, String str2) {
        return a(System.currentTimeMillis(), i11, str, str2);
    }
}
