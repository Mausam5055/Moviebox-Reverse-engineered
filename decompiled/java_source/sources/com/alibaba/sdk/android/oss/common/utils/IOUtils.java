package com.alibaba.sdk.android.oss.common.utils;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes2.dex */
public class IOUtils {
    private static final int BUFFER_SIZE = 4096;

    public static byte[] readStreamAsBytesArray(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 <= -1) {
                byteArrayOutputStream.flush();
                safeClose(byteArrayOutputStream);
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i11);
        }
    }

    public static byte[] readStreamAsBytesArray(InputStream inputStream, int i11) throws IOException {
        int i12;
        if (inputStream == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        long j11 = 0;
        while (true) {
            long j12 = i11;
            if (j11 >= j12 || (i12 = inputStream.read(bArr, 0, Math.min(2048, (int) (j12 - j11)))) <= -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i12);
            j11 += (long) i12;
        }
        byteArrayOutputStream.flush();
        safeClose(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static String readStreamAsString(InputStream inputStream, String str) throws Throwable {
        if (inputStream == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[4096];
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, str));
            while (true) {
                try {
                    int i11 = bufferedReader2.read(cArr);
                    if (i11 <= 0) {
                        String string = stringWriter.toString();
                        safeClose(inputStream);
                        bufferedReader2.close();
                        stringWriter.close();
                        return string;
                    }
                    stringWriter.write(cArr, 0, i11);
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    safeClose(inputStream);
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    stringWriter.close();
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void safeClose(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void safeClose(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }
}
