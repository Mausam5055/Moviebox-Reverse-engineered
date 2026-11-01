package androidx.datastore.preferences.protobuf;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Charset f8915a = Charset.forName(C.ASCII_NAME);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Charset f8916b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Charset f8917c = Charset.forName("ISO-8859-1");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f8918d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ByteBuffer f8919e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final i f8920f;

    public interface a {
        int getNumber();
    }

    public interface b {
    }

    public interface c {
        boolean isInRange(int i11);
    }

    public interface d extends List, RandomAccess {
        boolean isModifiable();

        void makeImmutable();

        d mutableCopyWithCapacity(int i11);
    }

    static {
        byte[] bArr = new byte[0];
        f8918d = bArr;
        f8919e = ByteBuffer.wrap(bArr);
        f8920f = i.k(bArr);
    }

    static Object a(Object obj) {
        obj.getClass();
        return obj;
    }

    static Object b(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }

    public static int c(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int d(byte[] bArr) {
        return e(bArr, 0, bArr.length);
    }

    static int e(byte[] bArr, int i11, int i12) {
        int iG = g(i12, bArr, i11, i12);
        if (iG == 0) {
            return 1;
        }
        return iG;
    }

    public static int f(long j11) {
        return (int) (j11 ^ (j11 >>> 32));
    }

    static int g(int i11, byte[] bArr, int i12, int i13) {
        for (int i14 = i12; i14 < i12 + i13; i14++) {
            i11 = (i11 * 31) + bArr[i14];
        }
        return i11;
    }
}
