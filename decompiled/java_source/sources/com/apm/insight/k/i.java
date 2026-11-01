package com.apm.insight.k;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.apm.insight.CustomRequestHeader;
import com.apm.insight.MonitorCrash;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f19643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HttpURLConnection f19644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f19645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f19646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f19647e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private k f19648f;

    public i(String str, String str2, boolean z10) throws IOException {
        this.f19645c = str2;
        this.f19646d = z10;
        String str3 = "AAA" + System.currentTimeMillis() + "AAA";
        this.f19643a = str3;
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
        this.f19644b = httpURLConnection;
        httpURLConnection.setUseCaches(false);
        this.f19644b.setDoOutput(true);
        this.f19644b.setDoInput(true);
        this.f19644b.setRequestMethod("POST");
        CustomRequestHeader customRequestHeader = MonitorCrash.mCustomRequestHeader;
        if (customRequestHeader != null) {
            customRequestHeader.addRequestHeader(this.f19644b);
        }
        this.f19644b.setRequestProperty(HttpHeaders.CONTENT_TYPE, "multipart/form-data; boundary=" + str3);
        if (!z10) {
            this.f19647e = new f(this.f19644b.getOutputStream());
        } else {
            this.f19644b.setRequestProperty(HttpHeaders.CONTENT_ENCODING, "gzip");
            this.f19648f = new k(this.f19644b.getOutputStream());
        }
    }

    public final String a() throws IOException {
        ArrayList arrayList = new ArrayList();
        byte[] bytes = ("\r\n--" + this.f19643a + "--\r\n").getBytes();
        if (this.f19646d) {
            this.f19648f.write(bytes);
            this.f19648f.b();
            this.f19648f.a();
        } else {
            this.f19647e.write(bytes);
            this.f19647e.flush();
            this.f19647e.a();
        }
        int responseCode = this.f19644b.getResponseCode();
        if (responseCode != 200) {
            throw new IOException("Server returned non-OK status: ".concat(String.valueOf(responseCode)));
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f19644b.getInputStream()));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            arrayList.add(line);
        }
        bufferedReader.close();
        this.f19644b.disconnect();
        StringBuilder sb2 = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb2.append((String) it.next());
        }
        return sb2.toString();
    }

    public final void a(String str, File file, Map<String, String> map) throws IOException {
        String name = file.getName();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--");
        sb2.append(this.f19643a);
        sb2.append("\r\nContent-Disposition: form-data; name=\"");
        sb2.append(str);
        sb2.append("\"; filename=\"");
        sb2.append(name);
        sb2.append("\"");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb2.append("; ");
            sb2.append(entry.getKey());
            sb2.append("=\"");
            sb2.append(entry.getValue());
            sb2.append("\"");
        }
        sb2.append("\r\nContent-Transfer-Encoding: binary\r\n\r\n");
        if (this.f19646d) {
            this.f19648f.write(sb2.toString().getBytes());
        } else {
            this.f19647e.write(sb2.toString().getBytes());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[8192];
        while (true) {
            int i11 = fileInputStream.read(bArr);
            if (i11 == -1) {
                break;
            } else if (this.f19646d) {
                this.f19648f.write(bArr, 0, i11);
            } else {
                this.f19647e.write(bArr, 0, i11);
            }
        }
        fileInputStream.close();
        if (this.f19646d) {
            this.f19648f.write("\r\n".getBytes());
        } else {
            this.f19647e.write("\r\n".getBytes());
            this.f19647e.flush();
        }
    }

    public final void a(String str, String str2) {
        b(str, str2);
    }

    public final void a(String str, File... fileArr) throws Throwable {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--");
        sb2.append(this.f19643a);
        sb2.append("\r\nContent-Disposition: form-data; name=\"");
        sb2.append(str);
        sb2.append("\"; filename=\"");
        sb2.append(str);
        sb2.append("\"\r\nContent-Transfer-Encoding: binary\r\n\r\n");
        if (this.f19646d) {
            this.f19648f.write(sb2.toString().getBytes());
        } else {
            this.f19647e.write(sb2.toString().getBytes());
        }
        if (this.f19646d) {
            com.apm.insight.l.f.a(this.f19648f, fileArr);
        } else {
            com.apm.insight.l.f.a(this.f19647e, fileArr);
        }
        if (this.f19646d) {
            this.f19648f.write("\r\n".getBytes());
        } else {
            this.f19647e.write("\r\n".getBytes());
            this.f19647e.flush();
        }
    }

    public final void b(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--");
        sb2.append(this.f19643a);
        sb2.append("\r\nContent-Disposition: form-data; name=\"");
        sb2.append(str);
        sb2.append("\"\r\nContent-Type: text/plain; charset=");
        sb2.append(this.f19645c);
        sb2.append("\r\n\r\n");
        try {
            if (this.f19646d) {
                this.f19648f.write(sb2.toString().getBytes());
            } else {
                this.f19647e.write(sb2.toString().getBytes());
            }
        } catch (IOException unused) {
        }
        byte[] bytes = str2.getBytes();
        try {
            if (this.f19646d) {
                this.f19648f.write(bytes);
                this.f19648f.write("\r\n".getBytes());
            } else {
                this.f19647e.write(bytes);
                this.f19647e.write("\r\n".getBytes());
            }
        } catch (IOException unused2) {
        }
    }
}
