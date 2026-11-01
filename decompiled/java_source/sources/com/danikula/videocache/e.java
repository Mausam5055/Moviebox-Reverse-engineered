package com.danikula.videocache;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
class e extends m {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private b f24033i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final a f24034j;

    public e(a aVar) {
        super(aVar);
        this.f24034j = aVar;
    }

    private String i(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    private String j(d dVar) {
        int i11;
        String strI;
        String strZ = this.f24034j.z();
        boolean zIsEmpty = TextUtils.isEmpty(strZ);
        long jA = this.f24034j.A();
        long jG = this.f24034j.G();
        long j11 = dVar.f24031b;
        boolean z10 = jA >= 0;
        boolean z11 = dVar.f24032c;
        long j12 = z11 ? jA - j11 : jA;
        boolean z12 = z10 && z11;
        q.e("header， offset = " + j11 + ", rangeEnd = " + jG + ", totalSize = " + jA + ", contentLength = " + j12 + " , contentType = " + strZ);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(dVar.f24032c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb2.append("Accept-Ranges: bytes\n");
        String strI2 = "";
        sb2.append(z10 ? i("Content-Length: %d\n", Long.valueOf(j12)) : "");
        if (z12) {
            i11 = 1;
            strI = i("Content-Range: bytes %d-%d/%d\n", Long.valueOf(j11), Long.valueOf(jG), Long.valueOf(jA));
        } else {
            i11 = 1;
            strI = "";
        }
        sb2.append(strI);
        if (!zIsEmpty) {
            Object[] objArr = new Object[i11];
            objArr[0] = strZ;
            strI2 = i("Content-Type: %s\n", objArr);
        }
        sb2.append(strI2);
        sb2.append("\n");
        return sb2.toString();
    }

    private void m(OutputStream outputStream, long j11, String str) throws IOException {
        q.a("responseWithCache， offset = " + j11);
        byte[] bArr = new byte[8192];
        while (true) {
            int iD = d(bArr, j11, 8192, str);
            if (iD == -1 || this.f24059e) {
                break;
            }
            outputStream.write(bArr, 0, iD);
            j11 += (long) iD;
        }
        outputStream.flush();
        q.e("responseWithCache， --------------------end,offset = " + j11 + "， threadName = " + Thread.currentThread().getName());
    }

    public void k(d dVar, Socket socket) throws IOException {
        long j11 = dVar.f24031b;
        q.f("processRequest， offset = " + j11 + "， threadName = " + Thread.currentThread().getName());
        a(j11);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(j(dVar).getBytes("UTF-8"));
        m(bufferedOutputStream, j11, n.b(dVar.f24030a));
    }

    public void l(b bVar) {
        this.f24033i = bVar;
    }
}
