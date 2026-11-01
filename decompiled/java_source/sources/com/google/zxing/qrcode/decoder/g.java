package com.google.zxing.qrcode.decoder;

import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.zxing.FormatException;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes4.dex */
public final class g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f32994e = {31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final g[] f32995f = b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f32996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f32997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b[] f32998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f32999d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f33000a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f33001b;

        a(int i11, int i12) {
            this.f33000a = i11;
            this.f33001b = i12;
        }

        public int a() {
            return this.f33000a;
        }

        public int b() {
            return this.f33001b;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f33002a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a[] f33003b;

        b(int i11, a... aVarArr) {
            this.f33002a = i11;
            this.f33003b = aVarArr;
        }

        public a[] a() {
            return this.f33003b;
        }

        public int b() {
            return this.f33002a;
        }

        public int c() {
            int iA = 0;
            for (a aVar : this.f33003b) {
                iA += aVar.a();
            }
            return iA;
        }

        public int d() {
            return this.f33002a * c();
        }
    }

    private g(int i11, int[] iArr, b... bVarArr) {
        this.f32996a = i11;
        this.f32997b = iArr;
        this.f32998c = bVarArr;
        int iB = bVarArr[0].b();
        int iA = 0;
        for (a aVar : bVarArr[0].a()) {
            iA += aVar.a() * (aVar.b() + iB);
        }
        this.f32999d = iA;
    }

