package com.bytedance.sdk.component.sP.Sj.Sj.Sj;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.component.sP.Sj.sef;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements com.bytedance.sdk.component.sP.Sj.sP {
    Fmk Sj;
    private AtomicBoolean TKC = new AtomicBoolean(false);
    com.bytedance.sdk.component.sP.Sj.EjP sP;

    sP(Fmk fmk, com.bytedance.sdk.component.sP.Sj.EjP ejP) {
        this.Sj = fmk;
        this.sP = ejP;
    }

    private boolean HiB() {
        if (this.Sj.EjP() == null) {
            return false;
        }
        return this.Sj.EjP().containsKey(HttpHeaders.CONTENT_TYPE);
    }

    private static void Sj(HttpURLConnection httpURLConnection) {
        try {
            Field declaredField = httpURLConnection.getClass().getDeclaredField("delegate");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(httpURLConnection);
            Field declaredField2 = obj.getClass().getDeclaredField("client");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            obj2.getClass().getDeclaredMethod("setRetryOnConnectionFailure", Boolean.TYPE).invoke(obj2, Boolean.FALSE);
        } catch (Exception unused) {
        }
    }

    private boolean Sj(sef sefVar) {
        Fmk fmk;
        byte[] bArr;
        return sefVar != null && (fmk = this.Sj) != null && "POST".equalsIgnoreCase(fmk.TKC()) && sefVar.vS == sef.Sj.BYTE_ARRAY_TYPE && (bArr = sefVar.HiB) != null && bArr.length > 0;
    }

    private boolean sP(sef sefVar) {
        Fmk fmk;
        return (sefVar == null || (fmk = this.Sj) == null || !"POST".equalsIgnoreCase(fmk.TKC()) || sefVar.vS != sef.Sj.STRING_TYPE || TextUtils.isEmpty(sefVar.EjP)) ? false : true;
    }

    /* JADX INFO: renamed from: EjP, reason: merged with bridge method [inline-methods] */
    public com.bytedance.sdk.component.sP.Sj.sP clone() {
        return new sP(this.Sj, this.sP);
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP
    public Fmk Sj() {
        return this.Sj;
    }

    public Zq Sj(Fmk fmk) throws IOException {
        HttpURLConnection httpURLConnection;
        Exception e11;
        String message;
        int responseCode = Jcg.Sj;
        try {
            try {
                httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(fmk.sP().Sj().toString()).openConnection()));
                try {
                    if (fmk.EjP() != null && fmk.EjP().size() > 0) {
                        for (Map.Entry<String, List<String>> entry : fmk.EjP().entrySet()) {
                            String key = entry.getKey();
                            for (String str : entry.getValue()) {
                                if ("_disable_retry".equals(key) && "1".equals(str)) {
                                    Sj(httpURLConnection);
                                } else {
                                    httpURLConnection.addRequestProperty(key, str);
                                }
                            }
                        }
                    }
                    Ym ym2 = fmk.Sj;
                    if (ym2 != null) {
                        TimeUnit timeUnit = ym2.TKC;
                        if (timeUnit != null) {
                            httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(ym2.sP));
                        }
                        Ym ym3 = fmk.Sj;
                        if (ym3.TKC != null) {
                            httpURLConnection.setReadTimeout((int) ym3.HiB.toMillis(ym3.EjP));
                        }
                    }
                    if (fmk.Dq() == null) {
                        httpURLConnection.setRequestMethod("GET");
                    } else {
                        if (!HiB() && fmk.Dq().TKC != null) {
                            httpURLConnection.addRequestProperty(HttpHeaders.CONTENT_TYPE, fmk.Dq().TKC.Sj());
                        }
                        httpURLConnection.setRequestMethod(fmk.TKC());
                        if ("POST".equalsIgnoreCase(fmk.TKC())) {
                            OutputStream outputStream = httpURLConnection.getOutputStream();
                            if (Sj(fmk.Dq())) {
                                outputStream.write(fmk.Dq().HiB);
                            } else if (sP(fmk.Dq())) {
                                outputStream.write(fmk.Dq().EjP.getBytes());
                            }
                            outputStream.flush();
                            outputStream.close();
                        }
                    }
                    com.bytedance.sdk.component.TKC.Sj.Sj sj2 = fmk.sP;
                    if (sj2 != null) {
                        sj2.sP();
                    }
                    httpURLConnection.connect();
                    com.bytedance.sdk.component.TKC.Sj.Sj sj3 = fmk.sP;
                    if (sj3 != null) {
                        sj3.TKC();
                    }
                    responseCode = httpURLConnection.getResponseCode();
                    com.bytedance.sdk.component.TKC.Sj.Sj sj4 = fmk.sP;
                    if (sj4 != null) {
                        sj4.HiB();
                    }
                    if (!this.TKC.get()) {
                        Jcg jcg = new Jcg(httpURLConnection, fmk);
                        this.sP.EjP().remove(this);
                        return jcg;
                    }
                    httpURLConnection.disconnect();
                    this.sP.EjP().remove(this);
                    message = "internal error";
                    return new Jcg(responseCode, message, fmk);
                } catch (Exception e12) {
                    e11 = e12;
                    try {
                        message = httpURLConnection.getErrorStream().toString();
                    } catch (Throwable unused) {
                        message = e11.getMessage();
                    }
                    this.sP.EjP().remove(this);
                }
            } catch (Exception e13) {
                httpURLConnection = null;
                e11 = e13;
            }
        } catch (Throwable th2) {
            this.sP.EjP().remove(this);
            throw th2;
        }
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP
    public void Sj(final com.bytedance.sdk.component.sP.Sj.TKC tkc) {
        com.bytedance.sdk.component.TKC.Sj.Sj sj2;
        Fmk fmk = this.Sj;
        if (fmk != null && (sj2 = fmk.sP) != null) {
            sj2.Zq();
        }
        this.sP.sP().submit(new com.bytedance.sdk.component.Dq.TKC.sP(this.Sj.Jcg(), this.Sj.vS()) { // from class: com.bytedance.sdk.component.sP.Sj.Sj.Sj.sP.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Zq zqSP = sP.this.sP();
                    if (zqSP == null) {
                        tkc.Sj(sP.this, new IOException("response is null"));
                    } else {
                        tkc.Sj(sP.this, zqSP);
                    }
                } catch (IOException e11) {
                    tkc.Sj(sP.this, e11);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP
    public void TKC() {
        this.TKC.set(true);
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP
    public Zq sP() throws IOException {
        List<com.bytedance.sdk.component.sP.Sj.Dq> list;
        com.bytedance.sdk.component.TKC.Sj.Sj sj2;
        Fmk fmk = this.Sj;
        if (fmk != null && (sj2 = fmk.sP) != null) {
            if (sj2.sef() == 0) {
                this.Sj.sP.Zq();
            }
            this.Sj.sP.Sj();
        }
        this.sP.TKC().remove(this);
        this.sP.EjP().add(this);
        com.bytedance.sdk.component.sP.Sj.EjP ejP = this.sP;
        if ((ejP instanceof HiB) && (ejP.TKC().size() + this.sP.EjP().size() > this.sP.Sj() || this.TKC.get())) {
            this.sP.EjP().remove(this);
            return new Jcg(Jcg.Sj, "Maximum number of requests exceeded", this.Sj);
        }
        try {
            Ym ym2 = this.Sj.Sj;
            if (ym2 == null || (list = ym2.Sj) == null || list.size() <= 0) {
                return Sj(this.Sj);
            }
            ArrayList arrayList = new ArrayList(this.Sj.Sj.Sj);
            arrayList.add(new com.bytedance.sdk.component.sP.Sj.Dq() { // from class: com.bytedance.sdk.component.sP.Sj.Sj.Sj.sP.1
                @Override // com.bytedance.sdk.component.sP.Sj.Dq
                public Zq Sj(com.bytedance.sdk.component.sP.Sj.Dq.Sj sj3) throws IOException {
                    return sP.this.Sj(sj3.Sj());
                }
            });
            return ((com.bytedance.sdk.component.sP.Sj.Dq) arrayList.get(0)).Sj(new TKC(arrayList, this.Sj));
        } catch (Throwable th2) {
            throw new IOException(th2.getMessage());
        }
    }
}
