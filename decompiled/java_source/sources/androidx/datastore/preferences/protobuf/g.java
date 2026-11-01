package androidx.datastore.preferences.protobuf;

import com.meituan.android.walle.ChannelReader;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes.dex */
abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal f8770a = new ThreadLocal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class f8771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f8772c;

    static {
        Class clsE = e("java.io.FileOutputStream");
        f8771b = clsE;
        f8772c = b(clsE);
    }

    private static byte[] a() {
        SoftReference softReference = (SoftReference) f8770a.get();
        if (softReference == null) {
            return null;
        }
        return (byte[]) softReference.get();
    }

    private static long b(Class cls) {
        if (cls == null) {
            return -1L;
        }
        try {
            if (k1.I()) {
                return k1.L(cls.getDeclaredField(ChannelReader.CHANNEL_KEY));
            }
            return -1L;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    private static byte[] c(int i11) {
        int iMax = Math.max(i11, 1024);
        byte[] bArrA = a();
        if (bArrA == null || d(iMax, bArrA.length)) {
            bArrA = new byte[iMax];
            if (iMax <= 16384) {
                f(bArrA);
            }
        }
        return bArrA;
    }

    private static boolean d(int i11, int i12) {
        return i12 < i11 && ((float) i12) < ((float) i11) * 0.5f;
    }

    private static Class e(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private static void f(byte[] bArr) {
        f8770a.set(new SoftReference(bArr));
    }

    static void g(ByteBuffer byteBuffer, OutputStream outputStream) {
        int iPosition = byteBuffer.position();
        try {
            if (byteBuffer.hasArray()) {
                outputStream.write(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            } else if (!h(byteBuffer, outputStream)) {
                byte[] bArrC = c(byteBuffer.remaining());
                while (byteBuffer.hasRemaining()) {
                    int iMin = Math.min(byteBuffer.remaining(), bArrC.length);
                    byteBuffer.get(bArrC, 0, iMin);
                    outputStream.write(bArrC, 0, iMin);
                }
            }
        } finally {
            y.c(byteBuffer, iPosition);
        }
    }

    private static boolean h(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        WritableByteChannel writableByteChannel;
        long j11 = f8772c;
        if (j11 < 0 || !f8771b.isInstance(outputStream)) {
            return false;
        }
        try {
            writableByteChannel = (WritableByteChannel) k1.G(outputStream, j11);
        } catch (ClassCastException unused) {
            writableByteChannel = null;
        }
        if (writableByteChannel == null) {
            return false;
        }
        writableByteChannel.write(byteBuffer);
        return true;
    }
}
