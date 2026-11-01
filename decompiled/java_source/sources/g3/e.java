package g3;

import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggPageHeader;
import java.util.Arrays;
import l2.s;
import l2.u;

/* JADX INFO: loaded from: classes2.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f63292a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j0 f63293b = new j0(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f63294c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f63295d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f63296e;

    e() {
    }

    private int a(int i11) {
        int i12;
        int i13 = 0;
        this.f63295d = 0;
        do {
            int i14 = this.f63295d;
            int i15 = i11 + i14;
            f fVar = this.f63292a;
            if (i15 >= fVar.f63303g) {
                break;
            }
            int[] iArr = fVar.f63306j;
            this.f63295d = i14 + 1;
            i12 = iArr[i14 + i11];
            i13 += i12;
        } while (i12 == 255);
        return i13;
    }

    public f b() {
        return this.f63292a;
    }

    public j0 c() {
        return this.f63293b;
    }

    public boolean d(s sVar) {
        int i11;
        androidx.media3.common.util.a.g(sVar != null);
        if (this.f63296e) {
            this.f63296e = false;
            this.f63293b.S(0);
        }
        while (!this.f63296e) {
            if (this.f63294c < 0) {
                if (!this.f63292a.c(sVar) || !this.f63292a.a(sVar, true)) {
                    return false;
                }
                f fVar = this.f63292a;
                int iA = fVar.f63304h;
                if ((fVar.f63298b & 1) == 1 && this.f63293b.g() == 0) {
                    iA += a(0);
                    i11 = this.f63295d;
                } else {
                    i11 = 0;
                }
                if (!u.e(sVar, iA)) {
                    return false;
                }
                this.f63294c = i11;
            }
            int iA2 = a(this.f63294c);
            int i12 = this.f63294c + this.f63295d;
            if (iA2 > 0) {
                j0 j0Var = this.f63293b;
                j0Var.c(j0Var.g() + iA2);
                if (!u.d(sVar, this.f63293b.e(), this.f63293b.g(), iA2)) {
                    return false;
                }
                j0 j0Var2 = this.f63293b;
                j0Var2.V(j0Var2.g() + iA2);
                this.f63296e = this.f63292a.f63306j[i12 + (-1)] != 255;
            }
            if (i12 == this.f63292a.f63303g) {
                i12 = -1;
            }
            this.f63294c = i12;
        }
        return true;
    }

    public void e() {
        this.f63292a.b();
        this.f63293b.S(0);
        this.f63294c = -1;
        this.f63296e = false;
    }

    public void f() {
        if (this.f63293b.e().length == 65025) {
            return;
        }
        j0 j0Var = this.f63293b;
        j0Var.U(Arrays.copyOf(j0Var.e(), Math.max(OggPageHeader.MAX_PAGE_PAYLOAD, this.f63293b.g())), this.f63293b.g());
    }
}
