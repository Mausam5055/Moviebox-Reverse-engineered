package ia;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes4.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f65106c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f65107d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f65108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final g f65109f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String[] f65110g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f65111h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f65112i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d f65113j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final HashMap f65114k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final HashMap f65115l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private List f65116m;

    private d(String str, String str2, long j11, long j12, g gVar, String[] strArr, String str3, String str4, d dVar) {
        this.f65104a = str;
        this.f65105b = str2;
        this.f65112i = str4;
        this.f65109f = gVar;
        this.f65110g = strArr;
        this.f65106c = str2 != null;
        this.f65107d = j11;
        this.f65108e = j12;
        this.f65111h = (String) com.google.android.exoplayer2.util.a.e(str3);
        this.f65113j = dVar;
        this.f65114k = new HashMap();
        this.f65115l = new HashMap();
    }

    private void b(Map map, ba.b.C0143b c0143b, int i11, int i12, int i13) {
        g gVarF = f.f(this.f65109f, this.f65110g, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c0143b.e();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            c0143b.o(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (gVarF != null) {
            f.a(spannableStringBuilder2, i11, i12, gVarF, this.f65113j, map, i13);
            if (TtmlNode.TAG_P.equals(this.f65104a)) {
                if (gVarF.k() != Float.MAX_VALUE) {
                    c0143b.m((gVarF.k() * (-90.0f)) / 100.0f);
                }
                if (gVarF.m() != null) {
                    c0143b.p(gVarF.m());
                }
                if (gVarF.h() != null) {
                    c0143b.j(gVarF.h());
                }
            }
        }
    }

    public static d c(String str, long j11, long j12, g gVar, String[] strArr, String str2, String str3, d dVar) {
        return new d(str, null, j11, j12, gVar, strArr, str2, str3, dVar);
    }

    public static d d(String str) {
        return new d(null, f.b(str), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null, null);
    }

    private static void e(SpannableStringBuilder spannableStringBuilder) {
        for (a aVar : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar), spannableStringBuilder.getSpanEnd(aVar), "");
        }
        for (int i11 = 0; i11 < spannableStringBuilder.length(); i11++) {
            if (spannableStringBuilder.charAt(i11) == ' ') {
                int i12 = i11 + 1;
                int i13 = i12;
                while (i13 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i13) == ' ') {
                    i13++;
                }
                int i14 = i13 - i12;
                if (i14 > 0) {
                    spannableStringBuilder.delete(i11, i14 + i11);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i15 = 0; i15 < spannableStringBuilder.length() - 1; i15++) {
            if (spannableStringBuilder.charAt(i15) == '\n') {
                int i16 = i15 + 1;
                if (spannableStringBuilder.charAt(i16) == ' ') {
                    spannableStringBuilder.delete(i16, i15 + 2);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i17 = 0; i17 < spannableStringBuilder.length() - 1; i17++) {
            if (spannableStringBuilder.charAt(i17) == ' ') {
                int i18 = i17 + 1;
                if (spannableStringBuilder.charAt(i18) == '\n') {
                    spannableStringBuilder.delete(i17, i18);
                }
            }
        }
        if (spannableStringBuilder.length() <= 0 || spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
            return;
        }
        spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
    }

    private void i(TreeSet treeSet, boolean z10) {
        boolean zEquals = TtmlNode.TAG_P.equals(this.f65104a);
        boolean zEquals2 = TtmlNode.TAG_DIV.equals(this.f65104a);
        if (z10 || zEquals || (zEquals2 && this.f65112i != null)) {
            long j11 = this.f65107d;
            if (j11 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j11));
            }
            long j12 = this.f65108e;
            if (j12 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j12));
            }
        }
        if (this.f65116m == null) {
            return;
        }
        for (int i11 = 0; i11 < this.f65116m.size(); i11++) {
            ((d) this.f65116m.get(i11)).i(treeSet, z10 || zEquals);
        }
    }

    private static SpannableStringBuilder k(String str, Map map) {
        if (!map.containsKey(str)) {
            ba.b.C0143b c0143b = new ba.b.C0143b();
            c0143b.o(new SpannableStringBuilder());
            map.put(str, c0143b);
        }
        return (SpannableStringBuilder) com.google.android.exoplayer2.util.a.e(((ba.b.C0143b) map.get(str)).e());
    }

    private void n(long j11, String str, List list) {
        if (!"".equals(this.f65111h)) {
            str = this.f65111h;
        }
        if (m(j11) && TtmlNode.TAG_DIV.equals(this.f65104a) && this.f65112i != null) {
            list.add(new Pair(str, this.f65112i));
            return;
        }
        for (int i11 = 0; i11 < g(); i11++) {
            f(i11).n(j11, str, list);
        }
    }

    private void o(long j11, Map map, Map map2, String str, Map map3) {
        int i11;
        if (m(j11)) {
            String str2 = "".equals(this.f65111h) ? str : this.f65111h;
            Iterator it = this.f65115l.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str3 = (String) entry.getKey();
                int iIntValue = this.f65114k.containsKey(str3) ? ((Integer) this.f65114k.get(str3)).intValue() : 0;
                int iIntValue2 = ((Integer) entry.getValue()).intValue();
                if (iIntValue != iIntValue2) {
                    b(map, (ba.b.C0143b) com.google.android.exoplayer2.util.a.e((ba.b.C0143b) map3.get(str3)), iIntValue, iIntValue2, ((e) com.google.android.exoplayer2.util.a.e((e) map2.get(str2))).f65126j);
                }
            }
            for (i11 = 0; i11 < g(); i11++) {
                f(i11).o(j11, map, map2, str2, map3);
            }
        }
    }

    private void p(long j11, boolean z10, String str, Map map) {
        this.f65114k.clear();
        this.f65115l.clear();
        if (TtmlNode.TAG_METADATA.equals(this.f65104a)) {
            return;
        }
        if (!"".equals(this.f65111h)) {
            str = this.f65111h;
        }
        if (this.f65106c && z10) {
            k(str, map).append((CharSequence) com.google.android.exoplayer2.util.a.e(this.f65105b));
            return;
        }
        if (TtmlNode.TAG_BR.equals(this.f65104a) && z10) {
            k(str, map).append('\n');
            return;
        }
        if (m(j11)) {
            for (Map.Entry entry : map.entrySet()) {
                this.f65114k.put((String) entry.getKey(), Integer.valueOf(((CharSequence) com.google.android.exoplayer2.util.a.e(((ba.b.C0143b) entry.getValue()).e())).length()));
            }
            boolean zEquals = TtmlNode.TAG_P.equals(this.f65104a);
            for (int i11 = 0; i11 < g(); i11++) {
                f(i11).p(j11, z10 || zEquals, str, map);
            }
            if (zEquals) {
                f.c(k(str, map));
            }
            for (Map.Entry entry2 : map.entrySet()) {
                this.f65115l.put((String) entry2.getKey(), Integer.valueOf(((CharSequence) com.google.android.exoplayer2.util.a.e(((ba.b.C0143b) entry2.getValue()).e())).length()));
            }
        }
    }

    public void a(d dVar) {
        if (this.f65116m == null) {
            this.f65116m = new ArrayList();
        }
        this.f65116m.add(dVar);
    }

    public d f(int i11) {
        List list = this.f65116m;
        if (list != null) {
            return (d) list.get(i11);
        }
        throw new IndexOutOfBoundsException();
    }

    public int g() {
        List list = this.f65116m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List h(long j11, Map map, Map map2, Map map3) {
        List<Pair> arrayList = new ArrayList();
        n(j11, this.f65111h, arrayList);
        TreeMap treeMap = new TreeMap();
        p(j11, false, this.f65111h, treeMap);
        o(j11, map, map2, this.f65111h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = (String) map3.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                e eVar = (e) com.google.android.exoplayer2.util.a.e((e) map2.get(pair.first));
                arrayList2.add(new ba.b.C0143b().f(bitmapDecodeByteArray).k(eVar.f65118b).l(0).h(eVar.f65119c, 0).i(eVar.f65121e).n(eVar.f65122f).g(eVar.f65123g).r(eVar.f65126j).a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = (e) com.google.android.exoplayer2.util.a.e((e) map2.get(entry.getKey()));
            ba.b.C0143b c0143b = (ba.b.C0143b) entry.getValue();
            e((SpannableStringBuilder) com.google.android.exoplayer2.util.a.e(c0143b.e()));
            c0143b.h(eVar2.f65119c, eVar2.f65120d);
            c0143b.i(eVar2.f65121e);
            c0143b.k(eVar2.f65118b);
            c0143b.n(eVar2.f65122f);
            c0143b.q(eVar2.f65125i, eVar2.f65124h);
            c0143b.r(eVar2.f65126j);
            arrayList2.add(c0143b.a());
        }
        return arrayList2;
    }

    public long[] j() {
        TreeSet treeSet = new TreeSet();
        int i11 = 0;
        i(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i11] = ((Long) it.next()).longValue();
            i11++;
        }
        return jArr;
    }

    public String[] l() {
        return this.f65110g;
    }

    public boolean m(long j11) {
        long j12 = this.f65107d;
        return (j12 == C.TIME_UNSET && this.f65108e == C.TIME_UNSET) || (j12 <= j11 && this.f65108e == C.TIME_UNSET) || ((j12 == C.TIME_UNSET && j11 < this.f65108e) || (j12 <= j11 && j11 < this.f65108e));
    }
}
