package lh;

import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0830a f68842a = new C0830a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f68843b = {"0", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "f"};

    /* JADX INFO: renamed from: lh.a$a, reason: collision with other inner class name */
    public static final class C0830a {
        private C0830a() {
        }

        public /* synthetic */ C0830a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String b(byte[] bArr) {
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b11 : bArr) {
                stringBuffer.append(c(b11));
            }
            String string = stringBuffer.toString();
            Intrinsics.g(string, "toString(...)");
            return string;
        }

        private final String c(byte b11) {
            int i11 = b11;
            if (b11 < 0) {
                i11 = b11 + 256;
            }
            return a.f68843b[i11 / 16] + a.f68843b[i11 % 16];
        }

        public final String a(String data) {
            Intrinsics.h(data, "data");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                byte[] bytes = data.getBytes(Charsets.UTF_8);
                Intrinsics.g(bytes, "getBytes(...)");
                byte[] bArrDigest = messageDigest.digest(bytes);
                Intrinsics.g(bArrDigest, "digest(...)");
                return b(bArrDigest);
            } catch (Exception e11) {
                e11.printStackTrace();
                return data;
            }
        }

        public final String d(String buf) {
            Intrinsics.h(buf, "buf");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                Intrinsics.g(messageDigest, "getInstance(...)");
                Charset charsetForName = Charset.forName("UTF-8");
                Intrinsics.g(charsetForName, "forName(...)");
                byte[] bytes = buf.getBytes(charsetForName);
                Intrinsics.g(bytes, "getBytes(...)");
                messageDigest.update(bytes);
                String string = new BigInteger(1, messageDigest.digest()).toString(16);
                if (string.length() >= 32) {
                    Intrinsics.e(string);
                    return string;
                }
                String str = "";
                for (int i11 = 0; i11 < 32 - string.length(); i11++) {
                    str = '0' + str;
                }
                return str + string;
            } catch (Exception e11) {
                e11.printStackTrace();
                return buf;
            }
        }
    }
}
