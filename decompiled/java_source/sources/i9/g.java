package i9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes4.dex */
final class g implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o1 f65077a;

    public g(o1 o1Var) {
        this.f65077a = o1Var;
    }

    private static String a(int i11) {
        switch (i11) {
            case 808802372:
            case 877677894:
            case 1145656883:
            case 1145656920:
            case 1482049860:
            case 1684633208:
            case 2021026148:
                return MimeTypes.VIDEO_MP4V;
            case 826496577:
            case 828601953:
            case 875967048:
                return MimeTypes.VIDEO_H264;
            case 842289229:
                return "video/mp42";
            case 859066445:
                return "video/mp43";
            case 1196444237:
            case 1735420525:
                return "video/mjpeg";
            default:
                return null;
        }
    }

    private static String b(int i11) {
        if (i11 == 1) {
            return MimeTypes.AUDIO_RAW;
        }
        if (i11 == 85) {
            return MimeTypes.AUDIO_MPEG;
        }
        if (i11 == 255) {
            return MimeTypes.AUDIO_AAC;
        }
        if (i11 == 8192) {
            return MimeTypes.AUDIO_AC3;
        }
        if (i11 != 8193) {
            return null;
        }
        return MimeTypes.AUDIO_DTS;
    }

    private static a c(d0 d0Var) {
        d0Var.Q(4);
        int iQ = d0Var.q();
        int iQ2 = d0Var.q();
        d0Var.Q(4);
        int iQ3 = d0Var.q();
        String strA = a(iQ3);
        if (strA != null) {
            o1.b bVar = new o1.b();
            bVar.j0(iQ).Q(iQ2).e0(strA);
            return new g(bVar.E());
        }
        s.i("StreamFormatChunk", "Ignoring track with unsupported compression " + iQ3);
        return null;
    }

    public static a d(int i11, d0 d0Var) {
        if (i11 == 2) {
            return c(d0Var);
        }
        if (i11 == 1) {
            return e(d0Var);
        }
        s.i("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + p0.m0(i11));
        return null;
    }

    private static a e(d0 d0Var) {
        int iV = d0Var.v();
        String strB = b(iV);
        if (strB == null) {
            s.i("StreamFormatChunk", "Ignoring track with unsupported format tag " + iV);
            return null;
        }
        int iV2 = d0Var.v();
        int iQ = d0Var.q();
        d0Var.Q(6);
        int iC0 = p0.c0(d0Var.J());
        int iV3 = d0Var.v();
        byte[] bArr = new byte[iV3];
        d0Var.j(bArr, 0, iV3);
        o1.b bVar = new o1.b();
        bVar.e0(strB).H(iV2).f0(iQ);
        if (MimeTypes.AUDIO_RAW.equals(strB) && iC0 != 0) {
            bVar.Y(iC0);
        }
        if (MimeTypes.AUDIO_AAC.equals(strB) && iV3 > 0) {
            bVar.T(ImmutableList.of(bArr));
        }
        return new g(bVar.E());
    }

    @Override // i9.a
    public int getType() {
        return 1718776947;
    }
}
