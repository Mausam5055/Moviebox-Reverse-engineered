package r3;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f74060a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f74061b = Pattern.compile("(\\S+?):(\\S+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f74062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map f74063d;

    /* JADX INFO: Access modifiers changed from: private */
    static class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Comparator f74064c = new Comparator() { // from class: r3.f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return e.b.e((e.b) obj, (e.b) obj2);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f74065a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f74066b;

        private b(c cVar, int i11) {
            this.f74065a = cVar;
            this.f74066b = i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(b bVar, b bVar2) {
            return Integer.compare(bVar.f74065a.f74068b, bVar2.f74065a.f74068b);
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f74067a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f74068b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f74069c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Set f74070d;

        private c(String str, int i11, String str2, Set set) {
            this.f74068b = i11;
            this.f74067a = str;
            this.f74069c = str2;
            this.f74070d = set;
        }

        public static c a(String str, int i11) {
            String str2;
            String strTrim = str.trim();
            androidx.media3.common.util.a.a(!strTrim.isEmpty());
            int iIndexOf = strTrim.indexOf(" ");
            if (iIndexOf == -1) {
                str2 = "";
            } else {
                String strTrim2 = strTrim.substring(iIndexOf).trim();
                strTrim = strTrim.substring(0, iIndexOf);
                str2 = strTrim2;
            }
            String[] strArrO1 = a1.o1(strTrim, "\\.");
            String str3 = strArrO1[0];
            HashSet hashSet = new HashSet();
            for (int i12 = 1; i12 < strArrO1.length; i12++) {
                hashSet.add(strArrO1[i12]);
            }
            return new c(str3, i11, str2, hashSet);
        }

        public static c b() {
            return new c("", 0, "", Collections.emptySet());
        }
    }

    private static final class d implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f74071a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final r3.c f74072b;

        public d(int i11, r3.c cVar) {
            this.f74071a = i11;
            this.f74072b = cVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            return Integer.compare(this.f74071a, dVar.f74071a);
        }
    }

    /* JADX INFO: renamed from: r3.e$e, reason: collision with other inner class name */
    private static final class C0900e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CharSequence f74075c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f74073a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f74074b = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f74076d = 2;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f74077e = -3.4028235E38f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f74078f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f74079g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f74080h = -3.4028235E38f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f74081i = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f74082j = 1.0f;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f74083k = Integer.MIN_VALUE;

        private static float b(float f11, int i11) {
            if (f11 != -3.4028235E38f && i11 == 0 && (f11 < 0.0f || f11 > 1.0f)) {
                return 1.0f;
            }
            if (f11 != -3.4028235E38f) {
                return f11;
            }
            return i11 == 0 ? 1.0f : -3.4028235E38f;
        }

        private static Layout.Alignment c(int i11) {
            if (i11 != 1) {
                if (i11 == 2) {
                    return Layout.Alignment.ALIGN_CENTER;
                }
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 != 5) {
                            u.h("WebvttCueParser", "Unknown textAlignment: " + i11);
                            return null;
                        }
                    }
                }
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        private static float d(int i11, float f11) {
            if (i11 == 0) {
                return 1.0f - f11;
            }
            if (i11 == 1) {
                return f11 <= 0.5f ? f11 * 2.0f : (1.0f - f11) * 2.0f;
            }
            if (i11 == 2) {
                return f11;
            }
            throw new IllegalStateException(String.valueOf(i11));
        }

        private static float e(int i11) {
            if (i11 != 4) {
                return i11 != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        private static int f(int i11) {
            if (i11 == 1) {
                return 0;
            }
            if (i11 == 3) {
                return 2;
            }
            if (i11 != 4) {
                return i11 != 5 ? 1 : 2;
            }
            return 0;
        }

        public r3.d a() {
            return new r3.d(g().a(), this.f74073a, this.f74074b);
        }

        public u1.a.b g() {
            float fE = this.f74080h;
            if (fE == -3.4028235E38f) {
                fE = e(this.f74076d);
            }
            int iF = this.f74081i;
            if (iF == Integer.MIN_VALUE) {
                iF = f(this.f74076d);
            }
            u1.a.b bVarR = new u1.a.b().p(c(this.f74076d)).h(b(this.f74077e, this.f74078f), this.f74078f).i(this.f74079g).k(fE).l(iF).n(Math.min(this.f74082j, d(iF, fE))).r(this.f74083k);
            CharSequence charSequence = this.f74075c;
            if (charSequence != null) {
                bVarR.o(charSequence);
            }
            return bVarR;
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f74062c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f74063d = Collections.unmodifiableMap(map2);
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set set, int i11, int i12) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Map map = f74062c;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str)).intValue()), i11, i12, 33);
            } else {
                Map map2 = f74063d;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str)).intValue()), i11, i12, 33);
                }
            }
        }
    }

    private static void b(String str, SpannableStringBuilder spannableStringBuilder) {
        str.hashCode();
        switch (str) {
            case "gt":
                spannableStringBuilder.append('>');
                break;
            case "lt":
                spannableStringBuilder.append('<');
                break;
            case "amp":
                spannableStringBuilder.append('&');
                break;
            case "nbsp":
                spannableStringBuilder.append(' ');
                break;
            default:
                u.h("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                break;
        }
    }

    private static void c(SpannableStringBuilder spannableStringBuilder, String str, c cVar, List list, List list2) {
        int iJ = j(list2, str, cVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, b.f74064c);
        int i11 = cVar.f74068b;
        int length = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            if ("rt".equals(((b) arrayList.get(i12)).f74065a.f74067a)) {
                b bVar = (b) arrayList.get(i12);
                int iH = h(j(list2, str, bVar.f74065a), iJ, 1);
                int i13 = bVar.f74065a.f74068b - length;
                int i14 = bVar.f74066b - length;
                CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i13, i14);
                spannableStringBuilder.delete(i13, i14);
                spannableStringBuilder.setSpan(new u1.f(charSequenceSubSequence.toString(), iH), i11, i13, 33);
                length += charSequenceSubSequence.length();
                i11 = i13;
            }
        }
    }

    private static void d(String str, c cVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        int i11 = cVar.f74068b;
        int length = spannableStringBuilder.length();
        String str2 = cVar.f74067a;
        str2.hashCode();
        switch (str2) {
            case "":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i11, length, 33);
                break;
            case "c":
                a(spannableStringBuilder, cVar.f74070d, i11, length);
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i11, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i11, length, 33);
                break;
            case "v":
                f(spannableStringBuilder, cVar.f74069c, i11, length);
                break;
            case "ruby":
                c(spannableStringBuilder, str, cVar, list, list2);
                break;
            default:
                return;
        }
        List listI = i(list2, str, cVar);
        for (int i12 = 0; i12 < listI.size(); i12++) {
            e(spannableStringBuilder, ((d) listI.get(i12)).f74072b, i11, length);
        }
    }

    private static void e(SpannableStringBuilder spannableStringBuilder, r3.c cVar, int i11, int i12) {
        if (cVar == null) {
            return;
        }
        if (cVar.i() != -1) {
            u1.g.b(spannableStringBuilder, new StyleSpan(cVar.i()), i11, i12, 33);
        }
        if (cVar.l()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i11, i12, 33);
        }
        if (cVar.m()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i11, i12, 33);
        }
        if (cVar.k()) {
            u1.g.b(spannableStringBuilder, new ForegroundColorSpan(cVar.c()), i11, i12, 33);
        }
        if (cVar.j()) {
            u1.g.b(spannableStringBuilder, new BackgroundColorSpan(cVar.a()), i11, i12, 33);
        }
        if (cVar.d() != null) {
            u1.g.b(spannableStringBuilder, new TypefaceSpan(cVar.d()), i11, i12, 33);
        }
        int iF = cVar.f();
        if (iF == 1) {
            u1.g.b(spannableStringBuilder, new AbsoluteSizeSpan((int) cVar.e(), true), i11, i12, 33);
        } else if (iF == 2) {
            u1.g.b(spannableStringBuilder, new RelativeSizeSpan(cVar.e()), i11, i12, 33);
        } else if (iF == 3) {
            u1.g.b(spannableStringBuilder, new RelativeSizeSpan(cVar.e() / 100.0f), i11, i12, 33);
        }
        if (cVar.b()) {
            spannableStringBuilder.setSpan(new u1.d(), i11, i12, 33);
        }
    }

    private static void f(SpannableStringBuilder spannableStringBuilder, String str, int i11, int i12) {
        spannableStringBuilder.setSpan(new u1.i(str), i11, i12, 33);
    }

    private static int g(String str, int i11) {
        int iIndexOf = str.indexOf(62, i11);
        return iIndexOf == -1 ? str.length() : iIndexOf + 1;
    }

    private static int h(int i11, int i12, int i13) {
        if (i11 != -1) {
            return i11;
        }
        if (i12 != -1) {
            return i12;
        }
        if (i13 != -1) {
            return i13;
        }
        throw new IllegalArgumentException();
    }

    private static List i(List list, String str, c cVar) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            r3.c cVar2 = (r3.c) list.get(i11);
            int iH = cVar2.h(str, cVar.f74067a, cVar.f74070d, cVar.f74069c);
            if (iH > 0) {
                arrayList.add(new d(iH, cVar2));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static int j(List list, String str, c cVar) {
        List listI = i(list, str, cVar);
        for (int i11 = 0; i11 < listI.size(); i11++) {
            r3.c cVar2 = ((d) listI.get(i11)).f74072b;
            if (cVar2.g() != -1) {
                return cVar2.g();
            }
        }
        return -1;
    }

    private static String k(String str) {
        String strTrim = str.trim();
        androidx.media3.common.util.a.a(!strTrim.isEmpty());
        return a1.p1(strTrim, "[ \\.]")[0];
    }

    private static boolean l(String str) {
        str.hashCode();
        switch (str) {
            case "b":
            case "c":
            case "i":
            case "u":
            case "v":
            case "rt":
            case "lang":
            case "ruby":
                return true;
            default:
                return false;
        }
    }

    public static u1.a m(CharSequence charSequence) {
        C0900e c0900e = new C0900e();
        c0900e.f74075c = charSequence;
        return c0900e.g().a();
    }

    public static r3.d n(j0 j0Var, List list) {
        String strS = j0Var.s();
        if (strS == null) {
            return null;
        }
        Pattern pattern = f74060a;
        Matcher matcher = pattern.matcher(strS);
        if (matcher.matches()) {
            return o(null, matcher, j0Var, list);
        }
        String strS2 = j0Var.s();
        if (strS2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(strS2);
        if (matcher2.matches()) {
            return o(strS.trim(), matcher2, j0Var, list);
        }
        return null;
    }

    private static r3.d o(String str, Matcher matcher, j0 j0Var, List list) {
        C0900e c0900e = new C0900e();
        try {
            c0900e.f74073a = h.d((String) androidx.media3.common.util.a.e(matcher.group(1)));
            c0900e.f74074b = h.d((String) androidx.media3.common.util.a.e(matcher.group(2)));
            q((String) androidx.media3.common.util.a.e(matcher.group(3)), c0900e);
            StringBuilder sb2 = new StringBuilder();
            String strS = j0Var.s();
            while (!TextUtils.isEmpty(strS)) {
                if (sb2.length() > 0) {
                    sb2.append("\n");
                }
                sb2.append(strS.trim());
                strS = j0Var.s();
            }
            c0900e.f74075c = r(str, sb2.toString(), list);
            return c0900e.a();
        } catch (IllegalArgumentException unused) {
            u.h("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    static u1.a.b p(String str) {
        C0900e c0900e = new C0900e();
        q(str, c0900e);
        return c0900e.g();
    }

    private static void q(String str, C0900e c0900e) {
        Matcher matcher = f74061b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) androidx.media3.common.util.a.e(matcher.group(1));
            String str3 = (String) androidx.media3.common.util.a.e(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    t(str3, c0900e);
                } else if ("align".equals(str2)) {
                    c0900e.f74076d = w(str3);
                } else if (RequestParameters.POSITION.equals(str2)) {
                    v(str3, c0900e);
                } else if ("size".equals(str2)) {
                    c0900e.f74082j = h.c(str3);
                } else if ("vertical".equals(str2)) {
                    c0900e.f74083k = x(str3);
                } else {
                    u.h("WebvttCueParser", "Unknown cue setting " + str2 + ":" + str3);
                }
            } catch (NumberFormatException unused) {
                u.h("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    static SpannedString r(String str, String str2, List list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < str2.length()) {
            char cCharAt = str2.charAt(i11);
            if (cCharAt == '&') {
                i11++;
                int iIndexOf = str2.indexOf(59, i11);
                int iIndexOf2 = str2.indexOf(32, i11);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    b(str2.substring(i11, iIndexOf), spannableStringBuilder);
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i11 = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i11++;
            } else {
                int iG = i11 + 1;
                if (iG < str2.length()) {
                    boolean z10 = str2.charAt(iG) == '/';
                    iG = g(str2, iG);
                    int i12 = iG - 2;
                    boolean z11 = str2.charAt(i12) == '/';
                    int i13 = i11 + (z10 ? 2 : 1);
                    if (!z11) {
                        i12 = iG - 1;
                    }
                    String strSubstring = str2.substring(i13, i12);
                    if (!strSubstring.trim().isEmpty()) {
                        String strK = k(strSubstring);
                        if (l(strK)) {
                            if (z10) {
                                while (!arrayDeque.isEmpty()) {
                                    c cVar = (c) arrayDeque.pop();
                                    d(str, cVar, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new b(cVar, spannableStringBuilder.length()));
                                    }
                                    if (cVar.f74067a.equals(strK)) {
                                        break;
                                    }
                                }
                            } else if (!z11) {
                                arrayDeque.push(c.a(strSubstring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i11 = iG;
            }
        }
        while (!arrayDeque.isEmpty()) {
            d(str, (c) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        d(str, c.b(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    private static int s(String str) {
        str.hashCode();
        switch (str) {
            case "center":
            case "middle":
                return 1;
            case "end":
                return 2;
            case "start":
                return 0;
            default:
                u.h("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void t(String str, C0900e c0900e) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            c0900e.f74079g = s(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            c0900e.f74077e = h.c(str);
            c0900e.f74078f = 0;
        } else {
            c0900e.f74077e = Integer.parseInt(str);
            c0900e.f74078f = 1;
        }
    }

    private static int u(String str) {
        str.hashCode();
        switch (str) {
            case "line-left":
            case "start":
                return 0;
            case "center":
            case "middle":
                return 1;
            case "line-right":
            case "end":
                return 2;
            default:
                u.h("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void v(String str, C0900e c0900e) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            c0900e.f74081i = u(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        c0900e.f74080h = h.c(str);
    }

    private static int w(String str) {
        str.hashCode();
        switch (str) {
            case "center":
            case "middle":
                return 2;
            case "end":
                return 3;
            case "left":
                return 4;
            case "right":
                return 5;
            case "start":
                return 1;
            default:
                u.h("WebvttCueParser", "Invalid alignment value: " + str);
                return 2;
        }
    }

    private static int x(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        u.h("WebvttCueParser", "Invalid 'vertical' value: " + str);
        return Integer.MIN_VALUE;
    }
}
