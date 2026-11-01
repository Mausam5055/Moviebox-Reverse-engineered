package com.transsion.push.utils;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.transsion.mpush.core.config.PushMsgSource;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes6.dex */
public class l {
    public static long a(InputStream inputStream, OutputStream outputStream) {
        return b(inputStream, outputStream, 8024);
    }

    public static long b(InputStream inputStream, OutputStream outputStream, int i11) throws IOException {
        byte[] bArr = new byte[i11];
        long j11 = 0;
        while (true) {
            int i12 = inputStream.read(bArr);
            if (i12 <= 0) {
                return j11;
            }
            outputStream.write(bArr, 0, i12);
            j11 += (long) i12;
        }
    }

    public static byte[] c(String str, byte[] bArr) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("User-Agent", PushMsgSource.SOURCE_PUSH);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(bArr);
        outputStream.flush();
        PushLogUtils.LOG.g("response code:" + httpURLConnection.getResponseCode());
        if (httpURLConnection.getResponseCode() >= 400) {
            return null;
        }
        return d(httpURLConnection.getInputStream());
    }

    public static byte[] d(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
