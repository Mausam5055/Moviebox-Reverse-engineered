package ba;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.a0;
import g9.e0;
import g9.z;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l implements g9.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f16299a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o1 f16302d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g9.n f16305g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private e0 f16306h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f16307i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f16300b = new d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d0 f16301c = new d0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f16303e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f16304f = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f16308j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f16309k = C.TIME_UNSET;

    public l(j jVar, o1 o1Var) {
        this.f16299a = jVar;
        this.f16302d = o1Var.b().e0("text/x-exoplayer-cues").I(o1Var.f25496l).E();
    }

    private void a() throws ParserException, InterruptedIOException {
        try {
            m mVar = (m) this.f16299a.dequeueInputBuffer();
            while (mVar == null) {
                Thread.sleep(5L);
                mVar = (m) this.f16299a.dequeueInputBuffer();
            }
            mVar.m(this.f16307i);
            mVar.f24843c.put(this.f16301c.d(), 0, this.f16307i);
            mVar.f24843c.limit(this.f16307i);
            this.f16299a.queueInputBuffer(mVar);
            n nVar = (n) this.f16299a.dequeueOutputBuffer();
            while (nVar == null) {
                Thread.sleep(5L);
                nVar = (n) this.f16299a.dequeueOutputBuffer();
            }
            for (int i11 = 0; i11 < nVar.getEventTimeCount(); i11++) {
                byte[] bArrA = this.f16300b.a(nVar.getCues(nVar.getEventTime(i11)));
                this.f16303e.add(Long.valueOf(nVar.getEventTime(i11)));
                this.f16304f.add(new d0(bArrA));
            }
            nVar.l();
        } catch (SubtitleDecoderException e11) {
            throw ParserException.createForMalformedContainer("SubtitleDecoder failed.", e11);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    private boolean e(g9.m mVar) {
        int iB = this.f16301c.b();
        int i11 = this.f16307i;
        if (iB == i11) {
            this.f16301c.c(i11 + 1024);
        }
        int i12 = mVar.read(this.f16301c.d(), this.f16307i, this.f16301c.b() - this.f16307i);
        if (i12 != -1) {
            this.f16307i += i12;
        }
        long length = mVar.getLength();
        return (length != -1 && ((long) this.f16307i) == length) || i12 == -1;
    }

    private boolean f(g9.m mVar) {
        return mVar.skip((mVar.getLength() > (-1L) ? 1 : (mVar.getLength() == (-1L) ? 0 : -1)) != 0 ? Ints.d(mVar.getLength()) : 1024) == -1;
    }

    private void g() {
        com.google.android.exoplayer2.util.a.i(this.f16306h);
        com.google.android.exoplayer2.util.a.g(this.f16303e.size() == this.f16304f.size());
        long j11 = this.f16309k;
        for (int iG = j11 == C.TIME_UNSET ? 0 : p0.g(this.f16303e, Long.valueOf(j11), true, true); iG < this.f16304f.size(); iG++) {
            d0 d0Var = (d0) this.f16304f.get(iG);
            d0Var.P(0);
            int length = d0Var.d().length;
            this.f16306h.c(d0Var, length);
            this.f16306h.d(((Long) this.f16303e.get(iG)).longValue(), 1, length, 0, null);
        }
    }

    @Override // g9.l
    public void b(g9.n nVar) {
        com.google.android.exoplayer2.util.a.g(this.f16308j == 0);
        this.f16305g = nVar;
        this.f16306h = nVar.track(0, 3);
        this.f16305g.endTracks();
        this.f16305g.d(new z(new long[]{0}, new long[]{0}, C.TIME_UNSET));
        this.f16306h.e(this.f16302d);
        this.f16308j = 1;
    }

    @Override // g9.l
    public int c(g9.m mVar, a0 a0Var) throws ParserException, InterruptedIOException {
        int i11 = this.f16308j;
        com.google.android.exoplayer2.util.a.g((i11 == 0 || i11 == 5) ? false : true);
        if (this.f16308j == 1) {
            this.f16301c.L(mVar.getLength() != -1 ? Ints.d(mVar.getLength()) : 1024);
            this.f16307i = 0;
            this.f16308j = 2;
        }
        if (this.f16308j == 2 && e(mVar)) {
            a();
            g();
            this.f16308j = 4;
        }
        if (this.f16308j == 3 && f(mVar)) {
            g();
            this.f16308j = 4;
        }
        return this.f16308j == 4 ? -1 : 0;
    }

    @Override // g9.l
    public boolean d(g9.m mVar) {
        return true;
    }

    @Override // g9.l
    public void release() {
        if (this.f16308j == 5) {
            return;
        }
        this.f16299a.release();
        this.f16308j = 5;
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        int i11 = this.f16308j;
        com.google.android.exoplayer2.util.a.g((i11 == 0 || i11 == 5) ? false : true);
        this.f16309k = j12;
        if (this.f16308j == 2) {
            this.f16308j = 1;
        }
        if (this.f16308j == 4) {
            this.f16308j = 3;
        }
    }
}
