package com.mbridge.msdk.click;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.MBridgeHostnameVerifier;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f34333f = "i";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mbridge.msdk.setting.g f34334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f34336c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f34337d = 3145728;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.click.entity.a f34338e;

    public i() {
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        this.f34334a = gVarD;
        if (gVarD == null) {
            this.f34334a = com.mbridge.msdk.setting.h.b().a();
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0036 A[Catch: all -> 0x000f, TryCatch #5 {all -> 0x000f, blocks: (B:4:0x0008, B:9:0x0013, B:23:0x0032, B:25:0x0036, B:26:0x0043), top: B:45:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x004e A[Catch: Exception -> 0x002f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x002f, blocks: (B:18:0x002b, B:28:0x004e), top: B:41:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private String a(InputStream inputStream, boolean z10) throws Throwable {
        BufferedReader bufferedReader;
        Throwable th2;
        Exception e11;
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader2 = null;
        try {
            if (z10) {
                try {
                    try {
                        inputStream = new GZIPInputStream(inputStream);
                    } catch (Exception e12) {
                        e11 = e12;
                        if (this.f34338e == null) {
                            com.mbridge.msdk.click.entity.a aVar = new com.mbridge.msdk.click.entity.a();
                            this.f34338e = aVar;
                            aVar.f34318h = e11.getMessage();
                        }
                        o0.b(f34333f, e11.getMessage());
                        if (bufferedReader2 != null) {
                            bufferedReader2.close();
                        }
                        return sb2.toString();
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception e13) {
                            o0.b(f34333f, e13.getMessage());
                        }
                    }
                    throw th2;
                }
            }
            bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb2.append(line);
                } catch (Exception e14) {
                    e11 = e14;
                    bufferedReader2 = bufferedReader;
                    if (this.f34338e == null) {
                        com.mbridge.msdk.click.entity.a aVar2 = new com.mbridge.msdk.click.entity.a();
                        this.f34338e = aVar2;
                        aVar2.f34318h = e11.getMessage();
                    }
                    o0.b(f34333f, e11.getMessage());
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                    return sb2.toString();
                } catch (Throwable th4) {
                    th2 = th4;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th2;
                }
            }
            bufferedReader.close();
        } catch (Exception e15) {
            o0.b(f34333f, e15.getMessage());
        }
        return sb2.toString();
    }

    public com.mbridge.msdk.click.entity.a a(String str, boolean z10, boolean z11, CampaignEx campaignEx) {
        int i11;
        HttpsURLConnection httpsURLConnection = null;
        if (!URLUtil.isNetworkUrl(str)) {
            return null;
        }
        String strReplace = str.replace(" ", "%20");
        this.f34338e = new com.mbridge.msdk.click.entity.a();
        try {
            HttpsURLConnection httpsURLConnection2 = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(strReplace).openConnection()));
            try {
                httpsURLConnection2.setHostnameVerifier(new MBridgeHostnameVerifier(strReplace));
                httpsURLConnection2.setRequestMethod("GET");
                if ((!z10 && !z11) || campaignEx == null) {
                    httpsURLConnection2.setRequestProperty("User-Agent", k0.i());
                }
                if (z10 && campaignEx != null && campaignEx.getcUA() == 1) {
                    httpsURLConnection2.setRequestProperty("User-Agent", k0.i());
                }
                if (z11 && campaignEx != null && campaignEx.getImpUA() == 1) {
                    httpsURLConnection2.setRequestProperty("User-Agent", k0.i());
                }
                httpsURLConnection2.setRequestProperty("Accept-Encoding", "gzip");
                if (this.f34334a.I0() && !TextUtils.isEmpty(this.f34335b)) {
                    httpsURLConnection2.setRequestProperty(RequestParameters.SUBRESOURCE_REFERER, this.f34335b);
                }
                httpsURLConnection2.setConnectTimeout(60000);
                httpsURLConnection2.setReadTimeout(60000);
                httpsURLConnection2.setInstanceFollowRedirects(false);
                httpsURLConnection2.connect();
                this.f34338e.f34311a = httpsURLConnection2.getHeaderField(HttpHeaders.LOCATION);
                this.f34338e.f34314d = httpsURLConnection2.getHeaderField("Referer");
                this.f34338e.f34316f = httpsURLConnection2.getResponseCode();
                this.f34338e.f34312b = httpsURLConnection2.getContentType();
                this.f34338e.f34315e = httpsURLConnection2.getContentLength();
                this.f34338e.f34313c = httpsURLConnection2.getContentEncoding();
                boolean zEqualsIgnoreCase = "gzip".equalsIgnoreCase(this.f34338e.f34313c);
                com.mbridge.msdk.click.entity.a aVar = this.f34338e;
                if (aVar.f34316f == 200 && this.f34336c && (i11 = aVar.f34315e) > 0 && i11 < 3145728 && !TextUtils.isEmpty(strReplace)) {
                    try {
                        String strA = a(httpsURLConnection2.getInputStream(), zEqualsIgnoreCase);
                        if (!TextUtils.isEmpty(strA)) {
                            byte[] bytes = strA.getBytes();
                            if (bytes.length > 0 && bytes.length < 3145728) {
                                this.f34338e.f34317g = strA.trim();
                            }
                        }
                    } catch (Throwable th2) {
                        o0.b(f34333f, th2.getMessage());
                    }
                }
                this.f34335b = strReplace;
                httpsURLConnection2.disconnect();
                return this.f34338e;
            } catch (Throwable th3) {
                th = th3;
                httpsURLConnection = httpsURLConnection2;
                try {
                    this.f34338e.f34318h = th.getMessage();
                    return this.f34338e;
                } finally {
                    if (httpsURLConnection != null) {
                        httpsURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
