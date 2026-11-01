package i3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import l2.h0;
import l2.l0;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public class n implements l2.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f64906a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.r f64908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f64909d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s0 f64912g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64913h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64914i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long[] f64915j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f64916k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f64907b = new d();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f64911f = a1.f10355f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j0 f64910e = new j0();

    private static class b implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f64917a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final byte[] f64918b;

        private b(long j11, byte[] bArr) {
            this.f64917a = j11;
            this.f64918b = bArr;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            return Long.compare(this.f64917a, bVar.f64917a);
        }
    }

    public n(s sVar, androidx.media3.common.r rVar) {
        this.f64906a = sVar;
        this.f64908c = rVar != null ? rVar.b().u0("application/x-media3-cues").S(rVar.f10161o).W(sVar.c()).N() : null;
        this.f64909d = new ArrayList();
        this.f64914i = 0;
        this.f64915j = a1.f10356g;
        this.f64916k = C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(e eVar) {
        b bVar = new b(eVar.f64897b, this.f64907b.a(eVar.f64896a, eVar.f64898c));
        this.f64909d.add(bVar);
        long j11 = this.f64916k;
        if (j11 == C.TIME_UNSET || eVar.f64897b >= j11) {
            l(bVar);
        }
    }

    private void h() throws ParserException {
        try {
            long j11 = this.f64916k;
            this.f64906a.a(this.f64911f, 0, this.f64913h, j11 != C.TIME_UNSET ? s.b.c(j11) : s.b.b(), new androidx.media3.common.util.m() { // from class: i3.m
                @Override // androidx.media3.common.util.m
                public final void accept(Object obj) {
                    this.f64905a.g((e) obj);
                }
            });
            Collections.sort(this.f64909d);
            this.f64915j = new long[this.f64909d.size()];
            for (int i11 = 0; i11 < this.f64909d.size(); i11++) {
                this.f64915j[i11] = ((b) this.f64909d.get(i11)).f64917a;
            }
            this.f64911f = a1.f10355f;
        } catch (RuntimeException e11) {
            throw ParserException.createForMalformedContainer("SubtitleParser failed.", e11);
        }
    }

    private boolean i(l2.s sVar) {
        byte[] bArr = this.f64911f;
        if (bArr.length == this.f64913h) {
            this.f64911f = Arrays.copyOf(bArr, bArr.length + 1024);
        }
        byte[] bArr2 = this.f64911f;
        int i11 = this.f64913h;
        int i12 = sVar.read(bArr2, i11, bArr2.length - i11);
        if (i12 != -1) {
            this.f64913h += i12;
        }
        long length = sVar.getLength();
        return (length != -1 && ((long) this.f64913h) == length) || i12 == -1;
    }

    private boolean j(l2.s sVar) {
        return sVar.skip((sVar.getLength() > (-1L) ? 1 : (sVar.getLength() == (-1L) ? 0 : -1)) != 0 ? Ints.d(sVar.getLength()) : 1024) == -1;
    }

    private void k() {
        long j11 = this.f64916k;
        for (int iH = j11 == C.TIME_UNSET ? 0 : a1.h(this.f64915j, j11, true, true); iH < this.f64909d.size(); iH++) {
            l((b) this.f64909d.get(iH));
        }
    }

    private void l(b bVar) {
        androidx.media3.common.util.a.i(this.f64912g);
        int length = bVar.f64918b.length;
        this.f64910e.T(bVar.f64918b);
        this.f64912g.b(this.f64910e, length);
        this.f64912g.d(bVar.f64917a, 1, length, 0, null);
    }

    @Override // l2.r
    public void b(l2.t tVar) {
        androidx.media3.common.util.a.g(this.f64914i == 0);
        s0 s0VarTrack = tVar.track(0, 3);
        this.f64912g = s0VarTrack;
        androidx.media3.common.r rVar = this.f64908c;
        if (rVar != null) {
            s0VarTrack.c(rVar);
            tVar.endTracks();
            tVar.f(new h0(new long[]{0}, new long[]{0}, C.TIME_UNSET));
        }
        this.f64914i = 1;
    }

    @Override // l2.r
    public int c(l2.s sVar, l0 l0Var) throws ParserException {
        int i11 = this.f64914i;
        androidx.media3.common.util.a.g((i11 == 0 || i11 == 5) ? false : true);
        if (this.f64914i == 1) {
            int iD = sVar.getLength() != -1 ? Ints.d(sVar.getLength()) : 1024;
            if (iD > this.f64911f.length) {
                this.f64911f = new byte[iD];
            }
            this.f64913h = 0;
            this.f64914i = 2;
        }
        if (this.f64914i == 2 && i(sVar)) {
            h();
            this.f64914i = 4;
        }
        if (this.f64914i == 3 && j(sVar)) {
            k();
            this.f64914i = 4;
        }
        return this.f64914i == 4 ? -1 : 0;
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        return true;
    }

    @Override // l2.r
    public /* synthetic */ l2.r e() {
        return l2.q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return l2.q.a(this);
    }

    @Override // l2.r
    public void release() {
        if (this.f64914i == 5) {
            return;
        }
        this.f64906a.reset();
        this.f64914i = 5;
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        int i11 = this.f64914i;
        androidx.media3.common.util.a.g((i11 == 0 || i11 == 5) ? false : true);
        this.f64916k = j12;
        if (this.f64914i == 2) {
            this.f64914i = 1;
        }
        if (this.f64914i == 4) {
            this.f64914i = 3;
        }
    }
}
