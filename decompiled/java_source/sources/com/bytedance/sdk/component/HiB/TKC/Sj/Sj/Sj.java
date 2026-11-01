package com.bytedance.sdk.component.HiB.TKC.Sj.Sj;

import android.util.Log;
import com.bytedance.sdk.component.utils.TEQ;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class Sj implements Closeable {
    static final Pattern Sj = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final OutputStream TKC = new OutputStream() { // from class: com.bytedance.sdk.component.HiB.TKC.Sj.Sj.Sj.2
        @Override // java.io.OutputStream
        public void write(int i11) throws IOException {
        }
    };
    private final int Dq;
    private final File EjP;
    private final File HiB;
    private final File Jcg;
    private final int TEQ;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private Writer f20858aa;
    final ExecutorService sP;
    private int sef;
    private long uA;
    private final File vS;
    private long Ym = 0;
    private final LinkedHashMap<String, sP> Fmk = new LinkedHashMap<>(0, 0.75f, true);
    private long Zq = -1;
    private long uvD = 0;
    private final Callable<Void> dNu = new Callable<Void>() { // from class: com.bytedance.sdk.component.HiB.TKC.Sj.Sj.Sj.1
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (Sj.this) {
                try {
                    if (Sj.this.f20858aa == null) {
                        return null;
                    }
                    Sj.this.Dq();
                    if (Sj.this.vS()) {
                        Sj.this.HiB();
                        Sj.this.sef = 0;
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    };

    /* JADX INFO: renamed from: com.bytedance.sdk.component.HiB.TKC.Sj.Sj.Sj$Sj, reason: collision with other inner class name */
    public final class C0212Sj {
        private boolean EjP;
        private boolean HiB;
        private final boolean[] TKC;
        private final sP sP;

        /* JADX INFO: renamed from: com.bytedance.sdk.component.HiB.TKC.Sj.Sj.Sj$Sj$Sj, reason: collision with other inner class name */
        private class C0213Sj extends FilterOutputStream {
            private C0213Sj(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    C0212Sj.this.EjP = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    C0212Sj.this.EjP = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i11) {
                try {
                    ((FilterOutputStream) this).out.write(i11);
                } catch (IOException unused) {
                    C0212Sj.this.EjP = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i11, int i12) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i11, i12);
                } catch (IOException unused) {
                    C0212Sj.this.EjP = true;
                }
            }
        }

        private C0212Sj(sP sPVar) {
            this.sP = sPVar;
            this.TKC = sPVar.EjP ? null : new boolean[Sj.this.TEQ];
        }

        public OutputStream Sj(int i11) throws IOException {
            FileOutputStream fileOutputStream;
            C0213Sj c0213Sj;
            if (i11 < 0 || i11 >= Sj.this.TEQ) {
                throw new IllegalArgumentException("Expected index " + i11 + " to be greater than 0 and less than the maximum value count of " + Sj.this.TEQ);
            }
            synchronized (Sj.this) {
                try {
                    if (this.sP.HiB != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.sP.EjP) {
                        this.TKC[i11] = true;
                    }
                    File fileSP = this.sP.sP(i11);
                    try {
                        fileOutputStream = new FileOutputStream(fileSP);
                    } catch (FileNotFoundException unused) {
                        Sj.this.EjP.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(fileSP);
                        } catch (FileNotFoundException unused2) {
                            return Sj.TKC;
                        }
                    }
                    c0213Sj = new C0213Sj(fileOutputStream);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return c0213Sj;
        }

        public void Sj() throws IOException {
            if (this.EjP) {
                Sj.this.Sj(this, false);
                Sj.this.TKC(this.sP.sP);
            } else {
                Sj.this.Sj(this, true);
            }
            this.HiB = true;
        }

        public void sP() throws IOException {
            Sj.this.Sj(this, false);
        }
    }

    public final class TKC implements Closeable {
        private final InputStream[] EjP;
        private final long[] HiB;
        private final long TKC;
        private final String sP;

        private TKC(String str, long j11, InputStream[] inputStreamArr, long[] jArr) {
            this.sP = str;
            this.TKC = j11;
            this.EjP = inputStreamArr;
            this.HiB = jArr;
        }

        public InputStream Sj(int i11) {
            return this.EjP[i11];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.EjP) {
                TEQ.Sj(inputStream);
            }
        }
    }

    private final class sP {
        private boolean EjP;
        private C0212Sj HiB;
        private final long[] TKC;
        private final String sP;
        private long vS;

        private sP(String str) {
            this.sP = str;
            this.TKC = new long[Sj.this.TEQ];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void Sj(String[] strArr) throws IOException {
            if (strArr.length != Sj.this.TEQ) {
                throw sP(strArr);
            }
            for (int i11 = 0; i11 < strArr.length; i11++) {
                try {
                    this.TKC[i11] = Long.parseLong(strArr[i11]);
                } catch (NumberFormatException unused) {
                    throw sP(strArr);
                }
            }
        }

        private IOException sP(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File Sj(int i11) {
            return new File(Sj.this.EjP, this.sP + "." + i11);
        }

        public String Sj() throws IOException {
            StringBuilder sb2 = new StringBuilder();
            for (long j11 : this.TKC) {
                sb2.append(' ');
                sb2.append(j11);
            }
            return sb2.toString();
        }

        public File sP(int i11) {
            return new File(Sj.this.EjP, this.sP + "." + i11 + ".tmp");
        }
    }

    private Sj(File file, int i11, int i12, long j11, ExecutorService executorService) {
        this.EjP = file;
        this.Dq = i11;
        this.HiB = new File(file, "journal");
        this.vS = new File(file, "journal.tmp");
        this.Jcg = new File(file, "journal.bkp");
        this.TEQ = i12;
        this.uA = j11;
        this.sP = executorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Dq() throws IOException {
        long j11 = this.uA;
        long j12 = this.Zq;
        if (j12 >= 0) {
            j11 = j12;
        }
        while (this.Ym > j11) {
            TKC(this.Fmk.entrySet().iterator().next().getKey());
        }
        this.Zq = -1L;
    }

    private void EjP() throws IOException {
        Sj(this.vS);
        Iterator<sP> it = this.Fmk.values().iterator();
        while (it.hasNext()) {
            sP next = it.next();
            int i11 = 0;
            if (next.HiB == null) {
                while (i11 < this.TEQ) {
                    this.Ym += next.TKC[i11];
                    i11++;
                }
            } else {
                next.HiB = null;
                while (i11 < this.TEQ) {
                    Sj(next.Sj(i11));
                    Sj(next.sP(i11));
                    i11++;
                }
                it.remove();
            }
        }
    }

    private void EjP(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i11 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i11);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i11);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.Fmk.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i11, iIndexOf2);
        }
        sP sPVar = this.Fmk.get(strSubstring);
        if (sPVar == null) {
            sPVar = new sP(strSubstring);
            this.Fmk.put(strSubstring, sPVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            sPVar.EjP = true;
            sPVar.HiB = null;
            sPVar.Sj(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            sPVar.HiB = new C0212Sj(sPVar);
        } else if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void HiB() throws IOException {
        try {
            Writer writer = this.f20858aa;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.vS), EjP.Sj));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.Dq));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.TEQ));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (sP sPVar : this.Fmk.values()) {
                    if (sPVar.HiB != null) {
                        bufferedWriter.write("DIRTY " + sPVar.sP + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + sPVar.sP + sPVar.Sj() + '\n');
                    }
                }
                bufferedWriter.close();
                if (this.HiB.exists()) {
                    Sj(this.HiB, this.Jcg, true);
                }
                Sj(this.vS, this.HiB, false);
                this.Jcg.delete();
                this.f20858aa = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.HiB, true), EjP.Sj));
            } catch (Throwable th2) {
                bufferedWriter.close();
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    private void HiB(String str) {
        if (Sj.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    private void Jcg() {
        if (this.f20858aa == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    private synchronized C0212Sj Sj(String str, long j11) throws IOException {
        Jcg();
        HiB(str);
        sP sPVar = this.Fmk.get(str);
        if (j11 != -1 && (sPVar == null || sPVar.vS != j11)) {
            return null;
        }
        if (sPVar == null) {
            sPVar = new sP(str);
            this.Fmk.put(str, sPVar);
        } else if (sPVar.HiB != null) {
            return null;
        }
        C0212Sj c0212Sj = new C0212Sj(sPVar);
        sPVar.HiB = c0212Sj;
        this.f20858aa.write("DIRTY " + str + '\n');
        this.f20858aa.flush();
        return c0212Sj;
    }

    public static Sj Sj(File file, int i11, int i12, long j11, ExecutorService executorService) throws IOException {
        if (j11 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i12 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                Sj(file2, file3, false);
            }
        }
        Sj sj2 = new Sj(file, i11, i12, j11, executorService);
        if (sj2.HiB.exists()) {
            try {
                sj2.TKC();
                sj2.EjP();
                return sj2;
            } catch (IOException e11) {
                Log.w("DiskLruCache ", file + " is corrupt: " + e11.getMessage() + ", removing");
                sj2.sP();
            }
        }
        file.mkdirs();
        Sj sj3 = new Sj(file, i11, i12, j11, executorService);
        sj3.HiB();
        return sj3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Sj(C0212Sj c0212Sj, boolean z10) throws IOException {
        sP sPVar = c0212Sj.sP;
        if (sPVar.HiB != c0212Sj) {
            throw new IllegalStateException();
        }
        if (z10 && !sPVar.EjP) {
            for (int i11 = 0; i11 < this.TEQ; i11++) {
                if (!c0212Sj.TKC[i11]) {
                    c0212Sj.sP();
                    throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i11)));
                }
                if (!sPVar.sP(i11).exists()) {
                    c0212Sj.sP();
                    return;
                }
            }
        }
        for (int i12 = 0; i12 < this.TEQ; i12++) {
            File fileSP = sPVar.sP(i12);
            if (!z10) {
                Sj(fileSP);
            } else if (fileSP.exists()) {
                File fileSj = sPVar.Sj(i12);
                fileSP.renameTo(fileSj);
                long j11 = sPVar.TKC[i12];
                long length = fileSj.length();
                sPVar.TKC[i12] = length;
                this.Ym = (this.Ym - j11) + length;
            }
        }
        this.sef++;
        sPVar.HiB = null;
        if (sPVar.EjP || z10) {
            sPVar.EjP = true;
            this.f20858aa.write("CLEAN " + sPVar.sP + sPVar.Sj() + '\n');
            if (z10) {
                long j12 = this.uvD;
                this.uvD = 1 + j12;
                sPVar.vS = j12;
            }
        } else {
            this.Fmk.remove(sPVar.sP);
            this.f20858aa.write("REMOVE " + sPVar.sP + '\n');
        }
        this.f20858aa.flush();
        if (this.Ym > this.uA || vS()) {
            this.sP.submit(this.dNu);
        }
    }

    private static void Sj(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void Sj(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            Sj(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private void TKC() throws IOException {
        com.bytedance.sdk.component.HiB.TKC.Sj.Sj.TKC tkc = new com.bytedance.sdk.component.HiB.TKC.Sj.Sj.TKC(new FileInputStream(this.HiB), EjP.Sj);
        try {
            String strSj = tkc.Sj();
            String strSj2 = tkc.Sj();
            String strSj3 = tkc.Sj();
            String strSj4 = tkc.Sj();
            String strSj5 = tkc.Sj();
            if (!"libcore.io.DiskLruCache".equals(strSj) || !"1".equals(strSj2) || !Integer.toString(this.Dq).equals(strSj3) || !Integer.toString(this.TEQ).equals(strSj4) || !"".equals(strSj5)) {
                throw new IOException("unexpected journal header: [" + strSj + ", " + strSj2 + ", " + strSj4 + ", " + strSj5 + "]");
            }
            int i11 = 0;
            while (true) {
                try {
                    EjP(tkc.Sj());
                    i11++;
                } catch (EOFException unused) {
                    this.sef = i11 - this.Fmk.size();
                    if (tkc.sP()) {
                        HiB();
                    } else {
                        this.f20858aa = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.HiB, true), EjP.Sj));
                    }
                    TEQ.Sj(tkc);
                    return;
                }
            }
        } catch (Throwable th2) {
            TEQ.Sj(tkc);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean vS() {
        int i11 = this.sef;
        return i11 >= 2000 && i11 >= this.Fmk.size();
    }

    public synchronized TKC Sj(String str) throws IOException {
        InputStream inputStream;
        Jcg();
        HiB(str);
        sP sPVar = this.Fmk.get(str);
        if (sPVar == null) {
            return null;
        }
        if (!sPVar.EjP) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.TEQ];
        for (int i11 = 0; i11 < this.TEQ; i11++) {
            try {
                inputStreamArr[i11] = new FileInputStream(sPVar.Sj(i11));
            } catch (FileNotFoundException unused) {
                for (int i12 = 0; i12 < this.TEQ && (inputStream = inputStreamArr[i12]) != null; i12++) {
                    TEQ.Sj(inputStream);
                }
                return null;
            }
        }
        this.sef++;
        this.f20858aa.append((CharSequence) ("READ " + str + '\n'));
        if (vS()) {
            this.sP.submit(this.dNu);
        }
        return new TKC(str, sPVar.vS, inputStreamArr, sPVar.TKC);
    }

    public synchronized void Sj() throws IOException {
        Jcg();
        Dq();
        this.f20858aa.flush();
    }

    public synchronized boolean TKC(String str) throws IOException {
        try {
            Jcg();
            HiB(str);
            sP sPVar = this.Fmk.get(str);
            if (sPVar != null && sPVar.HiB == null) {
                for (int i11 = 0; i11 < this.TEQ; i11++) {
                    File fileSj = sPVar.Sj(i11);
                    if (fileSj.exists() && !fileSj.delete()) {
                        throw new IOException("failed to delete ".concat(String.valueOf(fileSj)));
                    }
                    this.Ym -= sPVar.TKC[i11];
                    sPVar.TKC[i11] = 0;
                }
                this.sef++;
                this.f20858aa.append((CharSequence) ("REMOVE " + str + '\n'));
                this.Fmk.remove(str);
                if (vS()) {
                    this.sP.submit(this.dNu);
                }
                return true;
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        try {
            if (this.f20858aa == null) {
                return;
            }
            for (sP sPVar : new ArrayList(this.Fmk.values())) {
                if (sPVar.HiB != null) {
                    sPVar.HiB.sP();
                }
            }
            Dq();
            this.f20858aa.close();
            this.f20858aa = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public C0212Sj sP(String str) throws IOException {
        return Sj(str, -1L);
    }

    public void sP() throws IOException {
        close();
        EjP.Sj(this.EjP);
    }
}
