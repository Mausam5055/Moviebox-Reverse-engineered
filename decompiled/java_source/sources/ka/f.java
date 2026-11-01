package ka;

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
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
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

/* JADX INFO: loaded from: classes4.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f66708a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f66709b = Pattern.compile("(\\S+?):(\\S+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f66710c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map f66711d;

    /* JADX INFO: Access modifiers changed from: private */
    static class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Comparator f66712c = new Comparator() { // from class: ka.g
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return f.b.e((f.b) obj, (f.b) obj2);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f66713a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f66714b;

        private b(c cVar, int i11) {
            this.f66713a = cVar;
            this.f66714b = i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(b bVar, b bVar2) {
            return Integer.compare(bVar.f66713a.f66716b, bVar2.f66713a.f66716b);
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66715a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f66716b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66717c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Set f66718d;

        private c(String str, int i11, String str2, Set set) {
            this.f66716b = i11;
            this.f66715a = str;
            this.f66717c = str2;
            this.f66718d = set;
        }

        public static c a(String str, int i11) {
            String str2;
            String strTrim = str.trim();
            com.google.android.exoplayer2.util.a.a(!strTrim.isEmpty());
            int iIndexOf = strTrim.indexOf(" ");
            if (iIndexOf == -1) {
                str2 = "";
            } else {
                String strTrim2 = strTrim.substring(iIndexOf).trim();
                strTrim = strTrim.substring(0, iIndexOf);
                str2 = strTrim2;
            }
            String[] strArrS0 = p0.S0(strTrim, "\\.");
            String str3 = strArrS0[0];
            HashSet hashSet = new HashSet();
            for (int i12 = 1; i12 < strArrS0.length; i12++) {
                hashSet.add(strArrS0[i12]);
            }
            return new c(str3, i11, str2, hashSet);
        }

        public static c b() {
            return new c("", 0, "", Collections.emptySet());
        }
    }

    private static final class d implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66719a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ka.d f66720b;

        public d(int i11, ka.d dVar) {
            this.f66719a = i11;
            this.f66720b = dVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            return Integer.compare(this.f66719a, dVar.f66719a);
        }
    }

    private static final class e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CharSequence f66723c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f66721a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f66722b = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f66724d = 2;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f66725e = -3.4028235E38f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f66726f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f66727g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f66728h = -3.4028235E38f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f66729i = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f66730j = 1.0f;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f66731k = Integer.MIN_VALUE;

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
                            s.i("WebvttCueParser", "Unknown textAlignment: " + i11);
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

        public ka.e a() {
            return new ka.e(g().a(), this.f66721a, this.f66722b);
        }

        public ba.b.C0143b g() {
            float fE = this.f66728h;
            if (fE == -3.4028235E38f) {
                fE = e(this.f66724d);
            }
            int iF = this.f66729i;
            if (iF == Integer.MIN_VALUE) {
                iF = f(this.f66724d);
            }
            ba.b.C0143b c0143bR = new ba.b.C0143b().p(c(this.f66724d)).h(b(this.f66725e, this.f66726f), this.f66726f).i(this.f66727g).k(fE).l(iF).n(Math.min(this.f66730j, d(iF, fE))).r(this.f66731k);
            CharSequence charSequence = this.f66723c;
            if (charSequence != null) {
                c0143bR.o(charSequence);
            }
            return c0143bR;
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
        f66710c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f66711d = Collections.unmodifiableMap(map2);
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set set, int i11, int i12) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Map map = f66710c;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str)).intValue()), i11, i12, 33);
            } else {
                Map map2 = f66711d;
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
                s.i("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                break;
        }
    }

    private static void c(SpannableStringBuilder spannableStringBuilder, String str, c cVar, List list, List list2) {
        int i11 = i(list2, str, cVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, b.f66712c);
        int i12 = cVar.f66716b;
        int length = 0;
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            if ("rt".equals(((b) arrayList.get(i13)).f66713a.f66715a)) {
                b bVar = (b) arrayList.get(i13);
                int iG = g(i(list2, str, bVar.f66713a), i11, 1);
                int i14 = bVar.f66713a.f66716b - length;
                int i15 = bVar.f66714b - length;
                CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i14, i15);
                spannableStringBuilder.delete(i14, i15);
                spannableStringBuilder.setSpan(new fa.c(charSequenceSubSequence.toString(), iG), i12, i14, 33);
                length += charSequenceSubSequence.length();
                i12 = i14;
            }
        }
    }

    private static void d(String str, c cVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        int i11 = cVar.f66716b;
        int length = spannableStringBuilder.length();
        String str2 = cVar.f66715a;
        str2.hashCode();
        switch (str2) {
            case "":
            case "v":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i11, length, 33);
                break;
            case "c":
                a(spannableStringBuilder, cVar.f66718d, i11, length);
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i11, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i11, length, 33);
                break;
            case "ruby":
                c(spannableStringBuilder, str, cVar, list, list2);
                break;
            default:
                return;
        }
        List listH = h(list2, str, cVar);
        for (int i12 = 0; i12 < listH.size(); i12++) {
            e(spannableStringBuilder, ((d) listH.get(i12)).f66720b, i11, length);
        }
    }

    private static void e(SpannableStringBuilder spannableStringBuilder, ka.d dVar, int i11, int i12) {
        if (dVar == null) {
            return;
        }
        if (dVar.i() != -1) {
            fa.d.a(spannableStringBuilder, new StyleSpan(dVar.i()), i11, i12, 33);
        }
        if (dVar.l()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i11, i12, 33);
        }
        if (dVar.m()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i11, i12, 33);
        }
        if (dVar.k()) {
            fa.d.a(spannableStringBuilder, new ForegroundColorSpan(dVar.c()), i11, i12, 33);
        }
        if (dVar.j()) {
            fa.d.a(spannableStringBuilder, new BackgroundColorSpan(dVar.a()), i11, i12, 33);
        }
        if (dVar.d() != null) {
            fa.d.a(spannableStringBuilder, new TypefaceSpan(dVar.d()), i11, i12, 33);
        }
        int iF = dVar.f();
        if (iF == 1) {
            fa.d.a(spannableStringBuilder, new AbsoluteSizeSpan((int) dVar.e(), true), i11, i12, 33);
        } else if (iF == 2) {
            fa.d.a(spannableStringBuilder, new RelativeSizeSpan(dVar.e()), i11, i12, 33);
        } else if (iF == 3) {
            fa.d.a(spannableStringBuilder, new RelativeSizeSpan(dVar.e() / 100.0f), i11, i12, 33);
        }
        if (dVar.b()) {
            spannableStringBuilder.setSpan(new fa.a(), i11, i12, 33);
        }
    }

    private static int f(String str, int i11) {
        int iIndexOf = str.indexOf(62, i11);
        return iIndexOf == -1 ? str.length() : iIndexOf + 1;
    }

    private static int g(int i11, int i12, int i13) {
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

    private static List h(List list, String str, c cVar) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            ka.d dVar = (ka.d) list.get(i11);
            int iH = dVar.h(str, cVar.f66715a, cVar.f66718d, cVar.f66717c);
            if (iH > 0) {
                arrayList.add(new d(iH, dVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static int i(List list, String str, c cVar) {
        List listH = h(list, str, cVar);
        for (int i11 = 0; i11 < listH.size(); i11++) {
            ka.d dVar = ((d) listH.get(i11)).f66720b;
            if (dVar.g() != -1) {
                return dVar.g();
            }
        }
        return -1;
    }

    private static String j(String str) {
        String strTrim = str.trim();
        com.google.android.exoplayer2.util.a.a(!strTrim.isEmpty());
        return p0.T0(strTrim, "[ \\.]")[0];
    }

    private static boolean k(String str) {
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

    static ba.b l(CharSequence charSequence) {
        e eVar = new e();
        eVar.f66723c = charSequence;
        return eVar.g().a();
    }

    public static ka.e m(d0 d0Var, List list) {
        String strP = d0Var.p();
        if (strP == null) {
            return null;
        }
        Pattern pattern = f66708a;
        Matcher matcher = pattern.matcher(strP);
        if (matcher.matches()) {
            return n(null, matcher, d0Var, list);
        }
        String strP2 = d0Var.p();
        if (strP2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(strP2);
        if (matcher2.matches()) {
            return n(strP.trim(), matcher2, d0Var, list);
        }
        return null;
    }

    private static ka.e n(String str, Matcher matcher, d0 d0Var, List list) {
        e eVar = new e();
        try {
            eVar.f66721a = i.d((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            eVar.f66722b = i.d((String) com.google.android.exoplayer2.util.a.e(matcher.group(2)));
            p((String) com.google.android.exoplayer2.util.a.e(matcher.group(3)), eVar);
            StringBuilder sb2 = new StringBuilder();
            String strP = d0Var.p();
            while (!TextUtils.isEmpty(strP)) {
                if (sb2.length() > 0) {
                    sb2.append("\n");
                }
                sb2.append(strP.trim());
                strP = d0Var.p();
            }
            eVar.f66723c = q(str, sb2.toString(), list);
            return eVar.a();
        } catch (NumberFormatException unused) {
            s.i("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    static ba.b.C0143b o(String str) {
        e eVar = new e();
        p(str, eVar);
        return eVar.g();
    }

    private static void p(String str, e eVar) {
        Matcher matcher = f66709b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
            String str3 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    s(str3, eVar);
                } else if ("align".equals(str2)) {
                    eVar.f66724d = v(str3);
                } else if (RequestParameters.POSITION.equals(str2)) {
                    u(str3, eVar);
                } else if ("size".equals(str2)) {
                    eVar.f66730j = i.c(str3);
                } else if ("vertical".equals(str2)) {
                    eVar.f66731k = w(str3);
                } else {
                    s.i("WebvttCueParser", "Unknown cue setting " + str2 + ":" + str3);
                }
            } catch (NumberFormatException unused) {
                s.i("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    static SpannedString q(String str, String str2, List list) {
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
                int iF = i11 + 1;
                if (iF < str2.length()) {
                    boolean z10 = str2.charAt(iF) == '/';
                    iF = f(str2, iF);
                    int i12 = iF - 2;
                    boolean z11 = str2.charAt(i12) == '/';
                    int i13 = i11 + (z10 ? 2 : 1);
                    if (!z11) {
                        i12 = iF - 1;
                    }
                    String strSubstring = str2.substring(i13, i12);
                    if (!strSubstring.trim().isEmpty()) {
                        String strJ = j(strSubstring);
                        if (k(strJ)) {
                            if (z10) {
                                while (!arrayDeque.isEmpty()) {
                                    c cVar = (c) arrayDeque.pop();
                                    d(str, cVar, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new b(cVar, spannableStringBuilder.length()));
                                    }
                                    if (cVar.f66715a.equals(strJ)) {
                                        break;
                                    }
                                }
                            } else if (!z11) {
                                arrayDeque.push(c.a(strSubstring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i11 = iF;
            }
        }
        while (!arrayDeque.isEmpty()) {
            d(str, (c) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        d(str, c.b(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    private static int r(String str) {
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
                s.i("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void s(String str, e eVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            eVar.f66727g = r(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            eVar.f66725e = i.c(str);
            eVar.f66726f = 0;
        } else {
            eVar.f66725e = Integer.parseInt(str);
            eVar.f66726f = 1;
        }
    }

    private static int t(String str) {
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
                s.i("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void u(String str, e eVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            eVar.f66729i = t(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        eVar.f66728h = i.c(str);
    }

    private static int v(String str) {
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
                s.i("WebvttCueParser", "Invalid alignment value: " + str);
                return 2;
        }
    }

    private static int w(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        s.i("WebvttCueParser", "Invalid 'vertical' value: " + str);
        return Integer.MIN_VALUE;
    }
}
