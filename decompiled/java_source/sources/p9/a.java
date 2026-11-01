package p9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import g9.b0;
import g9.c0;
import g9.m;
import g9.o;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class a implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f72332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f72333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f72334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f72335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f72336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f72337f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f72338g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f72339h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f72340i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f72341j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f72342k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f72343l;

    private final class b implements b0 {
        private b() {
        }

        @Override // g9.b0
        public long getDurationUs() {
            return a.this.f72335d.b(a.this.f72337f);
        }

        @Override // g9.b0
        public b0.a getSeekPoints(long j11) {
            return new b0.a(new c0(j11, p0.r((a.this.f72333b + ((a.this.f72335d.c(j11) * (a.this.f72334c - a.this.f72333b)) / a.this.f72337f)) - 30000, a.this.f72333b, a.this.f72334c - 1)));
        }

        @Override // g9.b0
        public boolean isSeekable() {
            return true;
        }
    }

    public a(i iVar, long j11, long j12, long j13, long j14, boolean z10) {
        com.google.android.exoplayer2.util.a.a(j11 >= 0 && j12 > j11);
        this.f72335d = iVar;
        this.f72333b = j11;
        this.f72334c = j12;
        if (j13 == j12 - j11 || z10) {
            this.f72337f = j14;
            this.f72336e = 4;
        } else {
            this.f72336e = 0;
        }
        this.f72332a = new f();
    }

    private long g(m mVar) throws IOException {
        if (this.f72340i == this.f72341j) {
            return -1L;
        }
        long position = mVar.getPosition();
        if (!this.f72332a.d(mVar, this.f72341j)) {
            long j11 = this.f72340i;
            if (j11 != position) {
                return j11;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f72332a.a(mVar, false);
        mVar.resetPeekPosition();
        long j12 = this.f72339h;
        f fVar = this.f72332a;
        long j13 = fVar.f72362c;
        long j14 = j12 - j13;
        int i11 = fVar.f72367h + fVar.f72368i;
        if (0 <= j14 && j14 < 72000) {
            return -1L;
        }
        if (j14 < 0) {
            this.f72341j = position;
            this.f72343l = j13;
        } else {
            this.f72340i = mVar.getPosition() + ((long) i11);
            this.f72342k = this.f72332a.f72362c;
        }
        long j15 = this.f72341j;
        long j16 = this.f72340i;
        if (j15 - j16 < 100000) {
            this.f72341j = j16;
            return j16;
        }
        long position2 = mVar.getPosition() - (((long) i11) * (j14 <= 0 ? 2L : 1L));
        long j17 = this.f72341j;
        long j18 = this.f72340i;
        return p0.r(position2 + ((j14 * (j17 - j18)) / (this.f72343l - this.f72342k)), j18, j17 - 1);
    }

    private void i(m mVar) throws ParserException {
        while (true) {
            this.f72332a.c(mVar);
            this.f72332a.a(mVar, false);
            f fVar = this.f72332a;
            if (fVar.f72362c > this.f72339h) {
                mVar.resetPeekPosition();
                return;
            } else {
                mVar.skipFully(fVar.f72367h + fVar.f72368i);
                this.f72340i = mVar.getPosition();
                this.f72342k = this.f72332a.f72362c;
            }
        }
    }

    @Override // p9.g
    public long a(m mVar) throws IOException {
        int i11 = this.f72336e;
        if (i11 == 0) {
            long position = mVar.getPosition();
            this.f72338g = position;
            this.f72336e = 1;
            long j11 = this.f72334c - 65307;
            if (j11 > position) {
                return j11;
            }
        } else if (i11 != 1) {
            if (i11 == 2) {
                long jG = g(mVar);
                if (jG != -1) {
                    return jG;
                }
                this.f72336e = 3;
            } else if (i11 != 3) {
                if (i11 == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            i(mVar);
            this.f72336e = 4;
            return -(this.f72342k + 2);
        }
        this.f72337f = h(mVar);
        this.f72336e = 4;
        return this.f72338g;
    }

    @Override // p9.g
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b createSeekMap() {
        if (this.f72337f != 0) {
            return new b();
        }
        return null;
    }

    long h(m mVar) throws ParserException, EOFException {
        this.f72332a.b();
        if (!this.f72332a.c(mVar)) {
            throw new EOFException();
        }
        this.f72332a.a(mVar, false);
        f fVar = this.f72332a;
        mVar.skipFully(fVar.f72367h + fVar.f72368i);
        long j11 = this.f72332a.f72362c;
        while (true) {
            f fVar2 = this.f72332a;
            if ((fVar2.f72361b & 4) == 4 || !fVar2.c(mVar) || mVar.getPosition() >= this.f72334c || !this.f72332a.a(mVar, true)) {
                break;
            }
            f fVar3 = this.f72332a;
            if (!o.e(mVar, fVar3.f72367h + fVar3.f72368i)) {
                break;
            }
            j11 = this.f72332a.f72362c;
        }
        return j11;
    }

    @Override // p9.g
    public void startSeek(long j11) {
        this.f72339h = p0.r(j11, 0L, this.f72337f - 1);
        this.f72336e = 2;
        this.f72340i = this.f72333b;
        this.f72341j = this.f72334c;
        this.f72342k = 0L;
        this.f72343l = this.f72337f;
    }
}
