package cm;

import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f17288a = {"0", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "f"};

    public static String a(String str) {
        try {
            return b(MessageDigest.getInstance("MD5").digest(str.getBytes()));
        } catch (Exception e11) {
            e11.printStackTrace();
            return str;
        }
    }

    public static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b11 : bArr) {
            stringBuffer.append(c(b11));
        }
        return stringBuffer.toString();
    }

    private static String c(byte b11) {
        int i11 = b11;
        if (b11 < 0) {
            i11 = b11 + 256;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] strArr = f17288a;
        sb2.append(strArr[i11 / 16]);
        sb2.append(strArr[i11 % 16]);
        return sb2.toString();
    }
}