    private static g[] b() {
        return new g[]{new g(1, new int[0], new b(7, new a(1, 19)), new b(10, new a(1, 16)), new b(13, new a(1, 13)), new b(17, new a(1, 9))), new g(2, new int[]{6, 18}, new b(10, new a(1, 34)), new b(16, new a(1, 28)), new b(22, new a(1, 22)), new b(28, new a(1, 16))), new g(3, new int[]{6, 22}, new b(15, new a(1, 55)), new b(26, new a(1, 44)), new b(18, new a(2, 17)), new b(22, new a(2, 13))), new g(4, new int[]{6, 26}, new b(20, new a(1, 80)), new b(18, new a(2, 32)), new b(26, new a(2, 24)), new b(16, new a(4, 9))), new g(5, new int[]{6, 30}, new b(26, new a(1, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY)), new b(24, new a(2, 43)), new b(18, new a(2, 15), new a(2, 16)), new b(22, new a(2, 11), new a(2, 12))), new g(6, new int[]{6, 34}, new b(18, new a(2, 68)), new b(16, new a(4, 27)), new b(24, new a(4, 19)), new b(28, new a(4, 15))), new g(7, new int[]{6, 22, 38}, new b(20, new a(2, 78)), new b(18, new a(4, 31)), new b(18, new a(2, 14), new a(4, 15)), new b(26, new a(4, 13), new a(1, 14))), new g(8, new int[]{6, 24, 42}, new b(24, new a(2, 97)), new b(22, new a(2, 38), new a(2, 39)), new b(22, new a(4, 18), new a(2, 19)), new b(26, new a(4, 14), new a(2, 15))), new g(9, new int[]{6, 26, 46}, new b(30, new a(2, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE)), new b(22, new a(3, 36), new a(2, 37)), new b(20, new a(4, 16), new a(4, 17)), new b(24, new a(4, 12), new a(4, 13))), new g(10, new int[]{6, 28, 50}, new b(18, new a(2, 68), new a(2, 69)), new b(26, new a(4, 43), new a(1, 44)), new b(24, new a(6, 19), new a(2, 20)), new b(28, new a(6, 15), new a(2, 16))), new g(11, new int[]{6, 30, 54}, new b(20, new a(4, 81)), new b(30, new a(1, 50), new a(4, 51)), new b(28, new a(4, 22), new a(4, 23)), new b(24, new a(3, 12), new a(8, 13))), new g(12, new int[]{6, 32, 58}, new b(24, new a(2, 92), new a(2, 93)), new b(22, new a(6, 36), new a(2, 37)), new b(26, new a(4, 20), new a(6, 21)), new b(28, new a(7, 14), new a(4, 15))), new g(13, new int[]{6, 34, 62}, new b(26, new a(4, 107)), new b(22, new a(8, 37), new a(1, 38)), new b(24, new a(8, 20), new a(4, 21)), new b(22, new a(12, 11), new a(4, 12))), new g(14, new int[]{6, 26, 46, 66}, new b(30, new a(3, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE), new a(1, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE)), new b(24, new a(4, 40), new a(5, 41)), new b(20, new a(11, 16), new a(5, 17)), new b(24, new a(11, 12), new a(5, 13))), new g(15, new int[]{6, 26, 48, 70}, new b(22, new a(5, 87), new a(1, 88)), new b(24, new a(5, 41), new a(5, 42)), new b(30, new a(5, 24), new a(7, 25)), new b(24, new a(11, 12), new a(7, 13))), new g(16, new int[]{6, 26, 50, 74}, new b(24, new a(5, 98), new a(1, 99)), new b(28, new a(7, 45), new a(3, 46)), new b(24, new a(15, 19), new a(2, 20)), new b(30, new a(3, 15), new a(13, 16))), new g(17, new int[]{6, 30, 54, 78}, new b(28, new a(1, 107), new a(5, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY)), new b(28, new a(10, 46), new a(1, 47)), new b(28, new a(1, 22), new a(15, 23)), new b(28, new a(2, 14), new a(17, 15))), new g(18, new int[]{6, 30, 56, 82}, new b(30, new a(5, 120), new a(1, Sdk$SDKError.Reason.TPAT_ERROR_VALUE)), new b(26, new a(9, 43), new a(4, 44)), new b(28, new a(17, 22), new a(1, 23)), new b(28, new a(2, 14), new a(19, 15))), new g(19, new int[]{6, 30, 58, 86}, new b(28, new a(3, 113), new a(4, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE)), new b(26, new a(3, 44), new a(11, 45)), new b(26, new a(17, 21), new a(4, 22)), new b(26, new a(9, 13), new a(16, 14))), new g(20, new int[]{6, 34, 62, 90}, new b(28, new a(3, 107), new a(5, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY)), new b(26, new a(3, 41), new a(13, 42)), new b(30, new a(15, 24), new a(5, 25)), new b(28, new a(15, 15), new a(10, 16))), new g(21, new int[]{6, 28, 50, 72, 94}, new b(28, new a(4, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE), new a(4, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE)), new b(26, new a(17, 42)), new b(28, new a(17, 22), new a(6, 23)), new b(30, new a(19, 16), new a(6, 17))), new g(22, new int[]{6, 26, 50, 74, 98}, new b(28, new a(2, 111), new a(7, 112)), new b(28, new a(17, 46)), new b(30, new a(7, 24), new a(16, 25)), new b(24, new a(34, 13))), new g(23, new int[]{6, 30, 54, 78, 102}, new b(30, new a(4, Sdk$SDKError.Reason.TPAT_ERROR_VALUE), new a(5, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE)), new b(28, new a(4, 47), new a(14, 48)), new b(30, new a(11, 24), new a(14, 25)), new b(30, new a(16, 15), new a(14, 16))), new g(24, new int[]{6, 28, 54, 80, 106}, new b(30, new a(6, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE), new a(4, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE)), new b(28, new a(6, 45), new a(14, 46)), new b(30, new a(11, 24), new a(16, 25)), new b(30, new a(30, 16), new a(2, 17))), new g(25, new int[]{6, 32, 58, 84, 110}, new b(26, new a(8, 106), new a(4, 107)), new b(28, new a(8, 47), new a(13, 48)), new b(30, new a(7, 24), new a(22, 25)), new b(30, new a(22, 15), new a(13, 16))), new g(26, new int[]{6, 30, 58, 86, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE}, new b(28, new a(10, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE), new a(2, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE)), new b(28, new a(19, 46), new a(4, 47)), new b(28, new a(28, 22), new a(6, 23)), new b(30, new a(33, 16), new a(4, 17))), new g(27, new int[]{6, 34, 62, 90, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE}, new b(30, new a(8, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE), new a(4, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE)), new b(28, new a(22, 45), new a(3, 46)), new b(30, new a(8, 23), new a(26, 24)), new b(30, new a(12, 15), new a(28, 16))), new g(28, new int[]{6, 26, 50, 74, 98, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE}, new b(30, new a(3, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE), new a(10, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE)), new b(28, new a(3, 45), new a(23, 46)), new b(30, new a(4, 24), new a(31, 25)), new b(30, new a(11, 15), new a(31, 16))), new g(29, new int[]{6, 30, 54, 78, 102, 126}, new b(30, new a(7, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE), new a(7, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE)), new b(28, new a(21, 45), new a(7, 46)), new b(30, new a(1, 23), new a(37, 24)), new b(30, new a(19, 15), new a(26, 16))), new g(30, new int[]{6, 26, 52, 78, 104, 130}, new b(30, new a(5, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE), new a(10, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE)), new b(28, new a(19, 47), new a(10, 48)), new b(30, new a(15, 24), new a(25, 25)), new b(30, new a(23, 15), new a(25, 16))), new g(31, new int[]{6, 30, 56, 82, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 134}, new b(30, new a(13, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE), new a(3, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE)), new b(28, new a(2, 46), new a(29, 47)), new b(30, new a(42, 24), new a(1, 25)), new b(30, new a(23, 15), new a(28, 16))), new g(32, new int[]{6, 34, 60, 86, 112, 138}, new b(30, new a(17, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE)), new b(28, new a(10, 46), new a(23, 47)), new b(30, new a(10, 24), new a(35, 25)), new b(30, new a(19, 15), new a(35, 16))), new g(33, new int[]{6, 30, 58, 86, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 142}, new b(30, new a(17, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE), new a(1, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE)), new b(28, new a(14, 46), new a(21, 47)), new b(30, new a(29, 24), new a(19, 25)), new b(30, new a(11, 15), new a(46, 16))), new g(34, new int[]{6, 34, 62, 90, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 146}, new b(30, new a(13, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE), new a(6, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE)), new b(28, new a(14, 46), new a(23, 47)), new b(30, new a(44, 24), new a(7, 25)), new b(30, new a(59, 16), new a(1, 17))), new g(35, new int[]{6, 30, 54, 78, 102, 126, 150}, new b(30, new a(12, Sdk$SDKError.Reason.TPAT_ERROR_VALUE), new a(7, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE)), new b(28, new a(12, 47), new a(26, 48)), new b(30, new a(39, 24), new a(14, 25)), new b(30, new a(22, 15), new a(41, 16))), new g(36, new int[]{6, 24, 50, 76, 102, 128, 154}, new b(30, new a(6, Sdk$SDKError.Reason.TPAT_ERROR_VALUE), new a(14, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE)), new b(28, new a(6, 47), new a(34, 48)), new b(30, new a(46, 24), new a(10, 25)), new b(30, new a(2, 15), new a(64, 16))), new g(37, new int[]{6, 28, 54, 80, 106, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, 158}, new b(30, new a(17, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE), new a(4, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE)), new b(28, new a(29, 46), new a(14, 47)), new b(30, new a(49, 24), new a(10, 25)), new b(30, new a(24, 15), new a(46, 16))), new g(38, new int[]{6, 32, 58, 84, 110, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 162}, new b(30, new a(4, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE), new a(18, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE)), new b(28, new a(13, 46), new a(32, 47)), new b(30, new a(48, 24), new a(14, 25)), new b(30, new a(42, 15), new a(32, 16))), new g(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new b(30, new a(20, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE), new a(4, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE)), new b(28, new a(40, 47), new a(7, 48)), new b(30, new a(43, 24), new a(22, 25)), new b(30, new a(10, 15), new a(67, 16))), new g(40, new int[]{6, 30, 58, 86, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 142, 170}, new b(30, new a(19, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), new a(6, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE)), new b(28, new a(18, 47), new a(31, 48)), new b(30, new a(34, 24), new a(34, 25)), new b(30, new a(20, 15), new a(61, 16)))};
    }

