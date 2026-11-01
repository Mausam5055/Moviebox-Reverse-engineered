package m3;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import androidx.media3.common.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i3.e;
import i3.k;
import i3.r;
import i3.s;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements s {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f69128g = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f69129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f69130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j0 f69131c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map f69132d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f69133e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f69134f;

    public b() {
        this(null);
    }

    public b(List list) {
        this.f69133e = -3.4028235E38f;
        this.f69134f = -3.4028235E38f;
        this.f69131c = new j0();
        if (list == null || list.isEmpty()) {
            this.f69129a = false;
            this.f69130b = null;
            return;
        }
        this.f69129a = true;
        String strH = a1.H((byte[]) list.get(0));
        androidx.media3.common.util.a.a(strH.startsWith("Format:"));
        this.f69130b = (a) androidx.media3.common.util.a.e(a.a(strH));
        j(new j0((byte[]) list.get(1)), StandardCharsets.UTF_8);
    }

    private static int d(long j11, List list, List list2) {
        int i11;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                i11 = 0;
                break;
            }
            if (((Long) list.get(size)).longValue() == j11) {
                return size;
            }
            if (((Long) list.get(size)).longValue() < j11) {
                i11 = size + 1;
                break;
            }
            size--;
        }
        list.add(i11, Long.valueOf(j11));
        list2.add(i11, i11 == 0 ? new ArrayList() : new ArrayList((Collection) list2.get(i11 - 1)));
        return i11;
    }

    private static float e(int i11) {
        if (i11 == 0) {
            return 0.05f;
        }
        if (i11 != 1) {
            return i11 != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    private static u1.a f(String str, c cVar, c.b bVar, float f11, float f12) {
        SpannableString spannableString = new SpannableString(str);
        u1.a.b bVarO = new u1.a.b().o(spannableString);
        if (cVar != null) {
            if (cVar.f69137c != null) {
                spannableString.setSpan(new ForegroundColorSpan(cVar.f69137c.intValue()), 0, spannableString.length(), 33);
            }
            if (cVar.f69144j == 3 && cVar.f69138d != null) {
                spannableString.setSpan(new BackgroundColorSpan(cVar.f69138d.intValue()), 0, spannableString.length(), 33);
            }
            float f13 = cVar.f69139e;
            if (f13 != -3.4028235E38f && f12 != -3.4028235E38f) {
                bVarO.q(f13 / f12, 1);
            }
            boolean z10 = cVar.f69140f;
            if (z10 && cVar.f69141g) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z10) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (cVar.f69141g) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (cVar.f69142h) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (cVar.f69143i) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i11 = bVar.f69160a;
        if (i11 == -1) {
            i11 = cVar != null ? cVar.f69136b : -1;
        }
        bVarO.p(p(i11)).l(o(i11)).i(n(i11));
        PointF pointF = bVar.f69161b;
        if (pointF == null || f12 == -3.4028235E38f || f11 == -3.4028235E38f) {
            bVarO.k(e(bVarO.d()));
            bVarO.h(e(bVarO.c()), 0);
        } else {
            bVarO.k(pointF.x / f11);
            bVarO.h(bVar.f69161b.y / f12, 0);
        }
        return bVarO.a();
    }

    private Charset g(j0 j0Var) {
        Charset charsetR = j0Var.R();
        return charsetR != null ? charsetR : StandardCharsets.UTF_8;
    }

    private void h(String str, a aVar, List list, List list2) {
        int i11;
        androidx.media3.common.util.a.a(str.startsWith("Dialogue:"));
        String[] strArrSplit = str.substring(9).split(",", aVar.f69127e);
        if (strArrSplit.length != aVar.f69127e) {
            u.h("SsaParser", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long jM = m(strArrSplit[aVar.f69123a]);
        if (jM == C.TIME_UNSET) {
            u.h("SsaParser", "Skipping invalid timing: " + str);
            return;
        }
        long jM2 = m(strArrSplit[aVar.f69124b]);
        if (jM2 == C.TIME_UNSET || jM2 <= jM) {
            u.h("SsaParser", "Skipping invalid timing: " + str);
            return;
        }
        Map map = this.f69132d;
        c cVar = (map == null || (i11 = aVar.f69125c) == -1) ? null : (c) map.get(strArrSplit[i11].trim());
        String str2 = strArrSplit[aVar.f69126d];
        u1.a aVarF = f(c.b.d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), cVar, c.b.b(str2), this.f69133e, this.f69134f);
        int iD = d(jM2, list2, list);
        for (int iD2 = d(jM, list2, list); iD2 < iD; iD2++) {
            ((List) list.get(iD2)).add(aVarF);
        }
    }

    private void i(j0 j0Var, List list, List list2, Charset charset) {
        a aVarA = this.f69129a ? this.f69130b : null;
        while (true) {
            String strT = j0Var.t(charset);
            if (strT == null) {
                return;
            }
            if (strT.startsWith("Format:")) {
                aVarA = a.a(strT);
            } else if (strT.startsWith("Dialogue:")) {
                if (aVarA == null) {
                    u.h("SsaParser", "Skipping dialogue line before complete format: " + strT);
                } else {
                    h(strT, aVarA, list, list2);
                }
            }
        }
    }

    private void j(j0 j0Var, Charset charset) {
        while (true) {
            String strT = j0Var.t(charset);
            if (strT == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(strT)) {
                k(j0Var, charset);
            } else if ("[V4+ Styles]".equalsIgnoreCase(strT)) {
                this.f69132d = l(j0Var, charset);
            } else if ("[V4 Styles]".equalsIgnoreCase(strT)) {
                u.f("SsaParser", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strT)) {
                return;
            }
        }
    }

    private void k(j0 j0Var, Charset charset) {
        while (true) {
            String strT = j0Var.t(charset);
            if (strT == null) {
                return;
            }
            if (j0Var.a() != 0 && j0Var.h(charset) == '[') {
                return;
            }
            String[] strArrSplit = strT.split(":");
            if (strArrSplit.length == 2) {
                String strE = com.google.common.base.a.e(strArrSplit[0].trim());
                strE.hashCode();
                if (strE.equals("playresx")) {
                    this.f69133e = Float.parseFloat(strArrSplit[1].trim());
                } else if (strE.equals("playresy")) {
                    try {
                        this.f69134f = Float.parseFloat(strArrSplit[1].trim());
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
    }

    private static Map l(j0 j0Var, Charset charset) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVarA = null;
        while (true) {
            String strT = j0Var.t(charset);
            if (strT == null || (j0Var.a() != 0 && j0Var.h(charset) == '[')) {
                break;
            }
            if (strT.startsWith("Format:")) {
                aVarA = c.a.a(strT);
            } else if (strT.startsWith("Style:")) {
                if (aVarA == null) {
                    u.h("SsaParser", "Skipping 'Style:' line before 'Format:' line: " + strT);
                } else {
                    c cVarB = c.b(strT, aVarA);
                    if (cVarB != null) {
                        linkedHashMap.put(cVarB.f69135a, cVarB);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static long m(String str) {
        Matcher matcher = f69128g.matcher(str.trim());
        return !matcher.matches() ? C.TIME_UNSET : (Long.parseLong((String) a1.i(matcher.group(1))) * 3600000000L) + (Long.parseLong((String) a1.i(matcher.group(2))) * 60000000) + (Long.parseLong((String) a1.i(matcher.group(3))) * 1000000) + (Long.parseLong((String) a1.i(matcher.group(4))) * 10000);
    }

    private static int n(int i11) {
        switch (i11) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                u.h("SsaParser", "Unknown alignment: " + i11);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    private static int o(int i11) {
        switch (i11) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                u.h("SsaParser", "Unknown alignment: " + i11);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    private static Layout.Alignment p(int i11) {
        switch (i11) {
            case -1:
                return null;
            case 0:
            default:
                u.h("SsaParser", "Unknown alignment: " + i11);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    @Override // i3.s
    public void a(byte[] bArr, int i11, int i12, s.b bVar, m mVar) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        this.f69131c.U(bArr, i11 + i12);
        this.f69131c.W(i11);
        Charset charsetG = g(this.f69131c);
        if (!this.f69129a) {
            j(this.f69131c, charsetG);
        }
        i(this.f69131c, arrayList3, arrayList4, charsetG);
        ArrayList arrayList5 = (bVar.f64925a == C.TIME_UNSET || !bVar.f64926b) ? null : new ArrayList();
        int i13 = 0;
        while (i13 < arrayList3.size()) {
            List list = (List) arrayList3.get(i13);
            if (list.isEmpty() && i13 != 0) {
                arrayList = arrayList3;
                arrayList2 = arrayList4;
            } else {
                if (i13 == arrayList3.size() - 1) {
                    throw new IllegalStateException();
                }
                long jLongValue = ((Long) arrayList4.get(i13)).longValue();
                long jLongValue2 = ((Long) arrayList4.get(i13 + 1)).longValue() - ((Long) arrayList4.get(i13)).longValue();
                arrayList = arrayList3;
                arrayList2 = arrayList4;
                long j11 = bVar.f64925a;
                if (j11 == C.TIME_UNSET || jLongValue >= j11) {
                    mVar.accept(new e(list, jLongValue, jLongValue2));
                } else if (arrayList5 != null) {
                    arrayList5.add(new e(list, jLongValue, jLongValue2));
                }
            }
            i13++;
            arrayList3 = arrayList;
            arrayList4 = arrayList2;
        }
        if (arrayList5 != null) {
            Iterator it = arrayList5.iterator();
            while (it.hasNext()) {
                mVar.accept((e) it.next());
            }
        }
    }

    @Override // i3.s
    public /* synthetic */ k b(byte[] bArr, int i11, int i12) {
        return r.a(this, bArr, i11, i12);
    }

    @Override // i3.s
    public int c() {
        return 1;
    }

    @Override // i3.s
    public /* synthetic */ void reset() {
        r.b(this);
    }
}
