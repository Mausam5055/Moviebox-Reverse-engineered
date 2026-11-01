package com.cloud.hisavana.sdk.common.util;

import android.util.Log;
import com.cloud.hisavana.sdk.e4;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes3.dex */
public class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f22147a = {"0", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "f"};

    private static String a(byte b11) {
        int i11 = b11;
        if (b11 < 0) {
            i11 = b11 + 256;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] strArr = f22147a;
        sb2.append(strArr[i11 / 16]);
        sb2.append(strArr[i11 % 16]);
        return sb2.toString();
    }

    private static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b11 : bArr) {
            stringBuffer.append(a(b11));
        }
        return stringBuffer.toString();
    }

    public static String c(String str) {
        try {
            return b(MessageDigest.getInstance("MD5").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e11) {
            e4.b().e(Log.getStackTraceString(e11));
            return str;
        }
    }
}
