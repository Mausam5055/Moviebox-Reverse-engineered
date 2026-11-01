package com.bytedance.sdk.component.HiB.sP;

import android.util.Log;
import com.bytedance.sdk.component.HiB.HiB;
import com.bytedance.sdk.component.utils.TEQ;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements com.bytedance.sdk.component.HiB.EjP<TKC> {
    private Map<String, String> Sj(HttpURLConnection httpURLConnection) {
        HashMap map = new HashMap();
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        for (String str : headerFields.keySet()) {
            List<String> list = headerFields.get(str);
            if (list != null && list.size() > 0) {
                map.put(str, list.get(0));
            }
        }
        return map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.io.ByteArrayOutputStream, java.io.Closeable] */
    @Override // com.bytedance.sdk.component.HiB.EjP
    /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
    public TKC<byte[]> Sj(HiB hiB) throws Throwable {
        InputStream inputStream;
        byte[] byteArray;
        ?? byteArrayOutputStream;
        String message;
        ?? r11;
        InputStream inputStream2 = null;
        Map<String, String> mapSj = null;
        int i11 = 0;
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(hiB.Sj()).openConnection()));
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
                httpURLConnection.connect();
                inputStream = httpURLConnection.getInputStream();
                try {
                    byte[] bArr = new byte[1024];
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        while (true) {
                            try {
                                int i12 = inputStream.read(bArr);
                                if (i12 == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i12);
                            } catch (MalformedURLException e11) {
                                e = e11;
                                byteArray = null;
                            } catch (IOException e12) {
                                e = e12;
                                byteArray = null;
                            }
                            Log.w("InternalHttpClient", "MalformedURLException:" + e.getMessage());
                            message = e.getMessage();
                            r11 = byteArrayOutputStream;
                            TEQ.Sj(inputStream);
                            TEQ.Sj(r11);
                            return new TKC<>(i11, byteArray, message, mapSj);
                        }
                        mapSj = hiB.sP() ? Sj(httpURLConnection) : null;
                        TEQ.Sj(inputStream);
                        TEQ.Sj(byteArrayOutputStream);
                        message = NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;
                    } catch (MalformedURLException e13) {
                        e = e13;
                        Log.w("InternalHttpClient", "MalformedURLException:" + e.getMessage());
                        message = e.getMessage();
                        r11 = byteArrayOutputStream;
                        TEQ.Sj(inputStream);
                        TEQ.Sj(r11);
                    } catch (IOException e14) {
                        e = e14;
                        Log.w("InternalHttpClient", "IOException:" + e.getMessage());
                        message = e.getMessage();
                        r11 = byteArrayOutputStream;
                        TEQ.Sj(inputStream);
                        TEQ.Sj(r11);
                    }
                    i11 = 200;
                    byteArray = byteArrayOutputStream.toByteArray();
                } catch (MalformedURLException e15) {
                    e = e15;
                    byteArray = null;
                    byteArrayOutputStream = byteArray;
                } catch (IOException e16) {
                    e = e16;
                    byteArray = null;
                    byteArrayOutputStream = byteArray;
                    Log.w("InternalHttpClient", "IOException:" + e.getMessage());
                    message = e.getMessage();
                    r11 = byteArrayOutputStream;
                    TEQ.Sj(inputStream);
                    TEQ.Sj(r11);
                    return new TKC<>(i11, byteArray, message, mapSj);
                } catch (Throwable th2) {
                    th = th2;
                    inputStream2 = inputStream;
                    TEQ.Sj(inputStream2);
                    TEQ.Sj(0);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (MalformedURLException e17) {
            e = e17;
            inputStream = null;
            byteArray = null;
        } catch (IOException e18) {
            e = e18;
            inputStream = null;
            byteArray = null;
        } catch (Throwable th4) {
            th = th4;
            TEQ.Sj(inputStream2);
            TEQ.Sj(0);
            throw th;
        }
        return new TKC<>(i11, byteArray, message, mapSj);
    }
}
