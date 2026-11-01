package b3;

import androidx.media3.common.util.i0;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import androidx.media3.common.x;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends u2.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f16177a = new j0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i0 f16178b = new i0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private p0 f16179c;

    @Override // u2.c
    protected x b(u2.b bVar, ByteBuffer byteBuffer) {
        x.a eVar;
        p0 p0Var = this.f16179c;
        if (p0Var == null || bVar.f76614i != p0Var.f()) {
            p0 p0Var2 = new p0(bVar.f10920e);
            this.f16179c = p0Var2;
            p0Var2.a(bVar.f10920e - bVar.f76614i);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.f16177a.U(bArrArray, iLimit);
        this.f16178b.o(bArrArray, iLimit);
        this.f16178b.r(39);
        long jH = (((long) this.f16178b.h(1)) << 32) | ((long) this.f16178b.h(32));
        this.f16178b.r(20);
        int iH = this.f16178b.h(12);
        int iH2 = this.f16178b.h(8);
        this.f16177a.X(14);
        if (iH2 == 0) {
            eVar = new e();
        } else if (iH2 == 255) {
            eVar = a.b(this.f16177a, iH, jH);
        } else if (iH2 == 4) {
            eVar = f.b(this.f16177a);
        } else if (iH2 != 5) {
            eVar = iH2 != 6 ? null : g.b(this.f16177a, jH, this.f16179c);
        } else {
            eVar = d.b(this.f16177a, jH, this.f16179c);
        }
        return eVar == null ? new x(new x.a[0]) : new x(eVar);
    }
}
