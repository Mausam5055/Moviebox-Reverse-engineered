package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.a0;
import com.google.android.exoplayer2.source.b0;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.w;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.e0;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import t9.x;

/* JADX INFO: loaded from: classes3.dex */
final class p implements Loader.b, Loader.e, b0, g9.n, a0.d {
    private static final Set Y = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));
    private int A;
    private int B;
    private boolean C;
    private boolean D;
    private int E;
    private o1 F;
    private o1 G;
    private boolean H;
    private x I;
    private Set J;
    private int[] K;
    private int L;
    private boolean M;
    private boolean[] N;
    private boolean[] O;
    private long P;
    private long Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private long V;
    private DrmInitData W;
    private i X;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f26028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f26029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f26030c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f26031d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f26032e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final o1 f26033f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final u f26034g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final s.a f26035h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final z f26036i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.google.android.exoplayer2.source.p.a f26038k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f26039l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ArrayList f26041n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List f26042o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Runnable f26043p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Runnable f26044q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Handler f26045r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final ArrayList f26046s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Map f26047t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private v9.f f26048u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private d[] f26049v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Set f26051x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private SparseIntArray f26052y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private e0 f26053z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Loader f26037j = new Loader("Loader:HlsSampleStreamWrapper");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final e.b f26040m = new e.b();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int[] f26050w = new int[0];

    public interface b extends b0.a {
        void d(Uri uri);

        void onPrepared();
    }

    private static class c implements e0 {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final o1 f26054g = new o1.b().e0(MimeTypes.APPLICATION_ID3).E();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final o1 f26055h = new o1.b().e0(MimeTypes.APPLICATION_EMSG).E();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.android.exoplayer2.metadata.emsg.a f26056a = new com.google.android.exoplayer2.metadata.emsg.a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e0 f26057b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final o1 f26058c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private o1 f26059d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private byte[] f26060e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f26061f;

        public c(e0 e0Var, int i11) {
            this.f26057b = e0Var;
            if (i11 == 1) {
                this.f26058c = f26054g;
            } else {
                if (i11 != 3) {
                    StringBuilder sb2 = new StringBuilder(33);
                    sb2.append("Unknown metadataType: ");
                    sb2.append(i11);
                    throw new IllegalArgumentException(sb2.toString());
                }
                this.f26058c = f26055h;
            }
            this.f26060e = new byte[0];
            this.f26061f = 0;
        }

        private boolean g(EventMessage eventMessage) {
            o1 wrappedMetadataFormat = eventMessage.getWrappedMetadataFormat();
            return wrappedMetadataFormat != null && p0.c(this.f26058c.f25496l, wrappedMetadataFormat.f25496l);
        }

        private void h(int i11) {
            byte[] bArr = this.f26060e;
            if (bArr.length < i11) {
                this.f26060e = Arrays.copyOf(bArr, i11 + (i11 / 2));
            }
        }

        private d0 i(int i11, int i12) {
            int i13 = this.f26061f - i12;
            d0 d0Var = new d0(Arrays.copyOfRange(this.f26060e, i13 - i11, i13));
            byte[] bArr = this.f26060e;
            System.arraycopy(bArr, i13, bArr, 0, i12);
            this.f26061f = i12;
            return d0Var;
        }

        @Override // g9.e0
        public int a(com.google.android.exoplayer2.upstream.g gVar, int i11, boolean z10, int i12) throws EOFException {
            h(this.f26061f + i11);
            int i13 = gVar.read(this.f26060e, this.f26061f, i11);
            if (i13 != -1) {
                this.f26061f += i13;
                return i13;
            }
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }

        @Override // g9.e0
        public /* synthetic */ int b(com.google.android.exoplayer2.upstream.g gVar, int i11, boolean z10) {
            return g9.d0.a(this, gVar, i11, z10);
        }

        @Override // g9.e0
        public /* synthetic */ void c(d0 d0Var, int i11) {
            g9.d0.b(this, d0Var, i11);
        }

        @Override // g9.e0
        public void d(long j11, int i11, int i12, int i13, e0.a aVar) {
            com.google.android.exoplayer2.util.a.e(this.f26059d);
            d0 d0VarI = i(i12, i13);
            if (!p0.c(this.f26059d.f25496l, this.f26058c.f25496l)) {
                if (!MimeTypes.APPLICATION_EMSG.equals(this.f26059d.f25496l)) {
                    String strValueOf = String.valueOf(this.f26059d.f25496l);
                    com.google.android.exoplayer2.util.s.i("HlsSampleStreamWrapper", strValueOf.length() != 0 ? "Ignoring sample for unsupported format: ".concat(strValueOf) : new String("Ignoring sample for unsupported format: "));
                    return;
                } else {
                    EventMessage eventMessageC = this.f26056a.c(d0VarI);
                    if (!g(eventMessageC)) {
                        com.google.android.exoplayer2.util.s.i("HlsSampleStreamWrapper", String.format("Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s", this.f26058c.f25496l, eventMessageC.getWrappedMetadataFormat()));
                        return;
                    }
                    d0VarI = new d0((byte[]) com.google.android.exoplayer2.util.a.e(eventMessageC.getWrappedMetadataBytes()));
                }
            }
            int iA = d0VarI.a();
            this.f26057b.c(d0VarI, iA);
            this.f26057b.d(j11, i11, iA, i13, aVar);
        }

        @Override // g9.e0
        public void e(o1 o1Var) {
            this.f26059d = o1Var;
            this.f26057b.e(this.f26058c);
        }

        @Override // g9.e0
        public void f(d0 d0Var, int i11, int i12) {
            h(this.f26061f + i11);
            d0Var.j(this.f26060e, this.f26061f, i11);
            this.f26061f += i11;
        }
    }

    private static final class d extends a0 {
        private final Map H;
        private DrmInitData I;

        private d(com.google.android.exoplayer2.upstream.b bVar, u uVar, s.a aVar, Map map) {
            super(bVar, uVar, aVar);
            this.H = map;
        }

        private Metadata h0(Metadata metadata) {
            if (metadata == null) {
                return null;
            }
            int length = metadata.length();
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (i12 >= length) {
                    i12 = -1;
                    break;
                }
                Metadata.Entry entry = metadata.get(i12);
                if ((entry instanceof PrivFrame) && "com.apple.streaming.transportStreamTimestamp".equals(((PrivFrame) entry).owner)) {
                    break;
                }
                i12++;
            }
            if (i12 == -1) {
                return metadata;
            }
            if (length == 1) {
                return null;
            }
            Metadata.Entry[] entryArr = new Metadata.Entry[length - 1];
            while (i11 < length) {
                if (i11 != i12) {
                    entryArr[i11 < i12 ? i11 : i11 - 1] = metadata.get(i11);
                }
                i11++;
            }
            return new Metadata(entryArr);
        }

        @Override // com.google.android.exoplayer2.source.a0, g9.e0
        public void d(long j11, int i11, int i12, int i13, e0.a aVar) {
            super.d(j11, i11, i12, i13, aVar);
        }

        public void i0(DrmInitData drmInitData) {
            this.I = drmInitData;
            I();
        }

        public void j0(i iVar) {
            f0(iVar.f25982k);
        }

        @Override // com.google.android.exoplayer2.source.a0
        public o1 w(o1 o1Var) {
            DrmInitData drmInitData;
            DrmInitData drmInitData2 = this.I;
            if (drmInitData2 == null) {
                drmInitData2 = o1Var.f25499o;
            }
            if (drmInitData2 != null && (drmInitData = (DrmInitData) this.H.get(drmInitData2.schemeType)) != null) {
                drmInitData2 = drmInitData;
            }
            Metadata metadataH0 = h0(o1Var.f25494j);
            if (drmInitData2 != o1Var.f25499o || metadataH0 != o1Var.f25494j) {
                o1Var = o1Var.b().M(drmInitData2).X(metadataH0).E();
            }
            return super.w(o1Var);
        }
    }

    public p(String str, int i11, b bVar, e eVar, Map map, com.google.android.exoplayer2.upstream.b bVar2, long j11, o1 o1Var, u uVar, s.a aVar, z zVar, com.google.android.exoplayer2.source.p.a aVar2, int i12) {
        this.f26028a = str;
        this.f26029b = i11;
        this.f26030c = bVar;
        this.f26031d = eVar;
        this.f26047t = map;
        this.f26032e = bVar2;
        this.f26033f = o1Var;
        this.f26034g = uVar;
        this.f26035h = aVar;
        this.f26036i = zVar;
        this.f26038k = aVar2;
        this.f26039l = i12;
        Set set = Y;
        this.f26051x = new HashSet(set.size());
        this.f26052y = new SparseIntArray(set.size());
        this.f26049v = new d[0];
        this.O = new boolean[0];
        this.N = new boolean[0];
        ArrayList arrayList = new ArrayList();
        this.f26041n = arrayList;
        this.f26042o = Collections.unmodifiableList(arrayList);
        this.f26046s = new ArrayList();
        this.f26043p = new Runnable() { // from class: com.google.android.exoplayer2.source.hls.n
            @Override // java.lang.Runnable
            public final void run() {
                this.f26026a.G();
            }
        };
        this.f26044q = new Runnable() { // from class: com.google.android.exoplayer2.source.hls.o
            @Override // java.lang.Runnable
            public final void run() {
                this.f26027a.P();
            }
        };
        this.f26045r = p0.w();
        this.P = j11;
        this.Q = j11;
    }

    private void A(i iVar) {
        this.X = iVar;
        this.F = iVar.f77135d;
        this.Q = C.TIME_UNSET;
        this.f26041n.add(iVar);
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (d dVar : this.f26049v) {
            aVarBuilder.a(Integer.valueOf(dVar.G()));
        }
        iVar.l(this, aVarBuilder.e());
        for (d dVar2 : this.f26049v) {
            dVar2.j0(iVar);
            if (iVar.f25985n) {
                dVar2.g0();
            }
        }
    }

    private static boolean B(v9.f fVar) {
        return fVar instanceof i;
    }

    private boolean C() {
        return this.Q != C.TIME_UNSET;
    }

    private void F() {
        int i11 = this.I.f76165a;
        int[] iArr = new int[i11];
        this.K = iArr;
        Arrays.fill(iArr, -1);
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = 0;
            while (true) {
                d[] dVarArr = this.f26049v;
                if (i13 >= dVarArr.length) {
                    break;
                }
                if (w((o1) com.google.android.exoplayer2.util.a.i(dVarArr[i13].F()), this.I.b(i12).c(0))) {
                    this.K[i12] = i13;
                    break;
                }
                i13++;
            }
        }
        Iterator it = this.f26046s.iterator();
        while (it.hasNext()) {
            ((l) it.next()).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        if (!this.H && this.K == null && this.C) {
            for (d dVar : this.f26049v) {
                if (dVar.F() == null) {
                    return;
                }
            }
            if (this.I != null) {
                F();
                return;
            }
            k();
            Y();
            this.f26030c.onPrepared();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        this.C = true;
        G();
    }

    private void T() {
        for (d dVar : this.f26049v) {
            dVar.W(this.R);
        }
        this.R = false;
    }

    private boolean U(long j11) {
        int length = this.f26049v.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (!this.f26049v[i11].Z(j11, false) && (this.O[i11] || !this.M)) {
                return false;
            }
        }
        return true;
    }

    private void Y() {
        this.D = true;
    }

    private void d0(t9.s[] sVarArr) {
        this.f26046s.clear();
        for (t9.s sVar : sVarArr) {
            if (sVar != null) {
                this.f26046s.add((l) sVar);
            }
        }
    }

    private void h() {
        com.google.android.exoplayer2.util.a.g(this.D);
        com.google.android.exoplayer2.util.a.e(this.I);
        com.google.android.exoplayer2.util.a.e(this.J);
    }

    private void k() {
        int i11;
        o1 o1Var;
        int length = this.f26049v.length;
        int i12 = -2;
        int i13 = -1;
        int i14 = 0;
        while (true) {
            i11 = 2;
            if (i14 >= length) {
                break;
            }
            String str = ((o1) com.google.android.exoplayer2.util.a.i(this.f26049v[i14].F())).f25496l;
            if (!w.t(str)) {
                i11 = w.p(str) ? 1 : w.s(str) ? 3 : -2;
            }
            if (z(i11) > z(i12)) {
                i13 = i14;
                i12 = i11;
            } else if (i11 == i12 && i13 != -1) {
                i13 = -1;
            }
            i14++;
        }
        TrackGroup trackGroupJ = this.f26031d.j();
        int i15 = trackGroupJ.f25673a;
        this.L = -1;
        this.K = new int[length];
        for (int i16 = 0; i16 < length; i16++) {
            this.K[i16] = i16;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        int i17 = 0;
        while (i17 < length) {
            o1 o1Var2 = (o1) com.google.android.exoplayer2.util.a.i(this.f26049v[i17].F());
            if (i17 == i13) {
                o1[] o1VarArr = new o1[i15];
                for (int i18 = 0; i18 < i15; i18++) {
                    o1 o1VarC = trackGroupJ.c(i18);
                    if (i12 == 1 && (o1Var = this.f26033f) != null) {
                        o1VarC = o1VarC.j(o1Var);
                    }
                    o1VarArr[i18] = i15 == 1 ? o1Var2.j(o1VarC) : s(o1VarC, o1Var2, true);
                }
                trackGroupArr[i17] = new TrackGroup(this.f26028a, o1VarArr);
                this.L = i17;
            } else {
                o1 o1Var3 = (i12 == i11 && w.p(o1Var2.f25496l)) ? this.f26033f : null;
                String str2 = this.f26028a;
                int i19 = i17 < i13 ? i17 : i17 - 1;
                StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 18);
                sb2.append(str2);
                sb2.append(":muxed:");
                sb2.append(i19);
                trackGroupArr[i17] = new TrackGroup(sb2.toString(), s(o1Var3, o1Var2, false));
            }
            i17++;
            i11 = 2;
        }
        this.I = r(trackGroupArr);
        com.google.android.exoplayer2.util.a.g(this.J == null);
        this.J = Collections.emptySet();
    }

    private boolean m(int i11) {
        for (int i12 = i11; i12 < this.f26041n.size(); i12++) {
            if (((i) this.f26041n.get(i12)).f25985n) {
                return false;
            }
        }
        i iVar = (i) this.f26041n.get(i11);
        for (int i13 = 0; i13 < this.f26049v.length; i13++) {
            if (this.f26049v[i13].C() > iVar.k(i13)) {
                return false;
            }
        }
        return true;
    }

    private static g9.k p(int i11, int i12) {
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("Unmapped track with id ");
        sb2.append(i11);
        sb2.append(" of type ");
        sb2.append(i12);
        com.google.android.exoplayer2.util.s.i("HlsSampleStreamWrapper", sb2.toString());
        return new g9.k();
    }

    private a0 q(int i11, int i12) {
        int length = this.f26049v.length;
        boolean z10 = true;
        if (i12 != 1 && i12 != 2) {
            z10 = false;
        }
        d dVar = new d(this.f26032e, this.f26034g, this.f26035h, this.f26047t);
        dVar.b0(this.P);
        if (z10) {
            dVar.i0(this.W);
        }
        dVar.a0(this.V);
        i iVar = this.X;
        if (iVar != null) {
            dVar.j0(iVar);
        }
        dVar.d0(this);
        int i13 = length + 1;
        int[] iArrCopyOf = Arrays.copyOf(this.f26050w, i13);
        this.f26050w = iArrCopyOf;
        iArrCopyOf[length] = i11;
        this.f26049v = (d[]) p0.E0(this.f26049v, dVar);
        boolean[] zArrCopyOf = Arrays.copyOf(this.O, i13);
        this.O = zArrCopyOf;
        zArrCopyOf[length] = z10;
        this.M |= z10;
        this.f26051x.add(Integer.valueOf(i12));
        this.f26052y.append(i12, length);
        if (z(i12) > z(this.A)) {
            this.B = length;
            this.A = i12;
        }
        this.N = Arrays.copyOf(this.N, i13);
        return dVar;
    }

    private x r(TrackGroup[] trackGroupArr) {
        for (int i11 = 0; i11 < trackGroupArr.length; i11++) {
            TrackGroup trackGroup = trackGroupArr[i11];
            o1[] o1VarArr = new o1[trackGroup.f25673a];
            for (int i12 = 0; i12 < trackGroup.f25673a; i12++) {
                o1 o1VarC = trackGroup.c(i12);
                o1VarArr[i12] = o1VarC.c(this.f26034g.a(o1VarC));
            }
            trackGroupArr[i11] = new TrackGroup(trackGroup.f25674b, o1VarArr);
        }
        return new x(trackGroupArr);
    }

    private static o1 s(o1 o1Var, o1 o1Var2, boolean z10) {
        String strD;
        String strG;
        if (o1Var == null) {
            return o1Var2;
        }
        int iL = w.l(o1Var2.f25496l);
        if (p0.K(o1Var.f25493i, iL) == 1) {
            strD = p0.L(o1Var.f25493i, iL);
            strG = w.g(strD);
        } else {
            strD = w.d(o1Var.f25493i, o1Var2.f25496l);
            strG = o1Var2.f25496l;
        }
        o1.b bVarI = o1Var2.b().S(o1Var.f25485a).U(o1Var.f25486b).V(o1Var.f25487c).g0(o1Var.f25488d).c0(o1Var.f25489e).G(z10 ? o1Var.f25490f : -1).Z(z10 ? o1Var.f25491g : -1).I(strD);
        if (iL == 2) {
            bVarI.j0(o1Var.f25501q).Q(o1Var.f25502r).P(o1Var.f25503s);
        }
        if (strG != null) {
            bVarI.e0(strG);
        }
        int i11 = o1Var.f25509y;
        if (i11 != -1 && iL == 1) {
            bVarI.H(i11);
        }
        Metadata metadataCopyWithAppendedEntriesFrom = o1Var.f25494j;
        if (metadataCopyWithAppendedEntriesFrom != null) {
            Metadata metadata = o1Var2.f25494j;
            if (metadata != null) {
                metadataCopyWithAppendedEntriesFrom = metadata.copyWithAppendedEntriesFrom(metadataCopyWithAppendedEntriesFrom);
            }
            bVarI.X(metadataCopyWithAppendedEntriesFrom);
        }
        return bVarI.E();
    }

    private void t(int i11) {
        com.google.android.exoplayer2.util.a.g(!this.f26037j.i());
        while (true) {
            if (i11 >= this.f26041n.size()) {
                i11 = -1;
                break;
            } else if (m(i11)) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 == -1) {
            return;
        }
        long j11 = x().f77139h;
        i iVarU = u(i11);
        if (this.f26041n.isEmpty()) {
            this.Q = this.P;
        } else {
            ((i) g3.g(this.f26041n)).m();
        }
        this.T = false;
        this.f26038k.D(this.A, iVarU.f77138g, j11);
    }

    private i u(int i11) {
        i iVar = (i) this.f26041n.get(i11);
        ArrayList arrayList = this.f26041n;
        p0.M0(arrayList, i11, arrayList.size());
        for (int i12 = 0; i12 < this.f26049v.length; i12++) {
            this.f26049v[i12].u(iVar.k(i12));
        }
        return iVar;
    }

    private boolean v(i iVar) {
        int i11 = iVar.f25982k;
        int length = this.f26049v.length;
        for (int i12 = 0; i12 < length; i12++) {
            if (this.N[i12] && this.f26049v[i12].Q() == i11) {
                return false;
            }
        }
        return true;
    }

    private static boolean w(o1 o1Var, o1 o1Var2) {
        String str = o1Var.f25496l;
        String str2 = o1Var2.f25496l;
        int iL = w.l(str);
        if (iL != 3) {
            return iL == w.l(str2);
        }
        if (p0.c(str, str2)) {
            return !(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str)) || o1Var.D == o1Var2.D;
        }
        return false;
    }

    private i x() {
        ArrayList arrayList = this.f26041n;
        return (i) arrayList.get(arrayList.size() - 1);
    }

    private e0 y(int i11, int i12) {
        com.google.android.exoplayer2.util.a.a(Y.contains(Integer.valueOf(i12)));
        int i13 = this.f26052y.get(i12, -1);
        if (i13 == -1) {
            return null;
        }
        if (this.f26051x.add(Integer.valueOf(i12))) {
            this.f26050w[i13] = i11;
        }
        return this.f26050w[i13] == i11 ? this.f26049v[i13] : p(i11, i12);
    }

    private static int z(int i11) {
        if (i11 == 1) {
            return 2;
        }
        if (i11 != 2) {
            return i11 != 3 ? 0 : 1;
        }
        return 3;
    }

    public boolean D(int i11) {
        return !C() && this.f26049v[i11].K(this.T);
    }

    public boolean E() {
        return this.A == 2;
    }

    public void H() {
        this.f26037j.maybeThrowError();
        this.f26031d.n();
    }

    public void I(int i11) {
        H();
        this.f26049v[i11].N();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public void j(v9.f fVar, long j11, long j12, boolean z10) {
        this.f26048u = null;
        t9.h hVar = new t9.h(fVar.f77132a, fVar.f77133b, fVar.d(), fVar.c(), j11, j12, fVar.a());
        this.f26036i.b(fVar.f77132a);
        this.f26038k.r(hVar, fVar.f77134c, this.f26029b, fVar.f77135d, fVar.f77136e, fVar.f77137f, fVar.f77138g, fVar.f77139h);
        if (z10) {
            return;
        }
        if (C() || this.E == 0) {
            T();
        }
        if (this.E > 0) {
            this.f26030c.g(this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public void l(v9.f fVar, long j11, long j12) {
        this.f26048u = null;
        this.f26031d.p(fVar);
        t9.h hVar = new t9.h(fVar.f77132a, fVar.f77133b, fVar.d(), fVar.c(), j11, j12, fVar.a());
        this.f26036i.b(fVar.f77132a);
        this.f26038k.u(hVar, fVar.f77134c, this.f26029b, fVar.f77135d, fVar.f77136e, fVar.f77137f, fVar.f77138g, fVar.f77139h);
        if (this.D) {
            this.f26030c.g(this);
        } else {
            continueLoading(this.P);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public Loader.c n(v9.f fVar, long j11, long j12, IOException iOException, int i11) {
        Loader.c cVarG;
        int i12;
        boolean zB = B(fVar);
        if (zB && !((i) fVar).o() && (iOException instanceof HttpDataSource$InvalidResponseCodeException) && ((i12 = ((HttpDataSource$InvalidResponseCodeException) iOException).responseCode) == 410 || i12 == 404)) {
            return Loader.f27244d;
        }
        long jA = fVar.a();
        t9.h hVar = new t9.h(fVar.f77132a, fVar.f77133b, fVar.d(), fVar.c(), j11, j12, jA);
        z.c cVar = new z.c(hVar, new t9.i(fVar.f77134c, this.f26029b, fVar.f77135d, fVar.f77136e, fVar.f77137f, p0.e1(fVar.f77138g), p0.e1(fVar.f77139h)), iOException, i11);
        z.b bVarD = this.f26036i.d(com.google.android.exoplayer2.trackselection.j.c(this.f26031d.k()), cVar);
        boolean zM = (bVarD == null || bVarD.f27540a != 2) ? false : this.f26031d.m(fVar, bVarD.f27541b);
        if (zM) {
            if (zB && jA == 0) {
                ArrayList arrayList = this.f26041n;
                com.google.android.exoplayer2.util.a.g(((i) arrayList.remove(arrayList.size() - 1)) == fVar);
                if (this.f26041n.isEmpty()) {
                    this.Q = this.P;
                } else {
                    ((i) g3.g(this.f26041n)).m();
                }
            }
            cVarG = Loader.f27246f;
        } else {
            long jC = this.f26036i.c(cVar);
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f27247g;
        }
        Loader.c cVar2 = cVarG;
        boolean zC = cVar2.c();
        this.f26038k.w(hVar, fVar.f77134c, this.f26029b, fVar.f77135d, fVar.f77136e, fVar.f77137f, fVar.f77138g, fVar.f77139h, iOException, !zC);
        if (!zC) {
            this.f26048u = null;
            this.f26036i.b(fVar.f77132a);
        }
        if (zM) {
            if (this.D) {
                this.f26030c.g(this);
            } else {
                continueLoading(this.P);
            }
        }
        return cVar2;
    }

    public void M() {
        this.f26051x.clear();
    }

    public boolean N(Uri uri, z.c cVar, boolean z10) {
        z.b bVarD;
        if (!this.f26031d.o(uri)) {
            return true;
        }
        long j11 = (z10 || (bVarD = this.f26036i.d(com.google.android.exoplayer2.trackselection.j.c(this.f26031d.k()), cVar)) == null || bVarD.f27540a != 2) ? -9223372036854775807L : bVarD.f27541b;
        return this.f26031d.q(uri, j11) && j11 != C.TIME_UNSET;
    }

    public void O() {
        if (this.f26041n.isEmpty()) {
            return;
        }
        i iVar = (i) g3.g(this.f26041n);
        int iC = this.f26031d.c(iVar);
        if (iC == 1) {
            iVar.t();
        } else if (iC == 2 && !this.T && this.f26037j.i()) {
            this.f26037j.e();
        }
    }

    public void Q(TrackGroup[] trackGroupArr, int i11, int... iArr) {
        this.I = r(trackGroupArr);
        this.J = new HashSet();
        for (int i12 : iArr) {
            this.J.add(this.I.b(i12));
        }
        this.L = i11;
        Handler handler = this.f26045r;
        final b bVar = this.f26030c;
        Objects.requireNonNull(bVar);
        handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.hls.m
            @Override // java.lang.Runnable
            public final void run() {
                bVar.onPrepared();
            }
        });
        Y();
    }

    public int R(int i11, p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i12) {
        if (C()) {
            return -3;
        }
        int i13 = 0;
        if (!this.f26041n.isEmpty()) {
            int i14 = 0;
            while (i14 < this.f26041n.size() - 1 && v((i) this.f26041n.get(i14))) {
                i14++;
            }
            p0.M0(this.f26041n, 0, i14);
            i iVar = (i) this.f26041n.get(0);
            o1 o1Var = iVar.f77135d;
            if (!o1Var.equals(this.G)) {
                this.f26038k.i(this.f26029b, o1Var, iVar.f77136e, iVar.f77137f, iVar.f77138g);
            }
            this.G = o1Var;
        }
        if (!this.f26041n.isEmpty() && !((i) this.f26041n.get(0)).o()) {
            return -3;
        }
        int iS = this.f26049v[i11].S(p1Var, decoderInputBuffer, i12, this.T);
        if (iS == -5) {
            o1 o1VarJ = (o1) com.google.android.exoplayer2.util.a.e(p1Var.f25598b);
            if (i11 == this.B) {
                int iQ = this.f26049v[i11].Q();
                while (i13 < this.f26041n.size() && ((i) this.f26041n.get(i13)).f25982k != iQ) {
                    i13++;
                }
                o1VarJ = o1VarJ.j(i13 < this.f26041n.size() ? ((i) this.f26041n.get(i13)).f77135d : (o1) com.google.android.exoplayer2.util.a.e(this.F));
            }
            p1Var.f25598b = o1VarJ;
        }
        return iS;
    }

    public void S() {
        if (this.D) {
            for (d dVar : this.f26049v) {
                dVar.R();
            }
        }
        this.f26037j.l(this);
        this.f26045r.removeCallbacksAndMessages(null);
        this.H = true;
        this.f26046s.clear();
    }

    public boolean V(long j11, boolean z10) {
        this.P = j11;
        if (C()) {
            this.Q = j11;
            return true;
        }
        if (this.C && !z10 && U(j11)) {
            return false;
        }
        this.Q = j11;
        this.T = false;
        this.f26041n.clear();
        if (this.f26037j.i()) {
            if (this.C) {
                for (d dVar : this.f26049v) {
                    dVar.r();
                }
            }
            this.f26037j.e();
        } else {
            this.f26037j.f();
            T();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0122  */
    public boolean W(com.google.android.exoplayer2.trackselection.h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11, boolean z10) {
        boolean z11;
        h();
        int i11 = this.E;
        int i12 = 0;
        for (int i13 = 0; i13 < hVarArr.length; i13++) {
            l lVar = (l) sVarArr[i13];
            if (lVar != null && (hVarArr[i13] == null || !zArr[i13])) {
                this.E--;
                lVar.d();
                sVarArr[i13] = null;
            }
        }
        boolean z12 = z10 || (!this.S ? j11 == this.P : i11 != 0);
        com.google.android.exoplayer2.trackselection.h hVarK = this.f26031d.k();
        boolean z13 = z12;
        com.google.android.exoplayer2.trackselection.h hVar = hVarK;
        for (int i14 = 0; i14 < hVarArr.length; i14++) {
            com.google.android.exoplayer2.trackselection.h hVar2 = hVarArr[i14];
            if (hVar2 != null) {
                int iC = this.I.c(hVar2.getTrackGroup());
                if (iC == this.L) {
                    this.f26031d.u(hVar2);
                    hVar = hVar2;
                }
                if (sVarArr[i14] == null) {
                    this.E++;
                    l lVar2 = new l(this, iC);
                    sVarArr[i14] = lVar2;
                    zArr2[i14] = true;
                    if (this.K != null) {
                        lVar2.a();
                        if (!z13) {
                            d dVar = this.f26049v[this.K[iC]];
                            z13 = (dVar.Z(j11, true) || dVar.C() == 0) ? false : true;
                        }
                    }
                }
            }
        }
        if (this.E == 0) {
            this.f26031d.r();
            this.G = null;
            this.R = true;
            this.f26041n.clear();
            if (this.f26037j.i()) {
                if (this.C) {
                    d[] dVarArr = this.f26049v;
                    int length = dVarArr.length;
                    while (i12 < length) {
                        dVarArr[i12].r();
                        i12++;
                    }
                }
                this.f26037j.e();
            } else {
                T();
            }
        } else {
            if (this.f26041n.isEmpty() || p0.c(hVar, hVarK)) {
                z11 = z10;
            } else {
                if (!this.S) {
                    long j12 = j11 < 0 ? -j11 : 0L;
                    i iVarX = x();
                    hVar.d(j11, j12, C.TIME_UNSET, this.f26042o, this.f26031d.a(iVarX, j11));
                    if (hVar.getSelectedIndexInTrackGroup() == this.f26031d.j().d(iVarX.f77135d)) {
                        z11 = z10;
                    }
                }
                this.R = true;
                z11 = true;
                z13 = true;
            }
            if (z13) {
                V(j11, z11);
                while (i12 < sVarArr.length) {
                    if (sVarArr[i12] != null) {
                        zArr2[i12] = true;
                    }
                    i12++;
                }
            }
        }
        d0(sVarArr);
        this.S = true;
        return z13;
    }

    public void X(DrmInitData drmInitData) {
        if (p0.c(this.W, drmInitData)) {
            return;
        }
        this.W = drmInitData;
        int i11 = 0;
        while (true) {
            d[] dVarArr = this.f26049v;
            if (i11 >= dVarArr.length) {
                return;
            }
            if (this.O[i11]) {
                dVarArr[i11].i0(drmInitData);
            }
            i11++;
        }
    }

    public void Z(boolean z10) {
        this.f26031d.t(z10);
    }

    public long a(long j11, c3 c3Var) {
        return this.f26031d.b(j11, c3Var);
    }

    public void a0(long j11) {
        if (this.V != j11) {
            this.V = j11;
            for (d dVar : this.f26049v) {
                dVar.a0(j11);
            }
        }
    }

    public int b0(int i11, long j11) {
        if (C()) {
            return 0;
        }
        d dVar = this.f26049v[i11];
        int iE = dVar.E(j11, this.T);
        i iVar = (i) g3.h(this.f26041n, null);
        if (iVar != null && !iVar.o()) {
            iE = Math.min(iE, iVar.k(i11) - dVar.C());
        }
        dVar.e0(iE);
        return iE;
    }

    @Override // com.google.android.exoplayer2.source.a0.d
    public void c(o1 o1Var) {
        this.f26045r.post(this.f26043p);
    }

    public void c0(int i11) {
        h();
        com.google.android.exoplayer2.util.a.e(this.K);
        int i12 = this.K[i11];
        com.google.android.exoplayer2.util.a.g(this.N[i12]);
        this.N[i12] = false;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        List listEmptyList;
        long jMax;
        if (this.T || this.f26037j.i() || this.f26037j.h()) {
            return false;
        }
        if (C()) {
            listEmptyList = Collections.emptyList();
            jMax = this.Q;
            for (d dVar : this.f26049v) {
                dVar.b0(this.Q);
            }
        } else {
            listEmptyList = this.f26042o;
            i iVarX = x();
            jMax = iVarX.f() ? iVarX.f77139h : Math.max(this.P, iVarX.f77138g);
        }
        List list = listEmptyList;
        long j12 = jMax;
        this.f26040m.a();
        this.f26031d.e(j11, j12, list, this.D || !list.isEmpty(), this.f26040m);
        e.b bVar = this.f26040m;
        boolean z10 = bVar.f25968b;
        v9.f fVar = bVar.f25967a;
        Uri uri = bVar.f25969c;
        if (z10) {
            this.Q = C.TIME_UNSET;
            this.T = true;
            return true;
        }
        if (fVar == null) {
            if (uri != null) {
                this.f26030c.d(uri);
            }
            return false;
        }
        if (B(fVar)) {
            A((i) fVar);
        }
        this.f26048u = fVar;
        this.f26038k.A(new t9.h(fVar.f77132a, fVar.f77133b, this.f26037j.m(fVar, this, this.f26036i.a(fVar.f77134c))), fVar.f77134c, this.f26029b, fVar.f77135d, fVar.f77136e, fVar.f77137f, fVar.f77138g, fVar.f77139h);
        return true;
    }

    @Override // g9.n
    public void d(g9.b0 b0Var) {
    }

    public void discardBuffer(long j11, boolean z10) {
        if (!this.C || C()) {
            return;
        }
        int length = this.f26049v.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.f26049v[i11].q(j11, z10, this.N[i11]);
        }
    }

    @Override // g9.n
    public void endTracks() {
        this.U = true;
        this.f26045r.post(this.f26044q);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        if (this.T) {
            return Long.MIN_VALUE;
        }
        if (C()) {
            return this.Q;
        }
        long jMax = this.P;
        i iVarX = x();
        if (!iVarX.f()) {
            if (this.f26041n.size() > 1) {
                ArrayList arrayList = this.f26041n;
                iVarX = (i) arrayList.get(arrayList.size() - 2);
            } else {
                iVarX = null;
            }
        }
        if (iVarX != null) {
            jMax = Math.max(jMax, iVarX.f77139h);
        }
        if (this.C) {
            for (d dVar : this.f26049v) {
                jMax = Math.max(jMax, dVar.z());
            }
        }
        return jMax;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        if (C()) {
            return this.Q;
        }
        if (this.T) {
            return Long.MIN_VALUE;
        }
        return x().f77139h;
    }

    public x getTrackGroups() {
        h();
        return this.I;
    }

    public int i(int i11) {
        h();
        com.google.android.exoplayer2.util.a.e(this.K);
        int i12 = this.K[i11];
        if (i12 == -1) {
            return this.J.contains(this.I.b(i11)) ? -3 : -2;
        }
        boolean[] zArr = this.N;
        if (zArr[i12]) {
            return -2;
        }
        zArr[i12] = true;
        return i12;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return this.f26037j.i();
    }

    public void maybeThrowPrepareError() throws ParserException {
        H();
        if (this.T && !this.D) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    public void o() {
        if (this.D) {
            return;
        }
        continueLoading(this.P);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public void onLoaderReleased() {
        for (d dVar : this.f26049v) {
            dVar.T();
        }
    }

    @Override // com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j11) {
        if (this.f26037j.h() || C()) {
            return;
        }
        if (this.f26037j.i()) {
            com.google.android.exoplayer2.util.a.e(this.f26048u);
            if (this.f26031d.v(j11, this.f26048u, this.f26042o)) {
                this.f26037j.e();
                return;
            }
            return;
        }
        int size = this.f26042o.size();
        while (size > 0 && this.f26031d.c((i) this.f26042o.get(size - 1)) == 2) {
            size--;
        }
        if (size < this.f26042o.size()) {
            t(size);
        }
        int iH = this.f26031d.h(j11, this.f26042o);
        if (iH < this.f26041n.size()) {
            t(iH);
        }
    }

    @Override // g9.n
    public e0 track(int i11, int i12) {
        e0 e0VarQ;
        if (!Y.contains(Integer.valueOf(i12))) {
            int i13 = 0;
            while (true) {
                e0[] e0VarArr = this.f26049v;
                if (i13 >= e0VarArr.length) {
                    e0VarQ = null;
                    break;
                }
                if (this.f26050w[i13] == i11) {
                    e0VarQ = e0VarArr[i13];
                    break;
                }
                i13++;
            }
        } else {
            e0VarQ = y(i11, i12);
        }
        if (e0VarQ == null) {
            if (this.U) {
                return p(i11, i12);
            }
            e0VarQ = q(i11, i12);
        }
        if (i12 != 5) {
            return e0VarQ;
        }
        if (this.f26053z == null) {
            this.f26053z = new c(e0VarQ, this.f26039l);
        }
        return this.f26053z;
    }
}
