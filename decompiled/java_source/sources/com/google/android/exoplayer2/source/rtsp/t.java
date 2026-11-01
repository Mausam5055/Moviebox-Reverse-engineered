package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes3.dex */
final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f26486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f26487b;

    public t(a aVar, Uri uri) {
        com.google.android.exoplayer2.util.a.a(aVar.f26311i.containsKey("control"));
        this.f26486a = b(aVar);
        this.f26487b = a(uri, (String) p0.j((String) aVar.f26311i.get("control")));
    }

    private static Uri a(Uri uri, String str) {
        Uri uri2 = Uri.parse(str);
        if (uri2.isAbsolute()) {
            return uri2;
        }
        return str.equals("*") ? uri : uri.buildUpon().appendEncodedPath(str).build();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0071  */
    static j b(a aVar) {
        int iD;
        byte b11;
        o1.b bVar = new o1.b();
        int i11 = aVar.f26307e;
        if (i11 > 0) {
            bVar.G(i11);
        }
        a.c cVar = aVar.f26312j;
        int i12 = cVar.f26322a;
        String strA = j.a(cVar.f26323b);
        bVar.e0(strA);
        int i13 = aVar.f26312j.f26324c;
        if (MimeTypes.BASE_TYPE_AUDIO.equals(aVar.f26303a)) {
            iD = d(aVar.f26312j.f26325d, strA);
            bVar.f0(i13).H(iD);
        } else {
            iD = -1;
        }
        ImmutableMap immutableMapA = aVar.a();
        int iHashCode = strA.hashCode();
        if (iHashCode != -53558318) {
            if (iHashCode != 187078296) {
                if (iHashCode == 1331836730 && strA.equals(MimeTypes.VIDEO_H264)) {
                    b11 = 1;
                } else {
                    b11 = -1;
                }
            } else if (strA.equals(MimeTypes.AUDIO_AC3)) {
                b11 = 2;
            } else {
                b11 = -1;
            }
        } else if (strA.equals(MimeTypes.AUDIO_AAC)) {
            b11 = 0;
        } else {
            b11 = -1;
        }
        if (b11 == 0) {
            com.google.android.exoplayer2.util.a.a(iD != -1);
            com.google.android.exoplayer2.util.a.a(!immutableMapA.isEmpty());
            e(bVar, immutableMapA, iD, i13);
        } else if (b11 == 1) {
            com.google.android.exoplayer2.util.a.a(!immutableMapA.isEmpty());
            f(bVar, immutableMapA);
        }
        com.google.android.exoplayer2.util.a.a(i13 > 0);
        return new j(bVar.E(), i12, i13, immutableMapA);
    }

    private static byte[] c(String str) {
        byte[] bArrDecode = Base64.decode(str, 0);
        int length = bArrDecode.length;
        byte[] bArr = com.google.android.exoplayer2.util.x.f27664a;
        byte[] bArr2 = new byte[length + bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(bArrDecode, 0, bArr2, bArr.length, bArrDecode.length);
        return bArr2;
    }

    private static int d(int i11, String str) {
        if (i11 != -1) {
            return i11;
        }
        return str.equals(MimeTypes.AUDIO_AC3) ? 6 : 1;
    }

    private static void e(o1.b bVar, ImmutableMap immutableMap, int i11, int i12) {
        com.google.android.exoplayer2.util.a.a(immutableMap.containsKey("profile-level-id"));
        String strValueOf = String.valueOf((String) com.google.android.exoplayer2.util.a.e((String) immutableMap.get("profile-level-id")));
        bVar.I(strValueOf.length() != 0 ? "mp4a.40.".concat(strValueOf) : new String("mp4a.40."));
        bVar.T(ImmutableList.of(com.google.android.exoplayer2.audio.a.a(i12, i11)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void f(o1.b bVar, ImmutableMap immutableMap) {
        com.google.android.exoplayer2.util.a.a(immutableMap.containsKey("sprop-parameter-sets"));
        String[] strArrS0 = p0.S0((String) com.google.android.exoplayer2.util.a.e((String) immutableMap.get("sprop-parameter-sets")), ",");
        com.google.android.exoplayer2.util.a.a(strArrS0.length == 2);
        ImmutableList immutableListOf = ImmutableList.of(c(strArrS0[0]), c(strArrS0[1]));
        bVar.T(immutableListOf);
        byte[] bArr = (byte[]) immutableListOf.get(0);
        com.google.android.exoplayer2.util.x.c cVarL = com.google.android.exoplayer2.util.x.l(bArr, com.google.android.exoplayer2.util.x.f27664a.length, bArr.length);
        bVar.a0(cVarL.f27688h);
        bVar.Q(cVarL.f27687g);
        bVar.j0(cVarL.f27686f);
        String str = (String) immutableMap.get("profile-level-id");
        if (str != null) {
            bVar.I(str.length() != 0 ? "avc1.".concat(str) : new String("avc1."));
        } else {
            bVar.I(com.google.android.exoplayer2.util.f.a(cVarL.f27681a, cVarL.f27682b, cVarL.f27683c));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        return this.f26486a.equals(tVar.f26486a) && this.f26487b.equals(tVar.f26487b);
    }

    public int hashCode() {
        return ((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f26486a.hashCode()) * 31) + this.f26487b.hashCode();
    }
}
