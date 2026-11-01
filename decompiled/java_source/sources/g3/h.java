package g3;

import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import androidx.media3.common.x;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.List;
import l2.k0;
import l2.v0;

/* JADX INFO: loaded from: classes2.dex */
final class h extends i {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final byte[] f63308o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final byte[] f63309p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f63310n;

    h() {
    }

    private static boolean n(j0 j0Var, byte[] bArr) {
        if (j0Var.a() < bArr.length) {
            return false;
        }
        int iF = j0Var.f();
        byte[] bArr2 = new byte[bArr.length];
        j0Var.l(bArr2, 0, bArr.length);
        j0Var.W(iF);
        return Arrays.equals(bArr2, bArr);
    }

    public static boolean o(j0 j0Var) {
        return n(j0Var, f63308o);
    }

    @Override // g3.i
    protected long f(j0 j0Var) {
        return c(k0.e(j0Var.e()));
    }

    @Override // g3.i
    protected boolean h(j0 j0Var, long j11, i.b bVar) {
        if (n(j0Var, f63308o)) {
            byte[] bArrCopyOf = Arrays.copyOf(j0Var.e(), j0Var.g());
            int iC = k0.c(bArrCopyOf);
            List listA = k0.a(bArrCopyOf);
            if (bVar.f63324a != null) {
                return true;
            }
            bVar.f63324a = new r.b().U("audio/ogg").u0(MimeTypes.AUDIO_OPUS).R(iC).v0(48000).g0(listA).N();
            return true;
        }
        byte[] bArr = f63309p;
        if (!n(j0Var, bArr)) {
            androidx.media3.common.util.a.i(bVar.f63324a);
            return false;
        }
        androidx.media3.common.util.a.i(bVar.f63324a);
        if (this.f63310n) {
            return true;
        }
        this.f63310n = true;
        j0Var.X(bArr.length);
        x xVarD = v0.d(ImmutableList.copyOf(v0.k(j0Var, false, false).f68696b));
        if (xVarD == null) {
            return true;
        }
        bVar.f63324a = bVar.f63324a.b().n0(xVarD.b(bVar.f63324a.f10158l)).N();
        return true;
    }

    @Override // g3.i
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f63310n = false;
        }
    }
}
