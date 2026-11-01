package com.cloud.hisavana.sdk;

import android.os.Build;
import android.text.TextUtils;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static k f22566e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Cipher f22569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Cipher f22570c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f22565d = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f22567f = "";

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ k a(a aVar, String str, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = aVar.c();
            }
            return aVar.b(str);
        }

        private final String c() {
            if (TextUtils.isEmpty(k.f22567f)) {
                k.f22567f = "ew3s" + d(1, 2) + f() + e();
            }
            return k.f22567f;
        }

        private final String d(int i11, int i12) {
            int i13 = i11 * i12;
            if (1 <= i13) {
                while (true) {
                    int i14 = ((i14 % i11 == 0 && i14 % i12 == 0) || i14 == i13) ? 1 : i14 + 1;
                }
            }
            return "U3N0";
        }

        private final String e() {
            String string = com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.abk4);
            Intrinsics.g(string, "getString(...)");
            return string;
        }

        private final String f() {
            return "Gdef";
        }

        public final synchronized k b(String id2) {
            k kVar;
            Intrinsics.h(id2, "id");
            kVar = k.f22566e;
            if (kVar == null) {
                kVar = new k(id2);
                k.f22566e = kVar;
            }
            return kVar;
        }
    }

    public k(String secretKey) {
        Intrinsics.h(secretKey, "secretKey");
        this.f22568a = "AttrUtil";
        try {
            byte[] bytes = secretKey.getBytes(Charsets.UTF_8);
            Intrinsics.g(bytes, "getBytes(...)");
            SecretKeySpec secretKeySpec = new SecretKeySpec(bytes, "AES");
            this.f22569b = Cipher.getInstance("AES");
            this.f22570c = Cipher.getInstance("AES");
            Cipher cipher = this.f22569b;
            if (cipher != null) {
                cipher.init(1, secretKeySpec);
            }
            Cipher cipher2 = this.f22570c;
            if (cipher2 != null) {
                cipher2.init(2, secretKeySpec);
            }
        } catch (Exception e11) {
            e4.b().e(this.f22568a, "e: " + e11);
        }
    }

    public final String e(String str) {
        if (str != null && !StringsKt.q0(str)) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256);
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.g(UTF_8, "UTF_8");
                byte[] bytes = str.getBytes(UTF_8);
                Intrinsics.g(bytes, "getBytes(...)");
                byte[] bArrDigest = messageDigest.digest(bytes);
                StringBuilder sb2 = new StringBuilder();
                Intrinsics.e(bArrDigest);
                for (byte b11 : bArrDigest) {
                    String hexString = Integer.toHexString(b11 & 255);
                    if (hexString.length() == 1) {
                        sb2.append('0');
                    }
                    sb2.append(hexString);
                }
                String string = sb2.toString();
                Intrinsics.g(string, "toString(...)");
                return string;
            } catch (NoSuchAlgorithmException e11) {
                e4.b().e("SHA-256 algorithm not found, e: " + e11);
            }
        }
        return "";
    }

    public final String f(String str) {
        byte[] bArrDoFinal;
        if (str != null && !StringsKt.q0(str)) {
            try {
                Cipher cipher = this.f22569b;
                if (cipher != null) {
                    byte[] bytes = str.getBytes(Charsets.UTF_8);
                    Intrinsics.g(bytes, "getBytes(...)");
                    bArrDoFinal = cipher.doFinal(bytes);
                } else {
                    bArrDoFinal = null;
                }
                if (bArrDoFinal == null) {
                    return "";
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    String strEncodeToString = Base64.getEncoder().encodeToString(bArrDoFinal);
                    Intrinsics.e(strEncodeToString);
                    return strEncodeToString;
                }
                String strEncodeToString2 = android.util.Base64.encodeToString(bArrDoFinal, 2);
                Intrinsics.e(strEncodeToString2);
                return strEncodeToString2;
            } catch (Exception e11) {
                e4.b().e(this.f22568a, "encrypt e: " + e11);
            }
        }
        return "";
    }
}
