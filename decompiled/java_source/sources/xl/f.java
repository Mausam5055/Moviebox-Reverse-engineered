package xl;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f78328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f78329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f78330c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f78331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f78332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f78333f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f78334g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Writer f78336i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f78338k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f78342o;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f78335h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final LinkedHashMap f78337j = new LinkedHashMap(0, 0.75f, true);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f78339l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final ThreadPoolExecutor f78340m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Callable f78341n = new a();

    class a implements Callable {
        a() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() {
            synchronized (f.this) {
                try {
                    if (f.this.f78336i == null) {
                        return null;
                    }
                    f.this.Z();
                    if (f.this.s()) {
                        f.this.U();
                        f.this.f78338k = 0;
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static final class b implements ThreadFactory {
        /* synthetic */ b(a aVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    public final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f78344a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean[] f78345b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f78346c;

        /* synthetic */ c(d dVar, a aVar) {
            this.f78344a = dVar;
            this.f78345b = dVar.f78352e ? null : new boolean[f.this.f78334g];
        }

        public File a(int i11) {
            File file;
            synchronized (f.this) {
                try {
                    if (this.f78344a.f78353f != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.f78344a.f78352e) {
                        this.f78345b[i11] = true;
                    }
                    file = this.f78344a.f78351d[i11];
                    if (!f.this.f78328a.exists()) {
                        f.this.f78328a.mkdirs();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return file;
        }

        public void c() {
            f.this.o(this, false);
        }

        public void d() {
            if (this.f78346c) {
                return;
            }
            try {
                c();
            } catch (IOException unused) {
            }
        }

        public void f() {
            f.this.o(this, true);
            this.f78346c = true;
        }
    }

    private final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f78348a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long[] f78349b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        File[] f78350c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        File[] f78351d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f78352e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private c f78353f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f78354g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f78355h;

        /* synthetic */ d(String str, a aVar) {
            this.f78348a = str;
            this.f78349b = new long[f.this.f78334g];
            this.f78350c = new File[f.this.f78334g];
            this.f78351d = new File[f.this.f78334g];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            for (int i11 = 0; i11 < f.this.f78334g; i11++) {
                sb2.append(i11);
                this.f78350c[i11] = new File(f.this.f78328a, sb2.toString());
                sb2.append(".tmp");
                this.f78351d[i11] = new File(f.this.f78328a, sb2.toString());
                sb2.setLength(length);
            }
        }

        private IOException d(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k(String[] strArr) throws IOException {
            if (strArr.length != f.this.f78334g) {
                d(strArr);
                throw null;
            }
            for (int i11 = 0; i11 < strArr.length; i11++) {
                try {
                    this.f78349b[i11] = Long.parseLong(strArr[i11]);
                } catch (NumberFormatException unused) {
                    d(strArr);
                    throw null;
                }
            }
        }

        public File c(int i11) {
            return this.f78350c[i11];
        }

        public String e() {
            StringBuilder sb2 = new StringBuilder();
            for (long j11 : this.f78349b) {
                sb2.append(' ');
                sb2.append(j11);
            }
            return sb2.toString();
        }

        public File j(int i11) {
            return this.f78351d[i11];
        }
    }

    public final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final File[] f78357a;

        /* synthetic */ e(f fVar, String str, long j11, File[] fileArr, long[] jArr, a aVar) {
            this.f78357a = fileArr;
        }

        public File a(int i11) {
            return this.f78357a[i11];
        }
    }

    private f(File file, int i11, int i12, long j11, long j12) {
        this.f78328a = file;
        this.f78332e = i11;
        this.f78329b = new File(file, "journal");
        this.f78330c = new File(file, "journal.tmp");
        this.f78331d = new File(file, "journal.bkp");
        this.f78334g = i12;
        this.f78333f = j11;
        this.f78342o = j12;
    }

    private void T(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i11 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i11);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i11);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.f78337j.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i11, iIndexOf2);
        }
        d dVar = (d) this.f78337j.get(strSubstring);
        a aVar = null;
        if (dVar == null) {
            dVar = new d(strSubstring, aVar);
            this.f78337j.put(strSubstring, dVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f78353f = new c(dVar, aVar);
                return;
            }
            if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
                return;
            }
            throw new IOException("unexpected journal line: " + str);
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        dVar.f78352e = true;
        dVar.f78353f = null;
        if (!strArrSplit[strArrSplit.length - 1].startsWith("STAMP_")) {
            dVar.f78355h = System.currentTimeMillis();
            dVar.k(strArrSplit);
            return;
        }
        String[] strArr = new String[strArrSplit.length - 1];
        for (int i12 = 0; i12 < strArrSplit.length - 1; i12++) {
            strArr[i12] = strArrSplit[i12];
        }
        dVar.k(strArr);
        dVar.f78355h = Long.parseLong(strArrSplit[strArrSplit.length - 1].substring(6));
        if (Math.abs(System.currentTimeMillis() - dVar.f78355h) > this.f78342o) {
            dVar.f78353f = new c(dVar, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void U() {
        try {
            Writer writer = this.f78336i;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f78330c), xl.d.f78320a));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f78332e));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f78334g));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (d dVar : this.f78337j.values()) {
                    if (dVar.f78353f != null) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("DIRTY ");
                        sb2.append(dVar.f78348a);
                        sb2.append('\n');
                        bufferedWriter.write(sb2.toString());
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("CLEAN ");
                        sb3.append(dVar.f78348a);
                        sb3.append(dVar.e());
                        sb3.append(' ');
                        sb3.append("STAMP_");
                        sb3.append(dVar.f78355h);
                        sb3.append('\n');
                        bufferedWriter.write(sb3.toString());
                    }
                }
                bufferedWriter.close();
                if (this.f78329b.exists()) {
                    n(this.f78329b, this.f78331d, true);
                }
                n(this.f78330c, this.f78329b, false);
                this.f78331d.delete();
                this.f78336i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f78329b, true), xl.d.f78320a));
            } catch (Throwable th2) {
                bufferedWriter.close();
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z() {
        while (this.f78335h > this.f78333f) {
            v((String) ((Map.Entry) this.f78337j.entrySet().iterator().next()).getKey());
        }
    }

    private synchronized c i(String str, long j11) {
        l();
        d dVar = (d) this.f78337j.get(str);
        a aVar = null;
        if (j11 != -1 && (dVar == null || dVar.f78354g != j11)) {
            return null;
        }
        if (dVar == null) {
            dVar = new d(str, aVar);
            this.f78337j.put(str, dVar);
        } else if (dVar.f78353f != null) {
            return null;
        }
        c cVar = new c(dVar, aVar);
        dVar.f78353f = cVar;
        this.f78336i.append((CharSequence) "DIRTY");
        this.f78336i.append(' ');
        this.f78336i.append((CharSequence) str);
        this.f78336i.append('\n');
        this.f78336i.flush();
        return cVar;
    }

    public static f k(File file, int i11, int i12, long j11, long j12) throws IOException {
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
                n(file2, file3, false);
            }
        }
        f fVar = new f(file, i11, i12, j11, j12);
        if (fVar.f78329b.exists()) {
            try {
                fVar.x();
                fVar.u();
                return fVar;
            } catch (IOException e11) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e11.getMessage() + ", removing");
                fVar.close();
                xl.d.c(fVar.f78328a);
            }
        }
        file.mkdirs();
        f fVar2 = new f(file, i11, i12, j11, j12);
        fVar2.U();
        return fVar2;
    }

    private void l() {
        if (this.f78336i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    private static void m(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void n(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            m(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void o(c cVar, boolean z10) {
        d dVar = cVar.f78344a;
        if (dVar.f78353f != cVar) {
            throw new IllegalStateException();
        }
        if (z10 && !dVar.f78352e) {
            for (int i11 = 0; i11 < this.f78334g; i11++) {
                if (!cVar.f78345b[i11]) {
                    cVar.c();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i11);
                }
                if (!dVar.j(i11).exists()) {
                    cVar.c();
                    return;
                }
            }
        }
        for (int i12 = 0; i12 < this.f78334g; i12++) {
            File fileJ = dVar.j(i12);
            if (!z10) {
                m(fileJ);
            } else if (fileJ.exists()) {
                File fileC = dVar.c(i12);
                fileJ.renameTo(fileC);
                long j11 = dVar.f78349b[i12];
                long length = fileC.length();
                dVar.f78349b[i12] = length;
                this.f78335h = (this.f78335h - j11) + length;
            }
        }
        this.f78338k++;
        dVar.f78353f = null;
        if (dVar.f78352e || z10) {
            dVar.f78352e = true;
            this.f78336i.append((CharSequence) "CLEAN");
            this.f78336i.append(' ');
            this.f78336i.append((CharSequence) dVar.f78348a);
            this.f78336i.append((CharSequence) dVar.e());
            this.f78336i.append(' ');
            this.f78336i.append((CharSequence) "STAMP_");
            this.f78336i.append((CharSequence) String.valueOf(System.currentTimeMillis()));
            this.f78336i.append('\n');
            if (z10) {
                long j12 = this.f78339l;
                this.f78339l = 1 + j12;
                dVar.f78354g = j12;
            }
        } else {
            this.f78337j.remove(dVar.f78348a);
            this.f78336i.append((CharSequence) "REMOVE");
            this.f78336i.append(' ');
            this.f78336i.append((CharSequence) dVar.f78348a);
            this.f78336i.append('\n');
        }
        this.f78336i.flush();
        if (this.f78335h > this.f78333f || s()) {
            this.f78340m.submit(this.f78341n);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s() {
        int i11 = this.f78338k;
        return i11 >= 2000 && i11 >= this.f78337j.size();
    }

    private void u() throws IOException {
        m(this.f78330c);
        Iterator it = this.f78337j.values().iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            int i11 = 0;
            if (dVar.f78353f == null) {
                while (i11 < this.f78334g) {
                    this.f78335h += dVar.f78349b[i11];
                    i11++;
                }
            } else {
                dVar.f78353f = null;
                while (i11 < this.f78334g) {
                    m(dVar.c(i11));
                    m(dVar.j(i11));
                    i11++;
                }
                it.remove();
            }
        }
    }

    private void x() {
        l lVar = new l(new FileInputStream(this.f78329b), xl.d.f78320a);
        try {
            String strH = lVar.h();
            String strH2 = lVar.h();
            String strH3 = lVar.h();
            String strH4 = lVar.h();
            String strH5 = lVar.h();
            if (!"libcore.io.DiskLruCache".equals(strH) || !"1".equals(strH2) || !Integer.toString(this.f78332e).equals(strH3) || !Integer.toString(this.f78334g).equals(strH4) || !"".equals(strH5)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("unexpected journal header: [");
                sb2.append(strH);
                sb2.append(", ");
                sb2.append(strH2);
                sb2.append(", ");
                sb2.append(strH4);
                sb2.append(", ");
                sb2.append(strH5);
                sb2.append("]");
                throw new IOException(sb2.toString());
            }
            int i11 = 0;
            while (true) {
                try {
                    T(lVar.h());
                    i11++;
                } catch (EOFException unused) {
                    this.f78338k = i11 - this.f78337j.size();
                    if (lVar.d()) {
                        U();
                    } else {
                        this.f78336i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f78329b, true), xl.d.f78320a));
                    }
                    xl.d.b(lVar);
                    return;
                }
            }
        } catch (Throwable th2) {
            xl.d.b(lVar);
            throw th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            if (this.f78336i == null) {
                return;
            }
            for (d dVar : new ArrayList(this.f78337j.values())) {
                if (dVar.f78353f != null) {
                    dVar.f78353f.c();
                }
            }
            Z();
            this.f78336i.close();
            this.f78336i = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public c h(String str) {
        return i(str, -1L);
    }

    public synchronized e q(String str) {
        l();
        d dVar = (d) this.f78337j.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.f78352e) {
            return null;
        }
        for (File file : dVar.f78350c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f78338k++;
        this.f78336i.append((CharSequence) "READ");
        this.f78336i.append(' ');
        this.f78336i.append((CharSequence) str);
        this.f78336i.append('\n');
        if (s()) {
            this.f78340m.submit(this.f78341n);
        }
        return new e(this, str, dVar.f78354g, dVar.f78350c, dVar.f78349b, null);
    }

    public synchronized boolean v(String str) {
        try {
            l();
            d dVar = (d) this.f78337j.get(str);
            if (dVar != null && dVar.f78353f == null) {
                for (int i11 = 0; i11 < this.f78334g; i11++) {
                    File fileC = dVar.c(i11);
                    if (fileC.exists() && !fileC.delete()) {
                        throw new IOException("failed to delete " + fileC);
                    }
                    this.f78335h -= dVar.f78349b[i11];
                    dVar.f78349b[i11] = 0;
                }
                this.f78338k++;
                this.f78336i.append((CharSequence) "REMOVE");
                this.f78336i.append(' ');
                this.f78336i.append((CharSequence) str);
                this.f78336i.append('\n');
                this.f78337j.remove(str);
                if (s()) {
                    this.f78340m.submit(this.f78341n);
                }
                return true;
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
