package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.n0;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f26369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f26371c;

    private f0(long j11, int i11, Uri uri) {
        this.f26369a = j11;
        this.f26370b = i11;
        this.f26371c = uri;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0069  */
    public static ImmutableList a(String str, Uri uri) throws ParserException {
        byte b11;
        ImmutableList.a aVar = new ImmutableList.a();
        String[] strArrS0 = p0.S0(str, ",");
        int length = strArrS0.length;
        int i11 = 0;
        int i12 = 0;
        while (i12 < length) {
            String str2 = strArrS0[i12];
            String[] strArrS1 = p0.S0(str2, ";");
            int length2 = strArrS1.length;
            int i13 = i11;
            Uri uriB = null;
            int i14 = -1;
            long j11 = C.TIME_UNSET;
            while (i13 < length2) {
                String str3 = strArrS1[i13];
                try {
                    String[] strArrT0 = p0.T0(str3, UrlUtils.EQUAL_MARK);
                    String str4 = strArrT0[i11];
                    String str5 = strArrT0[1];
                    int iHashCode = str4.hashCode();
                    String[] strArr = strArrS0;
                    if (iHashCode != 113759) {
                        if (iHashCode != 116079) {
                            if (iHashCode == 1524180539 && str4.equals("rtptime")) {
                                b11 = 2;
                            } else {
                                b11 = -1;
                            }
                        } else if (str4.equals("url")) {
                            b11 = 0;
                        } else {
                            b11 = -1;
                        }
                    } else if (str4.equals("seq")) {
                        b11 = 1;
                    } else {
                        b11 = -1;
                    }
                    if (b11 == 0) {
                        uriB = b(str5, uri);
                    } else if (b11 == 1) {
                        i14 = Integer.parseInt(str5);
                    } else {
                        if (b11 != 2) {
                            throw ParserException.createForMalformedManifest(str4, null);
                        }
                        j11 = Long.parseLong(str5);
                    }
                    i13++;
                    strArrS0 = strArr;
                    i11 = 0;
                } catch (Exception e11) {
                    throw ParserException.createForMalformedManifest(str3, e11);
                }
            }
            String[] strArr2 = strArrS0;
            if (uriB != null && uriB.getScheme() != null) {
                long j12 = j11;
                if (i14 != -1 || j12 != C.TIME_UNSET) {
                    aVar.a(new f0(j12, i14, uriB));
                    i12++;
                    strArrS0 = strArr2;
                    i11 = 0;
                }
            }
            throw ParserException.createForMalformedManifest(str2, null);
        }
        return aVar.e();
    }

    static Uri b(String str, Uri uri) {
        com.google.android.exoplayer2.util.a.a(((String) com.google.android.exoplayer2.util.a.e(uri.getScheme())).equals("rtsp"));
        Uri uri2 = Uri.parse(str);
        if (uri2.isAbsolute()) {
            return uri2;
        }
        String strValueOf = String.valueOf(str);
        Uri uri3 = Uri.parse(strValueOf.length() != 0 ? "rtsp://".concat(strValueOf) : new String("rtsp://"));
        String string = uri.toString();
        if (((String) com.google.android.exoplayer2.util.a.e(uri3.getHost())).equals(uri.getHost())) {
            return uri3;
        }
        return string.endsWith("/") ? n0.e(string, str) : n0.e(string.concat("/"), str);
    }
}