    static g c(int i11) {
        int i12 = Integer.MAX_VALUE;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int[] iArr = f32994e;
            if (i13 >= iArr.length) {
                if (i12 <= 3) {
                    return i(i14);
                }
                return null;
            }
            int i15 = iArr[i13];
            if (i15 == i11) {
                return i(i13 + 7);
            }
            int iE = e.e(i11, i15);
            if (iE < i12) {
                i14 = i13 + 7;
                i12 = iE;
            }
            i13++;
        }
    }

    public static g g(int i11) throws FormatException {
        if (i11 % 4 != 1) {
            throw FormatException.getFormatInstance();
        }
        try {
            return i((i11 - 17) / 4);
        } catch (IllegalArgumentException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    public static g i(int i11) {
        if (i11 < 1 || i11 > 40) {
            throw new IllegalArgumentException();
        }
        return f32995f[i11 - 1];
    }

    id.b a() {
        int iE = e();
        id.b bVar = new id.b(iE);
        bVar.s(0, 0, 9, 9);
        int i11 = iE - 8;
        bVar.s(i11, 0, 8, 9);
        bVar.s(0, i11, 9, 8);
        int length = this.f32997b.length;
        for (int i12 = 0; i12 < length; i12++) {
            int i13 = this.f32997b[i12] - 2;
            for (int i14 = 0; i14 < length; i14++) {
                if ((i12 != 0 || (i14 != 0 && i14 != length - 1)) && (i12 != length - 1 || i14 != 0)) {
                    bVar.s(this.f32997b[i14] - 2, i13, 5, 5);
                }
            }
        }
        int i15 = iE - 17;
        bVar.s(6, 9, 1, i15);
        bVar.s(9, 6, i15, 1);
        if (this.f32996a > 6) {
            int i16 = iE - 11;
            bVar.s(i16, 0, 3, 6);
            bVar.s(0, i16, 6, 3);
        }
        return bVar;
    }

    public int[] d() {
        return this.f32997b;
    }

    public int e() {
        return (this.f32996a * 4) + 17;
    }

    public b f(ErrorCorrectionLevel errorCorrectionLevel) {
        return this.f32998c[errorCorrectionLevel.ordinal()];
    }

    public int h() {
        return this.f32999d;
    }

    public int j() {
        return this.f32996a;
    }

    public String toString() {
        return String.valueOf(this.f32996a);
    }
}
