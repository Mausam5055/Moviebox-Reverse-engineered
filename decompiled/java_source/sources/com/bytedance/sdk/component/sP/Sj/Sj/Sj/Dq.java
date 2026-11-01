package com.bytedance.sdk.component.sP.Sj.Sj.Sj;

import com.bytedance.sdk.component.sP.Sj.uvD;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class Dq extends uvD {
    HttpURLConnection Sj;
    InputStream sP;

    Dq(HttpURLConnection httpURLConnection) throws IOException {
        this.Sj = httpURLConnection;
        this.sP = new vS(httpURLConnection.getInputStream(), httpURLConnection);
    }

    Dq(HttpURLConnection httpURLConnection, InputStream inputStream) {
        this.Sj = httpURLConnection;
        this.sP = new vS(inputStream, httpURLConnection);
    }

    @Override // com.bytedance.sdk.component.sP.Sj.uvD
    public byte[] EjP() {
        try {
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int i11 = this.sP.read(bArr);
                if (i11 == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i11);
            }
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    @Override // com.bytedance.sdk.component.sP.Sj.uvD
    public com.bytedance.sdk.component.sP.Sj.uA HiB() {
        if (this.Sj.getContentType() != null) {
            return com.bytedance.sdk.component.sP.Sj.uA.Sj(this.Sj.getContentType());
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.sP.Sj.uvD
    public long Sj() {
        try {
            return this.Sj.getContentLength();
        } catch (Exception unused) {
            return 0L;
        }
    }

    @Override // com.bytedance.sdk.component.sP.Sj.uvD
    public InputStream TKC() {
        return this.sP;
    }

    @Override // com.bytedance.sdk.component.sP.Sj.uvD, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.sP.close();
            this.Sj.disconnect();
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.sP.Sj.uvD
    public String sP() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.sP));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    String string = stringBuffer.toString();
                    close();
                    return string;
                }
                stringBuffer.append(line + "\n");
            }
        } catch (Exception unused) {
            return "";
        }
    }
}
