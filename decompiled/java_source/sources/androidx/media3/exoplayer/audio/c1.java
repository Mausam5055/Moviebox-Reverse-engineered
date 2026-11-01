package androidx.media3.exoplayer.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c1 {
    public static ByteBuffer a(ByteBuffer byteBuffer, int i11, int i12, int i13, int i14) {
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(byteBuffer.remaining()).order(ByteOrder.nativeOrder());
        int iPosition = byteBuffer.position();
        while (byteBuffer.hasRemaining() && i13 < i14) {
            c(byteBufferOrder, (int) ((((long) b(byteBuffer, i11)) * ((long) i13)) / ((long) i14)), i11);
            if (byteBuffer.position() == iPosition + i12) {
                i13++;
                iPosition = byteBuffer.position();
            }
        }
        byteBufferOrder.put(byteBuffer);
        byteBufferOrder.flip();
        return byteBufferOrder;
    }

    public static int b(ByteBuffer byteBuffer, int i11) {
        if (i11 == 2) {
            return ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16);
        }
        if (i11 == 3) {
            return (byteBuffer.get() & 255) << 24;
        }
        if (i11 == 4) {
            float fO = androidx.media3.common.util.a1.o(byteBuffer.getFloat(), -1.0f, 1.0f);
            return fO < 0.0f ? (int) ((-fO) * (-2.1474836E9f)) : (int) (fO * 2.1474836E9f);
        }
        if (i11 == 21) {
            return ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
        }
        if (i11 == 22) {
            return ((byteBuffer.get() & 255) << 24) | (byteBuffer.get() & 255) | ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
        }
        if (i11 == 268435456) {
            return ((byteBuffer.get() & 255) << 16) | ((byteBuffer.get() & 255) << 24);
        }
        if (i11 == 1342177280) {
            return ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16);
        }
        if (i11 == 1610612736) {
            return (byteBuffer.get() & 255) | ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16) | ((byteBuffer.get() & 255) << 8);
        }
        throw new IllegalStateException();
    }

    public static void c(ByteBuffer byteBuffer, int i11, int i12) {
        if (i12 == 2) {
            byteBuffer.put((byte) (i11 >> 16));
            byteBuffer.put((byte) (i11 >> 24));
            return;
        }
        if (i12 == 3) {
            byteBuffer.put((byte) (i11 >> 24));
            return;
        }
        if (i12 == 4) {
            if (i11 < 0) {
                byteBuffer.putFloat((-i11) / (-2.1474836E9f));
                return;
            } else {
                byteBuffer.putFloat(i11 / 2.1474836E9f);
                return;
            }
        }
        if (i12 == 21) {
            byteBuffer.put((byte) (i11 >> 8));
            byteBuffer.put((byte) (i11 >> 16));
            byteBuffer.put((byte) (i11 >> 24));
            return;
        }
        if (i12 == 22) {
            byteBuffer.put((byte) i11);
            byteBuffer.put((byte) (i11 >> 8));
            byteBuffer.put((byte) (i11 >> 16));
            byteBuffer.put((byte) (i11 >> 24));
            return;
        }
        if (i12 == 268435456) {
            byteBuffer.put((byte) (i11 >> 24));
            byteBuffer.put((byte) (i11 >> 16));
            return;
        }
        if (i12 == 1342177280) {
            byteBuffer.put((byte) (i11 >> 24));
            byteBuffer.put((byte) (i11 >> 16));
            byteBuffer.put((byte) (i11 >> 8));
        } else {
            if (i12 != 1610612736) {
                throw new IllegalStateException();
            }
            byteBuffer.put((byte) (i11 >> 24));
            byteBuffer.put((byte) (i11 >> 16));
            byteBuffer.put((byte) (i11 >> 8));
            byteBuffer.put((byte) i11);
        }
    }
}
