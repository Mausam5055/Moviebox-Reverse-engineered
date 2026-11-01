package g3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import l2.s;
import l2.u;

/* JADX INFO: loaded from: classes2.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f63297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f63299c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f63300d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f63301e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f63302f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f63303g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f63304h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f63305i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f63306j = new int[255];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final j0 f63307k = new j0(255);

    f() {
    }

    public boolean a(s sVar, boolean z10) throws ParserException {
        b();
        this.f63307k.S(27);
        if (!u.b(sVar, this.f63307k.e(), 0, 27, z10) || this.f63307k.J() != 1332176723) {
            return false;
        }
        int iH = this.f63307k.H();
        this.f63297a = iH;
        if (iH != 0) {
            if (z10) {
                return false;
            }
            throw ParserException.createForUnsupportedContainerFeature("unsupported bit stream revision");
        }
        this.f63298b = this.f63307k.H();
        this.f63299c = this.f63307k.v();
        this.f63300d = this.f63307k.x();
        this.f63301e = this.f63307k.x();
        this.f63302f = this.f63307k.x();
        int iH2 = this.f63307k.H();
        this.f63303g = iH2;
        this.f63304h = iH2 + 27;
        this.f63307k.S(iH2);
        if (!u.b(sVar, this.f63307k.e(), 0, this.f63303g, z10)) {
            return false;
        }
        for (int i11 = 0; i11 < this.f63303g; i11++) {
            this.f63306j[i11] = this.f63307k.H();
            this.f63305i += this.f63306j[i11];
        }
        return true;
    }

    public void b() {
        this.f63297a = 0;
        this.f63298b = 0;
        this.f63299c = 0L;
        this.f63300d = 0L;
        this.f63301e = 0L;
        this.f63302f = 0L;
        this.f63303g = 0;
        this.f63304h = 0;
        this.f63305i = 0;
    }

    public boolean c(s sVar) {
        return d(sVar, -1L);
    }

    public boolean d(s sVar, long j11) {
        androidx.media3.common.util.a.a(sVar.getPosition() == sVar.getPeekPosition());
        this.f63307k.S(4);
        while (true) {
            if ((j11 != -1 && sVar.getPosition() + 4 >= j11) || !u.b(sVar, this.f63307k.e(), 0, 4, true)) {
                break;
            }
            this.f63307k.W(0);
            if (this.f63307k.J() == 1332176723) {
                sVar.resetPeekPosition();
                return true;
            }
            sVar.skipFully(1);
        }
        do {
            if (j11 != -1 && sVar.getPosition() >= j11) {
                break;
            }
        } while (sVar.skip(1) != -1);
        return false;
    }
}
