package w2;

import androidx.media3.common.util.j0;
import androidx.media3.common.x;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends u2.c {
    @Override // u2.c
    protected x b(u2.b bVar, ByteBuffer byteBuffer) {
        return new x(c(new j0(byteBuffer.array(), byteBuffer.limit())));
    }

    public a c(j0 j0Var) {
        return new a((String) androidx.media3.common.util.a.e(j0Var.B()), (String) androidx.media3.common.util.a.e(j0Var.B()), j0Var.A(), j0Var.A(), Arrays.copyOfRange(j0Var.e(), j0Var.f(), j0Var.g()));
    }
}
