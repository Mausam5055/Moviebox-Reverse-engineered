package p9;

import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggPageHeader;
import g9.m;
import g9.o;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f72355a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f72356b = new d0(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f72357c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f72358d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f72359e;

    e() {
    }

    private int a(int i11) {
        int i12;
        int i13 = 0;
        this.f72358d = 0;
        do {
            int i14 = this.f72358d;
            int i15 = i11 + i14;
            f fVar = this.f72355a;
            if (i15 >= fVar.f72366g) {
                break;
            }
            int[] iArr = fVar.f72369j;
            this.f72358d = i14 + 1;
            i12 = iArr[i14 + i11];
            i13 += i12;
        } while (i12 == 255);
        return i13;
    }

    public f b() {
        return this.f72355a;
    }

    public d0 c() {
        return this.f72356b;
    }

    public boolean d(m mVar) {
        int i11;
        com.google.android.exoplayer2.util.a.g(mVar != null);
        if (this.f72359e) {
            this.f72359e = false;
            this.f72356b.L(0);
        }
        while (!this.f72359e) {
            if (this.f72357c < 0) {
                if (!this.f72355a.c(mVar) || !this.f72355a.a(mVar, true)) {
                    return false;
                }
                f fVar = this.f72355a;
                int iA = fVar.f72367h;
                if ((fVar.f72361b & 1) == 1 && this.f72356b.f() == 0) {
                    iA += a(0);
                    i11 = this.f72358d;
                } else {
                    i11 = 0;
                }
                if (!o.e(mVar, iA)) {
                    return false;
                }
                this.f72357c = i11;
            }
            int iA2 = a(this.f72357c);
            int i12 = this.f72357c + this.f72358d;
            if (iA2 > 0) {
                d0 d0Var = this.f72356b;
                d0Var.c(d0Var.f() + iA2);
                if (!o.d(mVar, this.f72356b.d(), this.f72356b.f(), iA2)) {
                    return false;
                }
                d0 d0Var2 = this.f72356b;
                d0Var2.O(d0Var2.f() + iA2);
                this.f72359e = this.f72355a.f72369j[i12 + (-1)] != 255;
            }
            if (i12 == this.f72355a.f72366g) {
                i12 = -1;
            }
            this.f72357c = i12;
        }
        return true;
    }

    public void e() {
        this.f72355a.b();
        this.f72356b.L(0);
        this.f72357c = -1;
        this.f72359e = false;
    }

    public void f() {
        if (this.f72356b.d().length == 65025) {
            return;
        }
        d0 d0Var = this.f72356b;
        d0Var.N(Arrays.copyOf(d0Var.d(), Math.max(OggPageHeader.MAX_PAGE_PAYLOAD, this.f72356b.f())), this.f72356b.f());
    }
}
