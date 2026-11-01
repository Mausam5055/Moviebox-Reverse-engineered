package ga;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import ba.h;
import ba.i;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends h {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Pattern f63482t = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f63483o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final b f63484p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Map f63485q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f63486r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f63487s;

    public a() {
        this(null);
    }

    public a(List list) {
        super("SsaDecoder");
        this.f63486r = -3.4028235E38f;
        this.f63487s = -3.4028235E38f;
        if (list == null || list.isEmpty()) {
            this.f63483o = false;
            this.f63484p = null;
            return;
        }
        this.f63483o = true;
        String strD = p0.D((byte[]) list.get(0));
        com.google.android.exoplayer2.util.a.a(strD.startsWith("Format:"));
        this.f63484p = (b) com.google.android.exoplayer2.util.a.e(b.a(strD));
        C(new d0((byte[]) list.get(1)));
    }

    private void A(String str, b bVar, List list, List list2) {
        int i11;
        com.google.android.exoplayer2.util.a.a(str.startsWith("Dialogue:"));
        String[] strArrSplit = str.substring(9).split(",", bVar.f63492e);
        if (strArrSplit.length != bVar.f63492e) {
            s.i("SsaDecoder", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long jF = F(strArrSplit[bVar.f63488a]);
        if (jF == C.TIME_UNSET) {
            s.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        long jF2 = F(strArrSplit[bVar.f63489b]);
        if (jF2 == C.TIME_UNSET) {
            s.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        Map map = this.f63485q;
        c cVar = (map == null || (i11 = bVar.f63490c) == -1) ? null : (c) map.get(strArrSplit[i11].trim());
        String str2 = strArrSplit[bVar.f63491d];
        ba.b bVarZ = z(c.b.d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), cVar, c.b.b(str2), this.f63486r, this.f63487s);
        int iX = x(jF2, list2, list);
        for (int iX2 = x(jF, list2, list); iX2 < iX; iX2++) {
            ((List) list.get(iX2)).add(bVarZ);
        }
    }

    private void B(d0 d0Var, List list, List list2) {
        b bVarA = this.f63483o ? this.f63484p : null;
        while (true) {
            String strP = d0Var.p();
            if (strP == null) {
                return;
            }
            if (strP.startsWith("Format:")) {
                bVarA = b.a(strP);
            } else if (strP.startsWith("Dialogue:")) {
                if (bVarA == null) {
                    s.i("SsaDecoder", "Skipping dialogue line before complete format: " + strP);
                } else {
                    A(strP, bVarA, list, list2);
                }
            }
        }
    }

    private void C(d0 d0Var) {
        while (true) {
            String strP = d0Var.p();
            if (strP == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(strP)) {
                D(d0Var);
            } else if ("[V4+ Styles]".equalsIgnoreCase(strP)) {
                this.f63485q = E(d0Var);
            } else if ("[V4 Styles]".equalsIgnoreCase(strP)) {
                s.f("SsaDecoder", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strP)) {
                return;
            }
        }
    }

    private void D(d0 d0Var) {
        while (true) {
            String strP = d0Var.p();
            if (strP == null) {
                return;
            }
            if (d0Var.a() != 0 && d0Var.h() == 91) {
                return;
            }
            String[] strArrSplit = strP.split(":");
            if (strArrSplit.length == 2) {
                String strE = com.google.common.base.a.e(strArrSplit[0].trim());
                strE.hashCode();
                if (strE.equals("playresx")) {
                    this.f63486r = Float.parseFloat(strArrSplit[1].trim());
                } else if (strE.equals("playresy")) {
                    try {
                        this.f63487s = Float.parseFloat(strArrSplit[1].trim());
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
    }

    private static Map E(d0 d0Var) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVarA = null;
        while (true) {
            String strP = d0Var.p();
            if (strP == null || (d0Var.a() != 0 && d0Var.h() == 91)) {
                break;
            }
            if (strP.startsWith("Format:")) {
                aVarA = c.a.a(strP);
            } else if (strP.startsWith("Style:")) {
                if (aVarA == null) {
                    s.i("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: " + strP);
                } else {
                    c cVarB = c.b(strP, aVarA);
                    if (cVarB != null) {
                        linkedHashMap.put(cVarB.f63493a, cVarB);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static long F(String str) {
        Matcher matcher = f63482t.matcher(str.trim());
        return !matcher.matches() ? C.TIME_UNSET : (Long.parseLong((String) p0.j(matcher.group(1))) * 3600000000L) + (Long.parseLong((String) p0.j(matcher.group(2))) * 60000000) + (Long.parseLong((String) p0.j(matcher.group(3))) * 1000000) + (Long.parseLong((String) p0.j(matcher.group(4))) * 10000);
    }

    private static int G(int i11) {
        switch (i11) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                s.i("SsaDecoder", "Unknown alignment: " + i11);
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

    private static int H(int i11) {
        switch (i11) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                s.i("SsaDecoder", "Unknown alignment: " + i11);
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

    private static Layout.Alignment I(int i11) {
        switch (i11) {
            case -1:
                return null;
            case 0:
            default:
                s.i("SsaDecoder", "Unknown alignment: " + i11);
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

    private static int x(long j11, List list, List list2) {
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

    private static float y(int i11) {
        if (i11 == 0) {
            return 0.05f;
        }
        if (i11 != 1) {
            return i11 != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    private static ba.b z(String str, c cVar, c.b bVar, float f11, float f12) {
        SpannableString spannableString = new SpannableString(str);
        ba.b.C0143b c0143bO = new ba.b.C0143b().o(spannableString);
        if (cVar != null) {
            if (cVar.f63495c != null) {
                spannableString.setSpan(new ForegroundColorSpan(cVar.f63495c.intValue()), 0, spannableString.length(), 33);
            }
            if (cVar.f63502j == 3 && cVar.f63496d != null) {
                spannableString.setSpan(new BackgroundColorSpan(cVar.f63496d.intValue()), 0, spannableString.length(), 33);
            }
            float f13 = cVar.f63497e;
            if (f13 != -3.4028235E38f && f12 != -3.4028235E38f) {
                c0143bO.q(f13 / f12, 1);
            }
            boolean z10 = cVar.f63498f;
            if (z10 && cVar.f63499g) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z10) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (cVar.f63499g) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (cVar.f63500h) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (cVar.f63501i) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i11 = bVar.f63518a;
        if (i11 == -1) {
            i11 = cVar != null ? cVar.f63494b : -1;
        }
        c0143bO.p(I(i11)).l(H(i11)).i(G(i11));
        PointF pointF = bVar.f63519b;
        if (pointF == null || f12 == -3.4028235E38f || f11 == -3.4028235E38f) {
            c0143bO.k(y(c0143bO.d()));
            c0143bO.h(y(c0143bO.c()), 0);
        } else {
            c0143bO.k(pointF.x / f11);
            c0143bO.h(bVar.f63519b.y / f12, 0);
        }
        return c0143bO.a();
    }

    @Override // ba.h
    protected i v(byte[] bArr, int i11, boolean z10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        d0 d0Var = new d0(bArr, i11);
        if (!this.f63483o) {
            C(d0Var);
        }
        B(d0Var, arrayList, arrayList2);
        return new d(arrayList, arrayList2);
    }
}
