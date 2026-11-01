package com.mbridge.msdk.thrid.okhttp;

import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f37875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Comparator<String> f37808b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map<String, f> f37811c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final f f37814d = a("SSL_RSA_WITH_NULL_MD5", 1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final f f37817e = a("SSL_RSA_WITH_NULL_SHA", 2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final f f37820f = a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final f f37823g = a("SSL_RSA_WITH_RC4_128_MD5", 4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final f f37826h = a("SSL_RSA_WITH_RC4_128_SHA", 5);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final f f37829i = a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final f f37832j = a("SSL_RSA_WITH_DES_CBC_SHA", 9);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final f f37835k = a("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final f f37838l = a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final f f37841m = a("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final f f37844n = a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final f f37847o = a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final f f37850p = a("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final f f37853q = a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final f f37856r = a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final f f37859s = a("SSL_DH_anon_WITH_RC4_128_MD5", 24);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final f f37861t = a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final f f37863u = a("SSL_DH_anon_WITH_DES_CBC_SHA", 26);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final f f37865v = a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final f f37867w = a("TLS_KRB5_WITH_DES_CBC_SHA", 30);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final f f37869x = a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final f f37871y = a("TLS_KRB5_WITH_RC4_128_SHA", 32);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final f f37873z = a("TLS_KRB5_WITH_DES_CBC_MD5", 34);
    public static final f A = a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
    public static final f B = a("TLS_KRB5_WITH_RC4_128_MD5", 36);
    public static final f C = a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
    public static final f D = a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
    public static final f E = a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
    public static final f F = a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
    public static final f G = a("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
    public static final f H = a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
    public static final f I = a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
    public static final f J = a("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
    public static final f K = a("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
    public static final f L = a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
    public static final f M = a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
    public static final f N = a("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
    public static final f O = a("TLS_RSA_WITH_NULL_SHA256", 59);
    public static final f P = a("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
    public static final f Q = a("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
    public static final f R = a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
    public static final f S = a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
    public static final f T = a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
    public static final f U = a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
    public static final f V = a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
    public static final f W = a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
    public static final f X = a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
    public static final f Y = a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY);
    public static final f Z = a("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final f f37806a0 = a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final f f37809b0 = a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final f f37812c0 = a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final f f37815d0 = a("TLS_PSK_WITH_RC4_128_SHA", 138);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final f f37818e0 = a("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final f f37821f0 = a("TLS_PSK_WITH_AES_128_CBC_SHA", 140);

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final f f37824g0 = a("TLS_PSK_WITH_AES_256_CBC_SHA", 141);

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final f f37827h0 = a("TLS_RSA_WITH_SEED_CBC_SHA", 150);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final f f37830i0 = a("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final f f37833j0 = a("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final f f37836k0 = a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final f f37839l0 = a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final f f37842m0 = a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final f f37845n0 = a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final f f37848o0 = a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final f f37851p0 = a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final f f37854q0 = a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static final f f37857r0 = a("TLS_FALLBACK_SCSV", 22016);

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final f f37860s0 = a("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final f f37862t0 = a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final f f37864u0 = a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static final f f37866v0 = a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static final f f37868w0 = a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static final f f37870x0 = a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static final f f37872y0 = a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static final f f37874z0 = a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
    public static final f A0 = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
    public static final f B0 = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
    public static final f C0 = a("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
    public static final f D0 = a("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
    public static final f E0 = a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
    public static final f F0 = a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
    public static final f G0 = a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
    public static final f H0 = a("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
    public static final f I0 = a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
    public static final f J0 = a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
    public static final f K0 = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
    public static final f L0 = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
    public static final f M0 = a("TLS_ECDH_anon_WITH_NULL_SHA", 49173);
    public static final f N0 = a("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
    public static final f O0 = a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
    public static final f P0 = a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
    public static final f Q0 = a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
    public static final f R0 = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
    public static final f S0 = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
    public static final f T0 = a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
    public static final f U0 = a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
    public static final f V0 = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
    public static final f W0 = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
    public static final f X0 = a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
    public static final f Y0 = a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
    public static final f Z0 = a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public static final f f37807a1 = a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public static final f f37810b1 = a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public static final f f37813c1 = a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public static final f f37816d1 = a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public static final f f37819e1 = a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public static final f f37822f1 = a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public static final f f37825g1 = a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public static final f f37828h1 = a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public static final f f37831i1 = a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public static final f f37834j1 = a("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public static final f f37837k1 = a("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public static final f f37840l1 = a("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52394);

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public static final f f37843m1 = a("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 52396);

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public static final f f37846n1 = a("TLS_AES_128_GCM_SHA256", 4865);

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public static final f f37849o1 = a("TLS_AES_256_GCM_SHA384", 4866);

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public static final f f37852p1 = a("TLS_CHACHA20_POLY1305_SHA256", 4867);

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public static final f f37855q1 = a("TLS_AES_128_CCM_SHA256", 4868);

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public static final f f37858r1 = a("TLS_AES_256_CCM_8_SHA256", 4869);

    static class a implements Comparator<String> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            int iMin = Math.min(str.length(), str2.length());
            for (int i11 = 4; i11 < iMin; i11++) {
                char cCharAt = str.charAt(i11);
                char cCharAt2 = str2.charAt(i11);
                if (cCharAt != cCharAt2) {
                    return cCharAt < cCharAt2 ? -1 : 1;
                }
            }
            int length = str.length();
            int length2 = str2.length();
            if (length != length2) {
                return length < length2 ? -1 : 1;
            }
            return 0;
        }
    }

    private f(String str) {
        str.getClass();
        this.f37875a = str;
    }

    public static synchronized f a(String str) {
        f fVar;
        try {
            Map<String, f> map = f37811c;
            fVar = map.get(str);
            if (fVar == null) {
                fVar = map.get(b(str));
                if (fVar == null) {
                    fVar = new f(str);
                }
                map.put(str, fVar);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return fVar;
    }

    private static f a(String str, int i11) {
        f fVar = new f(str);
        f37811c.put(str, fVar);
        return fVar;
    }

    static List<f> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static String b(String str) {
        if (str.startsWith("TLS_")) {
            return "SSL_" + str.substring(4);
        }
        if (!str.startsWith("SSL_")) {
            return str;
        }
        return "TLS_" + str.substring(4);
    }

    public String toString() {
        return this.f37875a;
    }
}
