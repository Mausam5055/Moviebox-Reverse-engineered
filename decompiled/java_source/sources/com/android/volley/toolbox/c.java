package com.android.volley.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c implements com.android.volley.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f19286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f19287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final InterfaceC0177c f19288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f19289d;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f19290a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f19291b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f19292c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f19293d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final long f19294e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final long f19295f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final long f19296g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final List f19297h;

        a(String str, com.android.volley.c.a aVar) {
            this(str, aVar.f19221b, aVar.f19222c, aVar.f19223d, aVar.f19224e, aVar.f19225f, a(aVar));
        }

        private a(String str, String str2, long j11, long j12, long j13, long j14, List list) {
            this.f19291b = str;
            this.f19292c = "".equals(str2) ? null : str2;
            this.f19293d = j11;
            this.f19294e = j12;
            this.f19295f = j13;
            this.f19296g = j14;
            this.f19297h = list;
        }

        private static List a(com.android.volley.c.a aVar) {
            List list = aVar.f19227h;
            return list != null ? list : d.h(aVar.f19226g);
        }

        static a b(b bVar) throws IOException {
            if (c.m(bVar) == 538247942) {
                return new a(c.o(bVar), c.o(bVar), c.n(bVar), c.n(bVar), c.n(bVar), c.n(bVar), c.l(bVar));
            }
            throw new IOException();
        }

        com.android.volley.c.a c(byte[] bArr) {
            com.android.volley.c.a aVar = new com.android.volley.c.a();
            aVar.f19220a = bArr;
            aVar.f19221b = this.f19292c;
            aVar.f19222c = this.f19293d;
            aVar.f19223d = this.f19294e;
            aVar.f19224e = this.f19295f;
            aVar.f19225f = this.f19296g;
            aVar.f19226g = d.i(this.f19297h);
            aVar.f19227h = Collections.unmodifiableList(this.f19297h);
            return aVar;
        }

        boolean d(OutputStream outputStream) {
            try {
                c.t(outputStream, 538247942);
                c.v(outputStream, this.f19291b);
                String str = this.f19292c;
                if (str == null) {
                    str = "";
                }
                c.v(outputStream, str);
                c.u(outputStream, this.f19293d);
                c.u(outputStream, this.f19294e);
                c.u(outputStream, this.f19295f);
                c.u(outputStream, this.f19296g);
                c.s(this.f19297h, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e11) {
                com.android.volley.l.b("%s", e11.toString());
                return false;
            }
        }
    }

    static class b extends FilterInputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f19298a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f19299b;

        b(InputStream inputStream, long j11) {
            super(inputStream);
            this.f19298a = j11;
        }

        long d() {
            return this.f19298a - this.f19299b;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int i11 = super.read();
            if (i11 != -1) {
                this.f19299b++;
            }
            return i11;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i11, int i12) throws IOException {
            int i13 = super.read(bArr, i11, i12);
            if (i13 != -1) {
                this.f19299b += (long) i13;
            }
            return i13;
        }
    }

    /* JADX INFO: renamed from: com.android.volley.toolbox.c$c, reason: collision with other inner class name */
    public interface InterfaceC0177c {
        File get();
    }

    public c(InterfaceC0177c interfaceC0177c) {
        this(interfaceC0177c, 5242880);
    }

    public c(InterfaceC0177c interfaceC0177c, int i11) {
        this.f19286a = new LinkedHashMap(16, 0.75f, true);
        this.f19287b = 0L;
        this.f19288c = interfaceC0177c;
        this.f19289d = i11;
    }

    private String g(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    private void h() {
        if (this.f19288c.get().exists()) {
            return;
        }
        com.android.volley.l.b("Re-initializing cache after external clearing.", new Object[0]);
        this.f19286a.clear();
        this.f19287b = 0L;
        initialize();
    }

    private void i() {
        if (this.f19287b < this.f19289d) {
            return;
        }
        if (com.android.volley.l.f19256b) {
            com.android.volley.l.e("Pruning old cache entries.", new Object[0]);
        }
        long j11 = this.f19287b;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Iterator it = this.f19286a.entrySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            a aVar = (a) ((Map.Entry) it.next()).getValue();
            if (f(aVar.f19291b).delete()) {
                this.f19287b -= aVar.f19290a;
            } else {
                String str = aVar.f19291b;
                com.android.volley.l.b("Could not delete cache entry for key=%s, filename=%s", str, g(str));
            }
            it.remove();
            i11++;
            if (this.f19287b < this.f19289d * 0.9f) {
                break;
            }
        }
        if (com.android.volley.l.f19256b) {
            com.android.volley.l.e("pruned %d files, %d bytes, %d ms", Integer.valueOf(i11), Long.valueOf(this.f19287b - j11), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
        }
    }

    private void j(String str, a aVar) {
        if (this.f19286a.containsKey(str)) {
            this.f19287b += aVar.f19290a - ((a) this.f19286a.get(str)).f19290a;
        } else {
            this.f19287b += aVar.f19290a;
        }
        this.f19286a.put(str, aVar);
    }

    private static int k(InputStream inputStream) throws IOException {
        int i11 = inputStream.read();
        if (i11 != -1) {
            return i11;
        }
        throw new EOFException();
    }

    static List l(b bVar) throws IOException {
        int iM = m(bVar);
        if (iM < 0) {
            throw new IOException("readHeaderList size=" + iM);
        }
        List listEmptyList = iM == 0 ? Collections.emptyList() : new ArrayList();
        for (int i11 = 0; i11 < iM; i11++) {
            listEmptyList.add(new com.android.volley.e(o(bVar).intern(), o(bVar).intern()));
        }
        return listEmptyList;
    }

    static int m(InputStream inputStream) {
        return (k(inputStream) << 24) | k(inputStream) | (k(inputStream) << 8) | (k(inputStream) << 16);
    }

    static long n(InputStream inputStream) {
        return (((long) k(inputStream)) & 255) | ((((long) k(inputStream)) & 255) << 8) | ((((long) k(inputStream)) & 255) << 16) | ((((long) k(inputStream)) & 255) << 24) | ((((long) k(inputStream)) & 255) << 32) | ((((long) k(inputStream)) & 255) << 40) | ((((long) k(inputStream)) & 255) << 48) | ((255 & ((long) k(inputStream))) << 56);
    }

    static String o(b bVar) {
        return new String(r(bVar, n(bVar)), "UTF-8");
    }

    private void q(String str) {
        a aVar = (a) this.f19286a.remove(str);
        if (aVar != null) {
            this.f19287b -= aVar.f19290a;
        }
    }

    static byte[] r(b bVar, long j11) throws IOException {
        long jD = bVar.d();
        if (j11 >= 0 && j11 <= jD) {
            int i11 = (int) j11;
            if (i11 == j11) {
                byte[] bArr = new byte[i11];
                new DataInputStream(bVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j11 + ", maxLength=" + jD);
    }

    static void s(List list, OutputStream outputStream) throws IOException {
        if (list == null) {
            t(outputStream, 0);
            return;
        }
        t(outputStream, list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.android.volley.e eVar = (com.android.volley.e) it.next();
            v(outputStream, eVar.a());
            v(outputStream, eVar.b());
        }
    }

    static void t(OutputStream outputStream, int i11) throws IOException {
        outputStream.write(i11 & 255);
        outputStream.write((i11 >> 8) & 255);
        outputStream.write((i11 >> 16) & 255);
        outputStream.write((i11 >> 24) & 255);
    }

    static void u(OutputStream outputStream, long j11) throws IOException {
        outputStream.write((byte) j11);
        outputStream.write((byte) (j11 >>> 8));
        outputStream.write((byte) (j11 >>> 16));
        outputStream.write((byte) (j11 >>> 24));
        outputStream.write((byte) (j11 >>> 32));
        outputStream.write((byte) (j11 >>> 40));
        outputStream.write((byte) (j11 >>> 48));
        outputStream.write((byte) (j11 >>> 56));
    }

    static void v(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        u(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    @Override // com.android.volley.c
    public synchronized com.android.volley.c.a a(String str) {
        a aVar = (a) this.f19286a.get(str);
        if (aVar == null) {
            return null;
        }
        File fileF = f(str);
        try {
            b bVar = new b(new BufferedInputStream(d(fileF)), fileF.length());
            try {
                a aVarB = a.b(bVar);
                if (TextUtils.equals(str, aVarB.f19291b)) {
                    com.android.volley.c.a aVarC = aVar.c(r(bVar, bVar.d()));
                    bVar.close();
                    return aVarC;
                }
                com.android.volley.l.b("%s: key=%s, found=%s", fileF.getAbsolutePath(), str, aVarB.f19291b);
                q(str);
                bVar.close();
                return null;
            } catch (Throwable th2) {
                bVar.close();
                throw th2;
            }
        } catch (IOException e11) {
            com.android.volley.l.b("%s: %s", fileF.getAbsolutePath(), e11.toString());
            p(str);
            return null;
        }
    }

    @Override // com.android.volley.c
    public synchronized void b(String str, boolean z10) {
        try {
            com.android.volley.c.a aVarA = a(str);
            if (aVarA != null) {
                aVarA.f19225f = 0L;
                if (z10) {
                    aVarA.f19224e = 0L;
                }
                c(str, aVarA);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.android.volley.c
    public synchronized void c(String str, com.android.volley.c.a aVar) {
        long j11 = this.f19287b;
        byte[] bArr = aVar.f19220a;
        long length = j11 + ((long) bArr.length);
        int i11 = this.f19289d;
        if (length > i11 && bArr.length > i11 * 0.9f) {
            return;
        }
        File fileF = f(str);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(e(fileF));
            a aVar2 = new a(str, aVar);
            if (!aVar2.d(bufferedOutputStream)) {
                bufferedOutputStream.close();
                com.android.volley.l.b("Failed to write header for %s", fileF.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(aVar.f19220a);
            bufferedOutputStream.close();
            aVar2.f19290a = fileF.length();
            j(str, aVar2);
            i();
        } catch (IOException unused) {
            if (!fileF.delete()) {
                com.android.volley.l.b("Could not clean up file %s", fileF.getAbsolutePath());
            }
            h();
        }
    }

    InputStream d(File file) {
        return new FileInputStream(file);
    }

    OutputStream e(File file) {
        return new FileOutputStream(file);
    }

    public File f(String str) {
        return new File(this.f19288c.get(), g(str));
    }

    @Override // com.android.volley.c
    public synchronized void initialize() {
        synchronized (this) {
            try {
                File file = this.f19288c.get();
                if (!file.exists()) {
                    if (!file.mkdirs()) {
                        com.android.volley.l.c("Unable to create cache dir %s", file.getAbsolutePath());
                    }
                    return;
                }
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    return;
                }
                for (File file2 : fileArrListFiles) {
                    try {
                        long length = file2.length();
                        b bVar = new b(new BufferedInputStream(d(file2)), length);
                        try {
                            a aVarB = a.b(bVar);
                            aVarB.f19290a = length;
                            j(aVarB.f19291b, aVarB);
                            bVar.close();
                        } catch (Throwable th2) {
                            bVar.close();
                            throw th2;
                        }
                    } catch (IOException unused) {
                        file2.delete();
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public synchronized void p(String str) {
        boolean zDelete = f(str).delete();
        q(str);
        if (!zDelete) {
            com.android.volley.l.b("Could not delete cache entry for key=%s, filename=%s", str, g(str));
        }
    }
}
