package g3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;
import l2.m0;
import l2.n0;
import l2.s;
import l2.u;

/* JADX INFO: loaded from: classes2.dex */
final class a implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f63269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f63270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f63271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f63272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f63273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f63274f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f63275g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f63276h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f63277i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f63278j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f63279k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f63280l;

    private final class b implements m0 {
        private b() {
        }

        @Override // l2.m0
        public long getDurationUs() {
            return a.this.f63272d.b(a.this.f63274f);
        }

        @Override // l2.m0
        public m0.a getSeekPoints(long j11) {
            return new m0.a(new n0(j11, a1.q((a.this.f63270b + BigInteger.valueOf(a.this.f63272d.c(j11)).multiply(BigInteger.valueOf(a.this.f63271c - a.this.f63270b)).divide(BigInteger.valueOf(a.this.f63274f)).longValue()) - 30000, a.this.f63270b, a.this.f63271c - 1)));
        }

        @Override // l2.m0
        public boolean isSeekable() {
            return true;
        }
    }

    public a(i iVar, long j11, long j12, long j13, long j14, boolean z10) {
        androidx.media3.common.util.a.a(j11 >= 0 && j12 > j11);
        this.f63272d = iVar;
        this.f63270b = j11;
        this.f63271c = j12;
        if (j13 == j12 - j11 || z10) {
            this.f63274f = j14;
            this.f63273e = 4;
        } else {
            this.f63273e = 0;
        }
        this.f63269a = new f();
    }

    private long g(s sVar) throws IOException {
        if (this.f63277i == this.f63278j) {
            return -1L;
        }
        long position = sVar.getPosition();
        if (!this.f63269a.d(sVar, this.f63278j)) {
            long j11 = this.f63277i;
            if (j11 != position) {
                return j11;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f63269a.a(sVar, false);
        sVar.resetPeekPosition();
        long j12 = this.f63276h;
        f fVar = this.f63269a;
        long j13 = fVar.f63299c;
        long j14 = j12 - j13;
        int i11 = fVar.f63304h + fVar.f63305i;
        if (0 <= j14 && j14 < 72000) {
            return -1L;
        }
        if (j14 < 0) {
            this.f63278j = position;
            this.f63280l = j13;
        } else {
            this.f63277i = sVar.getPosition() + ((long) i11);
            this.f63279k = this.f63269a.f63299c;
        }
        long j15 = this.f63278j;
        long j16 = this.f63277i;
        if (j15 - j16 < 100000) {
            this.f63278j = j16;
            return j16;
        }
        long position2 = sVar.getPosition() - (((long) i11) * (j14 <= 0 ? 2L : 1L));
        long j17 = this.f63278j;
        long j18 = this.f63277i;
        return a1.q(position2 + ((j14 * (j17 - j18)) / (this.f63280l - this.f63279k)), j18, j17 - 1);
    }

    private void i(s sVar) throws ParserException {
        while (true) {
            this.f63269a.c(sVar);
            this.f63269a.a(sVar, false);
            f fVar = this.f63269a;
            if (fVar.f63299c > this.f63276h) {
                sVar.resetPeekPosition();
                return;
            } else {
                sVar.skipFully(fVar.f63304h + fVar.f63305i);
                this.f63277i = sVar.getPosition();
                this.f63279k = this.f63269a.f63299c;
            }
        }
    }

    @Override // g3.g
    public long a(s sVar) throws IOException {
        int i11 = this.f63273e;
        if (i11 == 0) {
            long position = sVar.getPosition();
            this.f63275g = position;
            this.f63273e = 1;
            long j11 = this.f63271c - 65307;
            if (j11 > position) {
                return j11;
            }
        } else if (i11 != 1) {
            if (i11 == 2) {
                long jG = g(sVar);
                if (jG != -1) {
                    return jG;
                }
                this.f63273e = 3;
            } else if (i11 != 3) {
                if (i11 == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            i(sVar);
            this.f63273e = 4;
            return -(this.f63279k + 2);
        }
        this.f63274f = h(sVar);
        this.f63273e = 4;
        return this.f63275g;
    }

    @Override // g3.g
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b createSeekMap() {
        if (this.f63274f != 0) {
            return new b();
        }
        return null;
    }

    long h(s sVar) throws ParserException, EOFException {
        this.f63269a.b();
        if (!this.f63269a.c(sVar)) {
            throw new EOFException();
        }
        this.f63269a.a(sVar, false);
        f fVar = this.f63269a;
        sVar.skipFully(fVar.f63304h + fVar.f63305i);
        long j11 = this.f63269a.f63299c;
        while (true) {
            f fVar2 = this.f63269a;
            if ((fVar2.f63298b & 4) == 4 || !fVar2.c(sVar) || sVar.getPosition() >= this.f63271c || !this.f63269a.a(sVar, true)) {
                break;
            }
            f fVar3 = this.f63269a;
            if (!u.e(sVar, fVar3.f63304h + fVar3.f63305i)) {
                break;
            }
            j11 = this.f63269a.f63299c;
        }
        return j11;
    }

    @Override // g3.g
    public void startSeek(long j11) {
        this.f63276h = a1.q(j11, 0L, this.f63274f - 1);
        this.f63273e = 2;
        this.f63277i = this.f63270b;
        this.f63278j = this.f63271c;
        this.f63279k = 0L;
        this.f63280l = this.f63274f;
    }
}
