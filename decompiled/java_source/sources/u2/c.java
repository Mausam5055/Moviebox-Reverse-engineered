package u2;

import androidx.media3.common.x;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c implements a {
    @Override // u2.a
    public final x a(b bVar) {
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(bVar.f10918c);
        androidx.media3.common.util.a.a(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        return b(bVar, byteBuffer);
    }

    protected abstract x b(b bVar, ByteBuffer byteBuffer);
}
