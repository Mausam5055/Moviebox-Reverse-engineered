package p9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import g9.m;
import g9.o;

/* JADX INFO: loaded from: classes4.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f72360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f72361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f72362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f72363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f72364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f72365f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f72366g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f72367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f72368i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f72369j = new int[255];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final d0 f72370k = new d0(255);

    f() {
    }

    public boolean a(m mVar, boolean z10) throws ParserException {
        b();
        this.f72370k.L(27);
        if (!o.b(mVar, this.f72370k.d(), 0, 27, z10) || this.f72370k.F() != 1332176723) {
            return false;
        }
        int iD = this.f72370k.D();
        this.f72360a = iD;
        if (iD != 0) {
            if (z10) {
                return false;
            }
            throw ParserException.createForUnsupportedContainerFeature("unsupported bit stream revision");
        }
        this.f72361b = this.f72370k.D();
        this.f72362c = this.f72370k.r();
        this.f72363d = this.f72370k.t();
        this.f72364e = this.f72370k.t();
        this.f72365f = this.f72370k.t();
        int iD2 = this.f72370k.D();
        this.f72366g = iD2;
        this.f72367h = iD2 + 27;
        this.f72370k.L(iD2);
        if (!o.b(mVar, this.f72370k.d(), 0, this.f72366g, z10)) {
            return false;
        }
        for (int i11 = 0; i11 < this.f72366g; i11++) {
            this.f72369j[i11] = this.f72370k.D();
            this.f72368i += this.f72369j[i11];
        }
        return true;
    }

    public void b() {
        this.f72360a = 0;
        this.f72361b = 0;
        this.f72362c = 0L;
        this.f72363d = 0L;
        this.f72364e = 0L;
        this.f72365f = 0L;
        this.f72366g = 0;
        this.f72367h = 0;
        this.f72368i = 0;
    }

    public boolean c(m mVar) {
        return d(mVar, -1L);
    }

    public boolean d(m mVar, long j11) {
        com.google.android.exoplayer2.util.a.a(mVar.getPosition() == mVar.getPeekPosition());
        this.f72370k.L(4);
        while (true) {
            if ((j11 != -1 && mVar.getPosition() + 4 >= j11) || !o.b(mVar, this.f72370k.d(), 0, 4, true)) {
                break;
            }
            this.f72370k.P(0);
            if (this.f72370k.F() == 1332176723) {
                mVar.resetPeekPosition();
                return true;
            }
            mVar.skipFully(1);
        }
        do {
            if (j11 != -1 && mVar.getPosition() >= j11) {
                break;
            }
        } while (mVar.skip(1) != -1);
        return false;
    }
}
