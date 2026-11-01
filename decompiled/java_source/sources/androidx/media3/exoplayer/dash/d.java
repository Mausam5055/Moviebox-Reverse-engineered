package androidx.media3.exoplayer.dash;

import a2.i;
import a2.j;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.r0;
import androidx.media3.common.y;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.upstream.m;
import androidx.media3.exoplayer.upstream.p;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import h2.l;
import h2.o;
import i3.s;
import j2.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import l2.h;
import w1.n;
import y1.f4;
import z1.g;

/* JADX INFO: loaded from: classes2.dex */
public class d implements androidx.media3.exoplayer.dash.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f11435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z1.b f11436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int[] f11437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f11438d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.media3.datasource.a f11439e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f11440f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f11441g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final f.c f11442h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected final b[] f11443i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private z f11444j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private a2.c f11445k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f11446l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private IOException f11447m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f11448n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f11449o = C.TIME_UNSET;

    public static final class a implements androidx.media3.exoplayer.dash.a.InterfaceC0095a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.media3.datasource.a.InterfaceC0091a f11450a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f11451b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final h2.f.a f11452c;

        public a(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
            this(interfaceC0091a, 1);
        }

        public a(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, int i11) {
            this(new h2.d.b(), interfaceC0091a, i11);
        }

        public a(h2.f.a aVar, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, int i11) {
            this.f11452c = aVar;
            this.f11450a = interfaceC0091a;
            this.f11451b = i11;
        }

        @Override // androidx.media3.exoplayer.dash.a.InterfaceC0095a
        public r d(r rVar) {
            return this.f11452c.d(rVar);
        }

        @Override // androidx.media3.exoplayer.dash.a.InterfaceC0095a
        public androidx.media3.exoplayer.dash.a e(p pVar, a2.c cVar, z1.b bVar, int i11, int[] iArr, z zVar, int i12, long j11, boolean z10, List list, f.c cVar2, n nVar, f4 f4Var, androidx.media3.exoplayer.upstream.f fVar) {
            androidx.media3.datasource.a aVarCreateDataSource = this.f11450a.createDataSource();
            if (nVar != null) {
                aVarCreateDataSource.c(nVar);
            }
            return new d(this.f11452c, pVar, cVar, bVar, i11, iArr, zVar, i12, aVarCreateDataSource, j11, this.f11451b, z10, list, cVar2, f4Var, fVar);
        }

        @Override // androidx.media3.exoplayer.dash.a.InterfaceC0095a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public a c(boolean z10) {
            this.f11452c.c(z10);
            return this;
        }

        @Override // androidx.media3.exoplayer.dash.a.InterfaceC0095a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public a b(int i11) {
            this.f11452c.b(i11);
            return this;
        }

        @Override // androidx.media3.exoplayer.dash.a.InterfaceC0095a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public a a(s.a aVar) {
            this.f11452c.a(aVar);
            return this;
        }
    }

    protected static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final h2.f f11453a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final j f11454b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a2.b f11455c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final z1.e f11456d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long f11457e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f11458f;

        b(long j11, j jVar, a2.b bVar, h2.f fVar, long j12, z1.e eVar) {
            this.f11457e = j11;
            this.f11454b = jVar;
            this.f11455c = bVar;
            this.f11458f = j12;
            this.f11453a = fVar;
            this.f11456d = eVar;
        }

        b b(long j11, j jVar) throws BehindLiveWindowException {
            long jE;
            z1.e eVarK = this.f11454b.k();
            z1.e eVarK2 = jVar.k();
            if (eVarK == null) {
                return new b(j11, jVar, this.f11455c, this.f11453a, this.f11458f, eVarK);
            }
            if (!eVarK.g()) {
                return new b(j11, jVar, this.f11455c, this.f11453a, this.f11458f, eVarK2);
            }
            long jF = eVarK.f(j11);
            if (jF == 0) {
                return new b(j11, jVar, this.f11455c, this.f11453a, this.f11458f, eVarK2);
            }
            androidx.media3.common.util.a.i(eVarK2);
            long jH = eVarK.h();
            long timeUs = eVarK.getTimeUs(jH);
            long jE2 = jF + jH;
            long j12 = jE2 - 1;
            long timeUs2 = eVarK.getTimeUs(j12) + eVarK.a(j12, j11);
            long jH2 = eVarK2.h();
            long timeUs3 = eVarK2.getTimeUs(jH2);
            long j13 = this.f11458f;
            if (timeUs2 == timeUs3) {
                jE = j13 + (jE2 - jH2);
            } else {
                if (timeUs2 < timeUs3) {
                    throw new BehindLiveWindowException();
                }
                if (timeUs3 < timeUs) {
                    jE = j13 - (eVarK2.e(timeUs, j11) - jH);
                } else {
                    jE2 = eVarK.e(timeUs3, j11);
                    jE = j13 + (jE2 - jH2);
                }
            }
            return new b(j11, jVar, this.f11455c, this.f11453a, jE, eVarK2);
        }

        b c(z1.e eVar) {
            return new b(this.f11457e, this.f11454b, this.f11455c, this.f11453a, this.f11458f, eVar);
        }

        b d(a2.b bVar) {
            return new b(this.f11457e, this.f11454b, bVar, this.f11453a, this.f11458f, this.f11456d);
        }

        public long e(long j11) {
            return ((z1.e) androidx.media3.common.util.a.i(this.f11456d)).b(this.f11457e, j11) + this.f11458f;
        }

        public long f() {
            return ((z1.e) androidx.media3.common.util.a.i(this.f11456d)).h() + this.f11458f;
        }

        public long g(long j11) {
            return (e(j11) + ((z1.e) androidx.media3.common.util.a.i(this.f11456d)).i(this.f11457e, j11)) - 1;
        }

        public long h() {
            return ((z1.e) androidx.media3.common.util.a.i(this.f11456d)).f(this.f11457e);
        }

        public long i(long j11) {
            return k(j11) + ((z1.e) androidx.media3.common.util.a.i(this.f11456d)).a(j11 - this.f11458f, this.f11457e);
        }

        public long j(long j11) {
            return ((z1.e) androidx.media3.common.util.a.i(this.f11456d)).e(j11, this.f11457e) + this.f11458f;
        }

        public long k(long j11) {
            return ((z1.e) androidx.media3.common.util.a.i(this.f11456d)).getTimeUs(j11 - this.f11458f);
        }

        public i l(long j11) {
            return ((z1.e) androidx.media3.common.util.a.i(this.f11456d)).d(j11 - this.f11458f);
        }

        public boolean m(long j11, long j12) {
            return ((z1.e) androidx.media3.common.util.a.i(this.f11456d)).g() || j12 == C.TIME_UNSET || i(j11) <= j12;
        }
    }

    protected static final class c extends h2.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final b f11459e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f11460f;

        public c(b bVar, long j11, long j12, long j13) {
            super(j11, j12);
            this.f11459e = bVar;
            this.f11460f = j13;
        }

        @Override // h2.n
        public long a() {
            c();
            return this.f11459e.k(d());
        }

        @Override // h2.n
        public long b() {
            c();
            return this.f11459e.i(d());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(h2.f.a aVar, p pVar, a2.c cVar, z1.b bVar, int i11, int[] iArr, z zVar, int i12, androidx.media3.datasource.a aVar2, long j11, int i13, boolean z10, List list, f.c cVar2, f4 f4Var, androidx.media3.exoplayer.upstream.f fVar) {
        this.f11435a = pVar;
        this.f11445k = cVar;
        this.f11436b = bVar;
        this.f11437c = iArr;
        this.f11444j = zVar;
        this.f11438d = i12;
        this.f11439e = aVar2;
        this.f11446l = i11;
        this.f11440f = j11;
        this.f11441g = i13;
        this.f11442h = cVar2;
        long jF = cVar.f(i11);
        ArrayList arrayListL = l();
        this.f11443i = new b[zVar.length()];
        int i14 = 0;
        while (i14 < this.f11443i.length) {
            j jVar = (j) arrayListL.get(zVar.getIndexInTrackGroup(i14));
            a2.b bVarJ = bVar.j(jVar.f97c);
            int i15 = i14;
            this.f11443i[i15] = new b(jF, jVar, bVarJ == null ? (a2.b) jVar.f97c.get(0) : bVarJ, aVar.e(i12, jVar.f96b, z10, list, cVar2, f4Var), 0L, jVar.k());
            i14 = i15 + 1;
        }
    }

    private m.a h(z zVar, List list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = zVar.length();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            if (zVar.d(i12, jElapsedRealtime)) {
                i11++;
            }
        }
        int iF = z1.b.f(list);
        return new m.a(iF, iF - this.f11436b.g(list), length, i11);
    }

    private long i(long j11, long j12) {
        if (!this.f11445k.f48d || this.f11443i[0].h() == 0) {
            return C.TIME_UNSET;
        }
        return Math.max(0L, Math.min(k(j11), this.f11443i[0].i(this.f11443i[0].g(j11))) - j12);
    }

    private Pair j(long j11, i iVar, b bVar) {
        long j12 = j11 + 1;
        if (j12 >= bVar.h()) {
            return null;
        }
        i iVarL = bVar.l(j12);
        String strA = r0.a(iVar.b(bVar.f11455c.f41a), iVarL.b(bVar.f11455c.f41a));
        String str = iVarL.f91a + "-";
        if (iVarL.f92b != -1) {
            str = str + (iVarL.f91a + iVarL.f92b);
        }
        return new Pair(strA, str);
    }

    private long k(long j11) {
        a2.c cVar = this.f11445k;
        long j12 = cVar.f45a;
        return j12 == C.TIME_UNSET ? C.TIME_UNSET : j11 - a1.R0(j12 + cVar.c(this.f11446l).f82b);
    }

    private ArrayList l() {
        List list = this.f11445k.c(this.f11446l).f83c;
        ArrayList arrayList = new ArrayList();
        for (int i11 : this.f11437c) {
            arrayList.addAll(((a2.a) list.get(i11)).f37c);
        }
        return arrayList;
    }

    private long m(b bVar, h2.m mVar, long j11, long j12, long j13) {
        return mVar != null ? mVar.e() : a1.q(bVar.j(j11), j12, j13);
    }

    private b p(int i11) {
        b bVar = this.f11443i[i11];
        a2.b bVarJ = this.f11436b.j(bVar.f11454b.f97c);
        if (bVarJ == null || bVarJ.equals(bVar.f11455c)) {
            return bVar;
        }
        b bVarD = bVar.d(bVarJ);
        this.f11443i[i11] = bVarD;
        return bVarD;
    }

    @Override // h2.i
    public void a(h2.e eVar) {
        h hVarB;
        if (eVar instanceof l) {
            int iF = this.f11444j.f(((l) eVar).f64299d);
            b bVar = this.f11443i[iF];
            if (bVar.f11456d == null && (hVarB = ((h2.f) androidx.media3.common.util.a.i(bVar.f11453a)).b()) != null) {
                this.f11443i[iF] = bVar.c(new g(hVarB, bVar.f11454b.f98d));
            }
        }
        f.c cVar = this.f11442h;
        if (cVar != null) {
            cVar.j(eVar);
        }
    }

    @Override // h2.i
    public long b(long j11, c4 c4Var) {
        for (b bVar : this.f11443i) {
            if (bVar.f11456d != null) {
                long jH = bVar.h();
                if (jH != 0) {
                    long j12 = bVar.j(j11);
                    long jK = bVar.k(j12);
                    return c4Var.a(j11, jK, (jK >= j11 || (jH != -1 && j12 >= (bVar.f() + jH) - 1)) ? jK : bVar.k(j12 + 1));
                }
            }
        }
        return j11;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0153  */
    /* JADX WARN: Code duplicated, block: B:54:0x015e  */
    /* JADX WARN: Code duplicated, block: B:56:0x0161  */
    /* JADX WARN: Code duplicated, block: B:58:0x016b  */
    /* JADX WARN: Code duplicated, block: B:60:0x017a  */
    /* JADX WARN: Code duplicated, block: B:61:0x017c  */
    /* JADX WARN: Code duplicated, block: B:65:0x0192  */
    /* JADX WARN: Code duplicated, block: B:67:0x019a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v66 */
    /* JADX WARN: Type inference failed for: r10v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r13v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    @Override // h2.i
    public void c(v2 v2Var, long j11, List list, h2.g gVar) {
        boolean z10;
        boolean z11;
        ?? r11;
        ?? r12;
        long jE;
        long jG;
        ?? r13;
        ?? r14;
        long jM;
        long jI;
        ?? r15;
        int i11;
        int i12;
        h2.n[] nVarArr;
        long j12;
        long j13;
        if (this.f11447m != null) {
            return;
        }
        long j14 = v2Var.f13050a;
        long j15 = j11 - j14;
        long jR0 = a1.R0(this.f11445k.f45a) + a1.R0(this.f11445k.c(this.f11446l).f82b) + j11;
        f.c cVar = this.f11442h;
        if (cVar == null || !cVar.i(jR0)) {
            long jR1 = a1.R0(a1.h0(this.f11440f));
            long jK = k(jR1);
            h2.m mVar = list.isEmpty() ? null : (h2.m) list.get(list.size() - 1);
            int length = this.f11444j.length();
            h2.n[] nVarArr2 = new h2.n[length];
            int i13 = 0;
            while (i13 < length) {
                b bVar = this.f11443i[i13];
                if (bVar.f11456d == null) {
                    nVarArr2[i13] = h2.n.f64351a;
                    i11 = i13;
                    i12 = length;
                    nVarArr = nVarArr2;
                    j12 = j15;
                    j13 = jR1;
                } else {
                    long jE2 = bVar.e(jR1);
                    long jG2 = bVar.g(jR1);
                    i11 = i13;
                    i12 = length;
                    nVarArr = nVarArr2;
                    j12 = j15;
                    j13 = jR1;
                    long jM2 = m(bVar, mVar, j11, jE2, jG2);
                    if (jM2 < jE2) {
                        nVarArr[i11] = h2.n.f64351a;
                    } else {
                        nVarArr[i11] = new c(p(i11), jM2, jG2, jK);
                    }
                }
                i13 = i11 + 1;
                jR1 = j13;
                length = i12;
                nVarArr2 = nVarArr;
                j15 = j12;
            }
            long j16 = j15;
            long j17 = jR1;
            this.f11444j.e(j14, j16, i(j17, j14), list, nVarArr2);
            int selectedIndex = this.f11444j.getSelectedIndex();
            this.f11449o = SystemClock.elapsedRealtime();
            b bVarP = p(selectedIndex);
            h2.f fVar = bVarP.f11453a;
            if (fVar != null) {
                j jVar = bVarP.f11454b;
                i iVarM = fVar.c() == null ? jVar.m() : null;
                i iVarL = bVarP.f11456d == null ? jVar.l() : null;
                if (iVarM != null || iVarL != null) {
                    gVar.f64305a = n(bVarP, this.f11439e, this.f11444j.getSelectedFormat(), this.f11444j.getSelectionReason(), this.f11444j.getSelectionData(), iVarM, iVarL, null);
                    return;
                }
            }
            long j18 = bVarP.f11457e;
            a2.c cVar2 = this.f11445k;
            if (cVar2.f48d) {
                z10 = true;
                r11 = 1;
                if (this.f11446l == cVar2.d() - 1) {
                    z11 = true;
                }
                long j19 = C.TIME_UNSET;
                if (z11 || j18 != C.TIME_UNSET) {
                    r12 = r11;
                } else {
                    r12 = 0;
                }
                if (bVarP.h() == 0) {
                    gVar.f64306b = r12;
                    return;
                }
                jE = bVarP.e(j17);
                jG = bVarP.g(j17);
                if (z11) {
                    jI = bVarP.i(jG);
                    if (jI + (jI - bVarP.k(jG)) >= j18) {
                        r13 = r12;
                        r15 = r11;
                    } else {
                        r13 = r12;
                        r15 = 0;
                    }
                    r13 = (r12 == true ? 1 : 0) & r15;
                }
                r13 = r12;
                r14 = r13;
                jM = m(bVarP, mVar, j11, jE, jG);
                if (jM < jE) {
                    this.f11447m = new BehindLiveWindowException();
                }
                if (jM <= jG || (this.f11448n && jM >= jG)) {
                    gVar.f64306b = r14;
                }
                if (r14 != 0 && bVarP.k(jM) >= j18) {
                    gVar.f64306b = r11;
                    return;
                }
                int iMin = (int) Math.min(this.f11441g, (jG - jM) + 1);
                if (j18 != C.TIME_UNSET) {
                    while (iMin > r11 && bVarP.k((((long) iMin) + jM) - 1) >= j18) {
                        iMin--;
                    }
                }
                int i14 = iMin;
                if (list.isEmpty()) {
                    j19 = j11;
                }
                gVar.f64305a = o(bVarP, this.f11439e, this.f11438d, this.f11444j.getSelectedFormat(), this.f11444j.getSelectionReason(), this.f11444j.getSelectionData(), jM, i14, j19, jK, null);
                return;
            }
            z10 = true;
            z11 = false;
            r11 = z10;
            long j110 = C.TIME_UNSET;
            if (z11) {
                r12 = r11;
            } else {
                r12 = r11;
            }
            if (bVarP.h() == 0) {
                gVar.f64306b = r12;
                return;
            }
            jE = bVarP.e(j17);
            jG = bVarP.g(j17);
            if (z11) {
                jI = bVarP.i(jG);
                if (jI + (jI - bVarP.k(jG)) >= j18) {
                    r13 = r12;
                    r15 = r11;
                } else {
                    r13 = r12;
                    r15 = 0;
                }
                r13 = (r12 == true ? 1 : 0) & r15;
            }
            r13 = r12;
            r14 = r13;
            jM = m(bVarP, mVar, j11, jE, jG);
            if (jM < jE) {
                this.f11447m = new BehindLiveWindowException();
            } else {
                if (jM <= jG) {
                }
                gVar.f64306b = r14;
            }
        }
    }

    @Override // h2.i
    public boolean d(long j11, h2.e eVar, List list) {
        if (this.f11447m != null) {
            return false;
        }
        return this.f11444j.h(j11, eVar, list);
    }

    @Override // androidx.media3.exoplayer.dash.a
    public void e(z zVar) {
        this.f11444j = zVar;
    }

    @Override // h2.i
    public boolean f(h2.e eVar, boolean z10, m.c cVar, m mVar) {
        m.b bVarD;
        if (!z10) {
            return false;
        }
        f.c cVar2 = this.f11442h;
        if (cVar2 != null && cVar2.k(eVar)) {
            return true;
        }
        if (!this.f11445k.f48d && (eVar instanceof h2.m)) {
            IOException iOException = cVar.f13012c;
            if ((iOException instanceof HttpDataSource.InvalidResponseCodeException) && ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode == 404) {
                b bVar = this.f11443i[this.f11444j.f(eVar.f64299d)];
                long jH = bVar.h();
                if (jH != -1 && jH != 0) {
                    if (((h2.m) eVar).e() > (bVar.f() + jH) - 1) {
                        this.f11448n = true;
                        return true;
                    }
                }
            }
        }
        b bVar2 = this.f11443i[this.f11444j.f(eVar.f64299d)];
        a2.b bVarJ = this.f11436b.j(bVar2.f11454b.f97c);
        if (bVarJ != null && !bVar2.f11455c.equals(bVarJ)) {
            return true;
        }
        m.a aVarH = h(this.f11444j, bVar2.f11454b.f97c);
        if ((!aVarH.a(2) && !aVarH.a(1)) || (bVarD = mVar.d(aVarH, cVar)) == null || !aVarH.a(bVarD.f13008a)) {
            return false;
        }
        int i11 = bVarD.f13008a;
        if (i11 == 2) {
            z zVar = this.f11444j;
            return zVar.g(zVar.f(eVar.f64299d), bVarD.f13009b);
        }
        if (i11 != 1) {
            return false;
        }
        this.f11436b.e(bVar2.f11455c, bVarD.f13009b);
        return true;
    }

    @Override // androidx.media3.exoplayer.dash.a
    public void g(a2.c cVar, int i11) {
        try {
            this.f11445k = cVar;
            this.f11446l = i11;
            long jF = cVar.f(i11);
            ArrayList arrayListL = l();
            for (int i12 = 0; i12 < this.f11443i.length; i12++) {
                j jVar = (j) arrayListL.get(this.f11444j.getIndexInTrackGroup(i12));
                b[] bVarArr = this.f11443i;
                bVarArr[i12] = bVarArr[i12].b(jF, jVar);
            }
        } catch (BehindLiveWindowException e11) {
            this.f11447m = e11;
        }
    }

    @Override // h2.i
    public int getPreferredQueueSize(long j11, List list) {
        return (this.f11447m != null || this.f11444j.length() < 2) ? list.size() : this.f11444j.evaluateQueueSize(j11, list);
    }

    @Override // h2.i
    public void maybeThrowError() throws IOException {
        IOException iOException = this.f11447m;
        if (iOException != null) {
            throw iOException;
        }
        this.f11435a.maybeThrowError();
    }

    protected h2.e n(b bVar, androidx.media3.datasource.a aVar, r rVar, int i11, Object obj, i iVar, i iVar2, androidx.media3.exoplayer.upstream.g.a aVar2) {
        i iVar3 = iVar;
        j jVar = bVar.f11454b;
        if (iVar3 != null) {
            i iVarA = iVar3.a(iVar2, bVar.f11455c.f41a);
            if (iVarA != null) {
                iVar3 = iVarA;
            }
        } else {
            iVar3 = (i) androidx.media3.common.util.a.e(iVar2);
        }
        return new l(aVar, z1.f.a(jVar, bVar.f11455c.f41a, iVar3, 0, ImmutableMap.of()), rVar, i11, obj, bVar.f11453a);
    }

    protected h2.e o(b bVar, androidx.media3.datasource.a aVar, int i11, r rVar, int i12, Object obj, long j11, int i13, long j12, long j13, androidx.media3.exoplayer.upstream.g.a aVar2) {
        j jVar = bVar.f11454b;
        long jK = bVar.k(j11);
        i iVarL = bVar.l(j11);
        if (bVar.f11453a == null) {
            return new o(aVar, z1.f.a(jVar, bVar.f11455c.f41a, iVarL, bVar.m(j11, j13) ? 0 : 8, ImmutableMap.of()), rVar, i12, obj, jK, bVar.i(j11), j11, i11, rVar);
        }
        int i14 = 1;
        int i15 = 1;
        while (i14 < i13) {
            i iVarA = iVarL.a(bVar.l(((long) i14) + j11), bVar.f11455c.f41a);
            if (iVarA == null) {
                break;
            }
            i15++;
            i14++;
            iVarL = iVarA;
        }
        long j14 = (((long) i15) + j11) - 1;
        long jI = bVar.i(j14);
        long j15 = bVar.f11457e;
        if (j15 == C.TIME_UNSET || j15 > jI) {
            j15 = -9223372036854775807L;
        }
        w1.h hVarA = z1.f.a(jVar, bVar.f11455c.f41a, iVarL, bVar.m(j14, j13) ? 0 : 8, ImmutableMap.of());
        long j16 = -jVar.f98d;
        if (y.q(rVar.f10161o)) {
            j16 += jK;
        }
        return new h2.j(aVar, hVarA, rVar, i12, obj, jK, jI, j12, j15, j11, i15, j16, bVar.f11453a);
    }

    @Override // h2.i
    public void release() {
        for (b bVar : this.f11443i) {
            h2.f fVar = bVar.f11453a;
            if (fVar != null) {
                fVar.release();
            }
        }
    }
}
