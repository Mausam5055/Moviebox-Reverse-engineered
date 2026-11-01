package ga;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.common.primitives.Ints;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f63493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f63494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f63495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Integer f63496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f63497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f63498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f63499g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f63500h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f63501i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f63502j;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f63503a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f63504b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f63505c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f63506d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f63507e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f63508f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f63509g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f63510h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f63511i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f63512j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f63513k;

        private a(int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21) {
            this.f63503a = i11;
            this.f63504b = i12;
            this.f63505c = i13;
            this.f63506d = i14;
            this.f63507e = i15;
            this.f63508f = i16;
            this.f63509g = i17;
            this.f63510h = i18;
            this.f63511i = i19;
            this.f63512j = i20;
            this.f63513k = i21;
        }

        public static a a(String str) {
            String[] strArrSplit = TextUtils.split(str.substring(7), ",");
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            int i19 = -1;
            int i20 = -1;
            for (int i21 = 0; i21 < strArrSplit.length; i21++) {
                String strE = com.google.common.base.a.e(strArrSplit[i21].trim());
                strE.hashCode();
                switch (strE) {
                    case "italic":
                        i17 = i21;
                        break;
                    case "underline":
                        i18 = i21;
                        break;
                    case "strikeout":
                        i19 = i21;
                        break;
                    case "primarycolour":
                        i13 = i21;
                        break;
                    case "bold":
                        i16 = i21;
                        break;
                    case "name":
                        i11 = i21;
                        break;
                    case "fontsize":
                        i15 = i21;
                        break;
                    case "borderstyle":
                        i20 = i21;
                        break;
                    case "alignment":
                        i12 = i21;
                        break;
                    case "outlinecolour":
                        i14 = i21;
                        break;
                }
            }
            if (i11 != -1) {
                return new a(i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, strArrSplit.length);
            }
            return null;
        }
    }

    static final class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Pattern f63514c = Pattern.compile("\\{([^}]*)\\}");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Pattern f63515d = Pattern.compile(p0.C("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final Pattern f63516e = Pattern.compile(p0.C("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final Pattern f63517f = Pattern.compile("\\\\an(\\d+)");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f63518a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PointF f63519b;

        private b(int i11, PointF pointF) {
            this.f63518a = i11;
            this.f63519b = pointF;
        }

        private static int a(String str) {
            Matcher matcher = f63517f.matcher(str);
            if (matcher.find()) {
                return c.e((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            }
            return -1;
        }

        public static b b(String str) {
            Matcher matcher = f63514c.matcher(str);
            PointF pointF = null;
            int i11 = -1;
            while (matcher.find()) {
                String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
                try {
                    PointF pointFC = c(str2);
                    if (pointFC != null) {
                        pointF = pointFC;
                    }
                } catch (RuntimeException unused) {
                }
                try {
                    int iA = a(str2);
                    if (iA != -1) {
                        i11 = iA;
                    }
                } catch (RuntimeException unused2) {
                }
            }
            return new b(i11, pointF);
        }

        private static PointF c(String str) {
            String strGroup;
            String strGroup2;
            Matcher matcher = f63515d.matcher(str);
            Matcher matcher2 = f63516e.matcher(str);
            boolean zFind = matcher.find();
            boolean zFind2 = matcher2.find();
            if (zFind) {
                if (zFind2) {
                    s.f("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
                }
                strGroup = matcher.group(1);
                strGroup2 = matcher.group(2);
            } else {
                if (!zFind2) {
                    return null;
                }
                strGroup = matcher2.group(1);
                strGroup2 = matcher2.group(2);
            }
            return new PointF(Float.parseFloat(((String) com.google.android.exoplayer2.util.a.e(strGroup)).trim()), Float.parseFloat(((String) com.google.android.exoplayer2.util.a.e(strGroup2)).trim()));
        }

        public static String d(String str) {
            return f63514c.matcher(str).replaceAll("");
        }
    }

    private c(String str, int i11, Integer num, Integer num2, float f11, boolean z10, boolean z11, boolean z12, boolean z13, int i12) {
        this.f63493a = str;
        this.f63494b = i11;
        this.f63495c = num;
        this.f63496d = num2;
        this.f63497e = f11;
        this.f63498f = z10;
        this.f63499g = z11;
        this.f63500h = z12;
        this.f63501i = z13;
        this.f63502j = i12;
    }

    public static c b(String str, a aVar) {
        com.google.android.exoplayer2.util.a.a(str.startsWith("Style:"));
        String[] strArrSplit = TextUtils.split(str.substring(6), ",");
        int length = strArrSplit.length;
        int i11 = aVar.f63513k;
        if (length != i11) {
            s.i("SsaStyle", p0.C("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i11), Integer.valueOf(strArrSplit.length), str));
            return null;
        }
        try {
            String strTrim = strArrSplit[aVar.f63503a].trim();
            int i12 = aVar.f63504b;
            int iE = i12 != -1 ? e(strArrSplit[i12].trim()) : -1;
            int i13 = aVar.f63505c;
            Integer numH = i13 != -1 ? h(strArrSplit[i13].trim()) : null;
            int i14 = aVar.f63506d;
            Integer numH2 = i14 != -1 ? h(strArrSplit[i14].trim()) : null;
            int i15 = aVar.f63507e;
            float fI = i15 != -1 ? i(strArrSplit[i15].trim()) : -3.4028235E38f;
            int i16 = aVar.f63508f;
            boolean z10 = i16 != -1 && f(strArrSplit[i16].trim());
            int i17 = aVar.f63509g;
            boolean z11 = i17 != -1 && f(strArrSplit[i17].trim());
            int i18 = aVar.f63510h;
            boolean z12 = i18 != -1 && f(strArrSplit[i18].trim());
            int i19 = aVar.f63511i;
            boolean z13 = i19 != -1 && f(strArrSplit[i19].trim());
            int i20 = aVar.f63512j;
            return new c(strTrim, iE, numH, numH2, fI, z10, z11, z12, z13, i20 != -1 ? g(strArrSplit[i20].trim()) : -1);
        } catch (RuntimeException e11) {
            s.j("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e11);
            return null;
        }
    }

    private static boolean c(int i11) {
        switch (i11) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    private static boolean d(int i11) {
        return i11 == 1 || i11 == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int e(String str) {
        try {
            int i11 = Integer.parseInt(str.trim());
            if (c(i11)) {
                return i11;
            }
        } catch (NumberFormatException unused) {
        }
        s.i("SsaStyle", "Ignoring unknown alignment: " + str);
        return -1;
    }

    private static boolean f(String str) {
        try {
            int i11 = Integer.parseInt(str);
            return i11 == 1 || i11 == -1;
        } catch (NumberFormatException e11) {
            s.j("SsaStyle", "Failed to parse boolean value: '" + str + "'", e11);
            return false;
        }
    }

    private static int g(String str) {
        try {
            int i11 = Integer.parseInt(str.trim());
            if (d(i11)) {
                return i11;
            }
        } catch (NumberFormatException unused) {
        }
        s.i("SsaStyle", "Ignoring unknown BorderStyle: " + str);
        return -1;
    }

    public static Integer h(String str) {
        try {
            long j11 = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            com.google.android.exoplayer2.util.a.a(j11 <= 4294967295L);
            return Integer.valueOf(Color.argb(Ints.d(((j11 >> 24) & 255) ^ 255), Ints.d(j11 & 255), Ints.d((j11 >> 8) & 255), Ints.d((j11 >> 16) & 255)));
        } catch (IllegalArgumentException e11) {
            s.j("SsaStyle", "Failed to parse color expression: '" + str + "'", e11);
            return null;
        }
    }

    private static float i(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e11) {
            s.j("SsaStyle", "Failed to parse font size: '" + str + "'", e11);
            return -3.4028235E38f;
        }
    }
}
