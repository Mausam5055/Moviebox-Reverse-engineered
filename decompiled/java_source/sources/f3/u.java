package f3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f62303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s0.a f62305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f62306d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f62307e;

    public u(boolean z10, String str, int i11, byte[] bArr, int i12, int i13, byte[] bArr2) {
        androidx.media3.common.util.a.a((bArr2 == null) ^ (i11 == 0));
        this.f62303a = z10;
        this.f62304b = str;
        this.f62306d = i11;
        this.f62307e = bArr2;
        this.f62305c = new s0.a(a(str), bArr, i12, i13);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static int a(String str) {
        if (str == null) {
            return 1;
        }
        byte b11 = -1;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals(C.CENC_TYPE_cbc1)) {
                    b11 = 0;
                }
                break;
            case 3046671:
                if (str.equals(C.CENC_TYPE_cbcs)) {
                    b11 = 1;
                }
                break;
            case 3049879:
                if (str.equals(C.CENC_TYPE_cenc)) {
                    b11 = 2;
                }
                break;
            case 3049895:
                if (str.equals(C.CENC_TYPE_cens)) {
                    b11 = 3;
                }
                break;
        }
        switch (b11) {
            case 0:
            case 1:
                return 2;
            default:
                androidx.media3.common.util.u.h("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
            case 2:
            case 3:
                return 1;
        }
    }
}
