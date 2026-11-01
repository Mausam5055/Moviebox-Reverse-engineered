package com.transsion.athena.hatnea;

import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.gslb.GslbSdk;
import java.io.DataOutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.crypto.KeyGenerator;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class anehat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SSLSocketFactory f42763a;

    private static com.transsion.athena.anateh.athena a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new com.transsion.athena.anateh.athena(bArr);
    }

    static ehanat<aatnhe> a(long j11, byte[] bArr, int i11, com.transsion.athena.config.data.model.aethna aethnaVar) throws Throwable {
        byte[] bArrB;
        SSLContext sSLContextA;
        ehanat<aatnhe> ehanatVar = new ehanat<>(2, new aatnhe("sdk_error"));
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                URL url = new URL(GslbSdk.getDomain(aethnaVar.f42584a, true));
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
                try {
                    if (httpURLConnection2 instanceof HttpsURLConnection) {
                        if (f42763a == null && (sSLContextA = com.transsion.athena.ehanat.athena.a()) != null) {
                            f42763a = sSLContextA.getSocketFactory();
                        }
                        SSLSocketFactory sSLSocketFactory = f42763a;
                        if (sSLSocketFactory != null) {
                            ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(sSLSocketFactory);
                            ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(com.transsion.athena.ehanat.athena.f42705a);
                        }
                    }
                    httpURLConnection2.setReadTimeout(20000);
                    httpURLConnection2.setConnectTimeout(30000);
                    httpURLConnection2.setDoOutput(true);
                    httpURLConnection2.setUseCaches(false);
                    httpURLConnection2.setRequestMethod("POST");
                    httpURLConnection2.setInstanceFollowRedirects(true);
                    if (aethnaVar.f42586c * 1024 <= bArr.length) {
                        httpURLConnection2.setRequestProperty("Accept-Encoding", "gzip, deflate");
                        httpURLConnection2.setRequestProperty("zip", "1");
                        bArrB = com.transsion.athena.config.data.model.anehat.b(bArr);
                    } else {
                        httpURLConnection2.setRequestProperty("Accept-Encoding", "text/example");
                        httpURLConnection2.setRequestProperty("zip", "0");
                        bArrB = bArr;
                    }
                    httpURLConnection2.setRequestProperty("fixed", "1");
                    httpURLConnection2.setRequestProperty("record-id", j11 + "");
                    httpURLConnection2.setRequestProperty("count", i11 + "");
                    httpURLConnection2.setRequestProperty("ver", "3.1.1.4");
                    TidConfigBean tidConfigBeanB = com.transsion.athena.aethna.athena.c().b(j11);
                    if (tidConfigBeanB == null) {
                        com.transsion.athena.taaneh.aethna.a("requestByPost TidConfigBean " + j11 + " is missing, maybe cancelled");
                        ehanatVar.f42777b.f42756d = "tid not found";
                        httpURLConnection2.disconnect();
                        return ehanatVar;
                    }
                    tidConfigBeanB.getTidConfig().getClass();
                    com.transsion.athena.anateh.athena athenaVarA = a((byte[]) aethnaVar.f42585b.second);
                    if (athenaVarA == null) {
                        ehanatVar.f42777b.f42756d = "encrypt error";
                        httpURLConnection2.disconnect();
                        return ehanatVar;
                    }
                    byte[] bytes = Base64.encodeToString(athenaVarA.b(bArrB), 2).getBytes();
                    if (bytes == null) {
                        com.transsion.athena.taaneh.aethna.b("requestByPost buffer is null");
                        ehanatVar.f42777b.f42756d = "base64 error";
                        httpURLConnection2.disconnect();
                        return ehanatVar;
                    }
                    String strA = com.transsion.athena.config.data.model.anehat.a(bytes);
                    if (TextUtils.isEmpty(strA)) {
                        httpURLConnection2.setRequestProperty("md5", "error");
                    } else {
                        httpURLConnection2.setRequestProperty("md5", strA);
                    }
                    httpURLConnection2.setRequestProperty("encrypt-level", String.valueOf(3));
                    httpURLConnection2.setRequestProperty("encrypt-index", String.valueOf(((Integer) aethnaVar.f42585b.first).intValue() + 1));
                    com.transsion.athena.taaneh.aethna.c(url + " tid = " + j11 + " count = " + i11);
                    httpURLConnection2.connect();
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                    dataOutputStream.write(bytes);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    if (httpURLConnection2.getResponseCode() != 200) {
                        ehanat<aatnhe> ehanatVar2 = new ehanat<>(-1, new aatnhe("rc_" + com.transsion.athena.config.data.model.anehat.a(httpURLConnection2.getErrorStream())));
                        httpURLConnection2.disconnect();
                        return ehanatVar2;
                    }
                    String strA2 = com.transsion.athena.config.data.model.anehat.a(httpURLConnection2.getInputStream());
                    com.transsion.athena.taaneh.aethna.c(String.format(Locale.ENGLISH, "post tid: %s response: %s", Long.valueOf(j11), strA2));
                    if (TextUtils.isEmpty(strA2)) {
                        ehanat<aatnhe> ehanatVar3 = new ehanat<>(-1, new aatnhe("rc_" + i11));
                        httpURLConnection2.disconnect();
                        return ehanatVar3;
                    }
                    int iOptInt = new JSONObject(strA2).optInt("code");
                    if (iOptInt == 0) {
                        ehanat<aatnhe> ehanatVar4 = new ehanat<>(0, new aatnhe());
                        httpURLConnection2.disconnect();
                        return ehanatVar4;
                    }
                    ehanat<aatnhe> ehanatVar5 = new ehanat<>(-1, new aatnhe("rc_" + iOptInt));
                    httpURLConnection2.disconnect();
                    return ehanatVar5;
                } catch (Exception e11) {
                    e = e11;
                    httpURLConnection = httpURLConnection2;
                    if (e instanceof UnknownHostException) {
                        com.transsion.athena.taaneh.aethna.b(e.getMessage());
                    } else {
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return new ehanat<>(-1, new aatnhe());
                } catch (Throwable th2) {
                    th = th2;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    static ehanat<Long> a(String str) throws Throwable {
        Throwable th2;
        HttpURLConnection httpURLConnection;
        Exception e11;
        SSLContext sSLContextA;
        try {
            httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            try {
                try {
                    if (httpURLConnection instanceof HttpsURLConnection) {
                        if (f42763a == null && (sSLContextA = com.transsion.athena.ehanat.athena.a()) != null) {
                            f42763a = sSLContextA.getSocketFactory();
                        }
                        SSLSocketFactory sSLSocketFactory = f42763a;
                        if (sSLSocketFactory != null) {
                            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
                            ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(com.transsion.athena.ehanat.athena.f42705a);
                        }
                    }
                    httpURLConnection.setReadTimeout(10000);
                    httpURLConnection.setConnectTimeout(10000);
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode >= 200 && responseCode < 400) {
                        ehanat<Long> ehanatVar = new ehanat<>(0, Long.valueOf(httpURLConnection.getDate()));
                        httpURLConnection.disconnect();
                        return ehanatVar;
                    }
                } catch (Exception e12) {
                    e11 = e12;
                    if (e11 instanceof UnknownHostException) {
                        com.transsion.athena.taaneh.aethna.b(e11.getMessage());
                    } else {
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
                    }
                    if (httpURLConnection != null) {
                    }
                    return new ehanat<>(-1, 0L);
                }
            } catch (Throwable th3) {
                th2 = th3;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th2;
            }
        } catch (Exception e13) {
            e11 = e13;
            httpURLConnection = null;
        } catch (Throwable th4) {
            th2 = th4;
            httpURLConnection = null;
        }
        httpURLConnection.disconnect();
        return new ehanat<>(-1, 0L);
    }

    static ehanat<String> a(String str, String str2, long j11) throws Throwable {
        ehanat<String> ehanatVar;
        SSLContext sSLContextA;
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
                keyGenerator.init(128);
                String strC = com.transsion.athena.config.data.model.anehat.c(keyGenerator.generateKey().getEncoded());
                com.transsion.athena.anateh.athena athenaVar = new com.transsion.athena.anateh.athena(strC.getBytes());
                byte[] bArrA = athenaVar.a(str2);
                String str3 = Base64.encodeToString(bArrA, 2) + "," + Base64.encodeToString(new nq.a("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArNrm4jErOdstd1P5L1X/\nCGSS6NKf4glPrFbTM97aE9ZKGUiMALIV8W7FClAgLZdtTZkL5XEQdbX4RB/C6edc\nnN2ifla6sVu23y78FMiL6smp9ayE7Y3gSEfB3md4nvEUpyRUu4wYLIf9nVR36okK\nGCerxYdLtDbJ69Rux4lgE5C9a6qLfV6BzjJYONk/vQhGQYT6qes+TFtXV0hvF8UM\nDG+0GfA3MiQue/Ny8uIPBykDPS1dcIADzVos2fXs/o2aFTrkdVjiX8irwYBze69K\nzFx18H12iZ9gG1VztMbHetvImBoXeCOwjTc5RnGIz+Hya96pxJLK2DcSlAaHEs1H\nOQIDAQAB").d(strC), 2);
                URL url = new URL(GslbSdk.getDomain(str, true));
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
                try {
                    try {
                        if (httpURLConnection2 instanceof HttpsURLConnection) {
                            if (f42763a == null && (sSLContextA = com.transsion.athena.ehanat.athena.a()) != null) {
                                f42763a = sSLContextA.getSocketFactory();
                            }
                            SSLSocketFactory sSLSocketFactory = f42763a;
                            if (sSLSocketFactory != null) {
                                ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(sSLSocketFactory);
                                ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(com.transsion.athena.ehanat.athena.f42705a);
                            }
                        }
                        httpURLConnection2.setRequestProperty("accept", "*/*");
                        httpURLConnection2.setRequestProperty(HttpHeaders.CONTENT_LENGTH, String.valueOf(str3.length()));
                        httpURLConnection2.setRequestProperty("encrypt-level", "2");
                        httpURLConnection2.setRequestProperty("ver", String.valueOf(j11));
                        httpURLConnection2.setRequestProperty("vn", "1");
                        httpURLConnection2.setRequestMethod("POST");
                        httpURLConnection2.setReadTimeout(20000);
                        httpURLConnection2.setConnectTimeout(30000);
                        httpURLConnection2.setDoInput(true);
                        httpURLConnection2.setDoOutput(true);
                        PrintWriter printWriter = new PrintWriter(httpURLConnection2.getOutputStream());
                        printWriter.write(str3);
                        printWriter.flush();
                        printWriter.close();
                        int responseCode = httpURLConnection2.getResponseCode();
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("url", url);
                            jSONObject.put("params", str2);
                            jSONObject.put("version", j11);
                            jSONObject.put("code", responseCode);
                            com.transsion.athena.taaneh.aethna.c("--> request config:%s", jSONObject.toString());
                        } catch (Exception e11) {
                            com.transsion.athena.taaneh.aethna.b("print request config exception:%s", e11.getMessage());
                        }
                        if (responseCode == 200) {
                            String strA = com.transsion.athena.config.data.model.anehat.a(httpURLConnection2.getInputStream());
                            if (TextUtils.equals("{}", strA)) {
                                ehanatVar = new ehanat<>(1, null);
                            } else if (TextUtils.isEmpty(strA)) {
                                ehanatVar = new ehanat<>(-1, null);
                            } else {
                                ehanatVar = new ehanat<>(0, str.contains("secret") ? new String(athenaVar.a(Base64.decode(strA, 2)), StandardCharsets.UTF_8) : new String(com.transsion.athena.config.data.model.anehat.d(athenaVar.a(Base64.decode(strA, 2))), StandardCharsets.UTF_8));
                            }
                        } else {
                            ehanatVar = new ehanat<>(-1, com.transsion.athena.config.data.model.anehat.a(httpURLConnection2.getErrorStream()));
                        }
                    } catch (Exception e12) {
                        e = e12;
                        httpURLConnection = httpURLConnection2;
                        ehanat<String> ehanatVar2 = new ehanat<>(-1, e.getMessage());
                        if (httpURLConnection == null) {
                            return ehanatVar2;
                        }
                        ehanatVar = ehanatVar2;
                        httpURLConnection2 = httpURLConnection;
                    }
                    httpURLConnection2.disconnect();
                    return ehanatVar;
                } catch (Throwable th2) {
                    th = th2;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e13) {
            e = e13;
        }
    }

    static ehanat<String> a(String str, String str2, long j11, int i11) throws Throwable {
        ehanat<String> ehanatVar;
        ehanat<String> ehanatVar2;
        SSLContext sSLContextA;
        HttpURLConnection httpURLConnection = null;
        ehanat<String> ehanatVar3 = new ehanat<>(-1, null);
        try {
            try {
                URL url = new URL(GslbSdk.getDomain(str, true));
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
                try {
                    try {
                        if (httpURLConnection2 instanceof HttpsURLConnection) {
                            if (f42763a == null && (sSLContextA = com.transsion.athena.ehanat.athena.a()) != null) {
                                f42763a = sSLContextA.getSocketFactory();
                            }
                            SSLSocketFactory sSLSocketFactory = f42763a;
                            if (sSLSocketFactory != null) {
                                ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(sSLSocketFactory);
                                ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(com.transsion.athena.ehanat.athena.f42705a);
                            }
                        }
                        byte[] bytes = str2.getBytes();
                        Pair<Integer, byte[]> pairI = com.transsion.athena.aethna.athena.c().i();
                        com.transsion.athena.anateh.athena athenaVarA = a((byte[]) pairI.second);
                        if (athenaVarA == null) {
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            return ehanatVar3;
                        }
                        byte[] bytes2 = Base64.encodeToString(athenaVarA.b(bytes), 2).getBytes();
                        httpURLConnection2.setRequestProperty("index", String.valueOf(((Integer) pairI.first).intValue() + 1));
                        httpURLConnection2.setRequestProperty("accept", "*/*");
                        httpURLConnection2.setRequestProperty(HttpHeaders.CONTENT_LENGTH, String.valueOf(bytes2.length));
                        httpURLConnection2.setRequestProperty("ver", String.valueOf(j11));
                        httpURLConnection2.setRequestProperty("vn", "1");
                        httpURLConnection2.setRequestProperty("app", String.valueOf(i11));
                        httpURLConnection2.setRequestProperty("model", Build.MODEL);
                        httpURLConnection2.setRequestMethod("POST");
                        httpURLConnection2.setReadTimeout(20000);
                        httpURLConnection2.setConnectTimeout(30000);
                        httpURLConnection2.setDoInput(true);
                        httpURLConnection2.setDoOutput(true);
                        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                        dataOutputStream.write(bytes2);
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        int responseCode = httpURLConnection2.getResponseCode();
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("url", url);
                            jSONObject.put("params", str2);
                            jSONObject.put("version", j11);
                            jSONObject.put("code", responseCode);
                            com.transsion.athena.taaneh.aethna.c("--> request config:%s", jSONObject.toString());
                        } catch (Exception e11) {
                            com.transsion.athena.taaneh.aethna.b("print request config exception:%s", e11.getMessage());
                        }
                        if (responseCode == 200) {
                            String strA = com.transsion.athena.config.data.model.anehat.a(httpURLConnection2.getInputStream());
                            if (TextUtils.equals("{}", strA)) {
                                ehanatVar2 = new ehanat<>(1, null);
                            } else {
                                ehanatVar2 = TextUtils.isEmpty(strA) ? new ehanat<>(-1, null) : new ehanat<>(0, new String(com.transsion.athena.config.data.model.anehat.d(Base64.decode(strA, 2)), StandardCharsets.UTF_8));
                            }
                        } else {
                            ehanatVar2 = new ehanat<>(-1, com.transsion.athena.config.data.model.anehat.a(httpURLConnection2.getErrorStream()));
                        }
                        httpURLConnection2.disconnect();
                        ehanatVar = ehanatVar2;
                        return ehanatVar;
                    } catch (Throwable th2) {
                        th = th2;
                        httpURLConnection = httpURLConnection2;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                } catch (Exception e12) {
                    e = e12;
                    httpURLConnection = httpURLConnection2;
                    ehanatVar = new ehanat<>(-1, e.getMessage());
                    if (httpURLConnection != null) {
                        ehanatVar2 = ehanatVar;
                        httpURLConnection2 = httpURLConnection;
                    }
                    return ehanatVar;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e13) {
            e = e13;
        }
    }

    static ehanat<aatnhe> a(String str, byte[] bArr, int i11, List<Integer> list, String str2, String str3) throws Throwable {
        SSLContext sSLContextA;
        ehanat<aatnhe> ehanatVar = new ehanat<>(2, new aatnhe("sdk_error"));
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
                try {
                    if (httpURLConnection2 instanceof HttpsURLConnection) {
                        if (f42763a == null && (sSLContextA = com.transsion.athena.ehanat.athena.a()) != null) {
                            f42763a = sSLContextA.getSocketFactory();
                        }
                        SSLSocketFactory sSLSocketFactory = f42763a;
                        if (sSLSocketFactory != null) {
                            ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(sSLSocketFactory);
                            ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(com.transsion.athena.ehanat.athena.f42705a);
                        }
                    }
                    httpURLConnection2.setReadTimeout(20000);
                    httpURLConnection2.setConnectTimeout(30000);
                    httpURLConnection2.setDoOutput(true);
                    httpURLConnection2.setUseCaches(false);
                    httpURLConnection2.setRequestMethod("POST");
                    httpURLConnection2.setInstanceFollowRedirects(true);
                    int length = bArr.length;
                    httpURLConnection2.setRequestProperty("Accept-Encoding", "gzip, deflate");
                    httpURLConnection2.setRequestProperty("zip", "1");
                    byte[] bArrB = com.transsion.athena.config.data.model.anehat.b(bArr);
                    httpURLConnection2.setRequestProperty("fixed", "1");
                    httpURLConnection2.setRequestProperty("count", String.valueOf(list.size()));
                    httpURLConnection2.setRequestProperty("appids", com.transsion.athena.config.data.model.anehat.a(list, "_"));
                    httpURLConnection2.setRequestProperty("ver", "3.1.1.4");
                    httpURLConnection2.setRequestProperty("uuid", str2);
                    httpURLConnection2.setRequestProperty("dupid", str3);
                    Pair<Integer, byte[]> pairI = com.transsion.athena.aethna.athena.c().i();
                    com.transsion.athena.anateh.athena athenaVarA = a((byte[]) pairI.second);
                    if (athenaVarA == null) {
                        ehanatVar.f42777b.f42756d = "encrypt error";
                        httpURLConnection2.disconnect();
                        return ehanatVar;
                    }
                    byte[] bytes = Base64.encodeToString(athenaVarA.b(bArrB), 2).getBytes();
                    if (bytes == null) {
                        com.transsion.athena.taaneh.aethna.b("requestByPost buffer is null");
                        ehanatVar.f42777b.f42756d = "base64 error";
                        httpURLConnection2.disconnect();
                        return ehanatVar;
                    }
                    httpURLConnection2.setRequestProperty("encrypt-level", "3");
                    httpURLConnection2.setRequestProperty("encrypt-index", String.valueOf(((Integer) pairI.first).intValue() + 1));
                    httpURLConnection2.connect();
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                    dataOutputStream.write(bytes);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    if (httpURLConnection2.getResponseCode() != 200) {
                        ehanat<aatnhe> ehanatVar2 = new ehanat<>(-1, new aatnhe("rc_" + com.transsion.athena.config.data.model.anehat.a(httpURLConnection2.getErrorStream())));
                        httpURLConnection2.disconnect();
                        return ehanatVar2;
                    }
                    String strA = com.transsion.athena.config.data.model.anehat.a(httpURLConnection2.getInputStream());
                    if (TextUtils.isEmpty(strA)) {
                        ehanat<aatnhe> ehanatVar3 = new ehanat<>(-1, new aatnhe("rc_" + i11));
                        httpURLConnection2.disconnect();
                        return ehanatVar3;
                    }
                    JSONObject jSONObject = new JSONObject(strA);
                    int iOptInt = jSONObject.optInt("code");
                    String strOptString = jSONObject.optString("message", "");
                    aatnhe aatnheVar = new aatnhe();
                    aatnheVar.f42753a = iOptInt;
                    aatnheVar.f42754b = strOptString;
                    if (iOptInt != 0) {
                        aatnheVar.f42756d = "rc_" + iOptInt;
                        ehanat<aatnhe> ehanatVar4 = new ehanat<>(-1, aatnheVar);
                        httpURLConnection2.disconnect();
                        return ehanatVar4;
                    }
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app");
                    if (jSONObjectOptJSONObject != null) {
                        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            long j11 = jSONObjectOptJSONObject.getJSONObject(next).getLong("ver");
                            int i12 = jSONObjectOptJSONObject.getJSONObject(next).getInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                            if (i12 != 0) {
                                aatnhe.athena athenaVar = new aatnhe.athena(Integer.parseInt(next), i12, j11);
                                if (aatnheVar.f42755c == null) {
                                    aatnheVar.f42755c = new ArrayList();
                                }
                                aatnheVar.f42755c.add(athenaVar);
                            }
                        }
                    }
                    ehanat<aatnhe> ehanatVar5 = new ehanat<>(0, aatnheVar);
                    httpURLConnection2.disconnect();
                    return ehanatVar5;
                } catch (Exception e11) {
                    e = e11;
                    httpURLConnection = httpURLConnection2;
                    com.transsion.athena.taaneh.aethna.b(e.getMessage());
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return new ehanat<>(-1, new aatnhe());
                } catch (Throwable th2) {
                    th = th2;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e12) {
            e = e12;
        }
    }
}
