package com.cloud.hisavana.net.disklrucache;

import android.text.TextUtils;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.disklrucache.listener.LruCleanCallBack;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
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
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class DiskLruCache implements Closeable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final Pattern f21354o = Pattern.compile("[a-z0-9_-]{1,120}");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final OutputStream f21355p = new OutputStream() { // from class: com.cloud.hisavana.net.disklrucache.DiskLruCache.2
        @Override // java.io.OutputStream
        public void write(int i11) {
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f21356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f21357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f21358c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f21359d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f21360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f21361f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f21362g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Writer f21364i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final LinkedHashMap f21365j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f21366k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f21363h = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f21367l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final ThreadPoolExecutor f21368m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Callable f21369n = new Callable<Void>() { // from class: com.cloud.hisavana.net.disklrucache.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() {
            synchronized (DiskLruCache.this) {
                try {
                    if (DiskLruCache.this.f21364i == null) {
                        return null;
                    }
                    DiskLruCache.this.h0();
                    if (DiskLruCache.this.w()) {
                        DiskLruCache.this.c0();
                        DiskLruCache.this.f21366k = 0;
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    };

    public final class Editor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Entry f21371a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean[] f21372b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f21373c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f21374d;

        private class FaultHidingOutputStream extends FilterOutputStream {
            private FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    Editor.this.f21373c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    Editor.this.f21373c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i11) {
                try {
                    ((FilterOutputStream) this).out.write(i11);
                } catch (IOException unused) {
                    Editor.this.f21373c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i11, int i12) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i11, i12);
                } catch (IOException unused) {
                    Editor.this.f21373c = true;
                }
            }
        }

        private Editor(Entry entry) {
            this.f21371a = entry;
            this.f21372b = entry.f21379c ? null : new boolean[DiskLruCache.this.f21362g];
        }

        public void a() {
            DiskLruCache.this.q(this, false);
        }

        public void b() {
            if (this.f21374d) {
                return;
            }
            try {
                a();
            } catch (IOException unused) {
            }
        }

        public void f() {
            if (this.f21373c) {
                DiskLruCache.this.q(this, false);
                DiskLruCache.this.d0(this.f21371a.f21377a);
            } else {
                DiskLruCache.this.q(this, true);
            }
            this.f21374d = true;
        }

        public OutputStream g(int i11) {
            FileOutputStream fileOutputStream;
            FaultHidingOutputStream faultHidingOutputStream;
            if (i11 < 0 || i11 >= DiskLruCache.this.f21362g) {
                throw new IllegalArgumentException("Expected index " + i11 + " to be greater than 0 and less than the maximum value count of " + DiskLruCache.this.f21362g);
            }
            synchronized (DiskLruCache.this) {
                try {
                    if (this.f21371a.f21380d != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.f21371a.f21379c) {
                        this.f21372b[i11] = true;
                    }
                    File fileK = this.f21371a.k(i11);
                    try {
                        fileOutputStream = new FileOutputStream(fileK);
                    } catch (FileNotFoundException unused) {
                        DiskLruCache.this.f21356a.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(fileK);
                        } catch (FileNotFoundException unused2) {
                            return DiskLruCache.f21355p;
                        }
                    }
                    faultHidingOutputStream = new FaultHidingOutputStream(fileOutputStream);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return faultHidingOutputStream;
        }
    }

    private final class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f21377a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long[] f21378b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f21379c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Editor f21380d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f21381e;

        private Entry(String str) {
            this.f21377a = str;
            this.f21378b = new long[DiskLruCache.this.f21362g];
        }

        private IOException m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.f21362g) {
                throw m(strArr);
            }
            for (int i11 = 0; i11 < strArr.length; i11++) {
                try {
                    this.f21378b[i11] = Long.parseLong(strArr[i11]);
                } catch (NumberFormatException unused) {
                    throw m(strArr);
                }
            }
        }

        public File j(int i11) {
            return new File(DiskLruCache.this.f21356a, this.f21377a + "." + i11);
        }

        public File k(int i11) {
            return new File(DiskLruCache.this.f21356a, this.f21377a + "." + i11 + ".tmp");
        }

        public String l() {
            StringBuilder sb2 = new StringBuilder();
            for (long j11 : this.f21378b) {
                sb2.append(' ');
                sb2.append(j11);
            }
            return sb2.toString();
        }
    }

    public final class Snapshot implements Closeable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f21383a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f21384b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final InputStream[] f21385c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long[] f21386d;

        private Snapshot(String str, long j11, InputStream[] inputStreamArr, long[] jArr) {
            this.f21383a = str;
            this.f21384b = j11;
            this.f21385c = inputStreamArr;
            this.f21386d = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f21385c) {
                DiskLruCacheUtil.b(inputStream);
            }
        }
    }

    private DiskLruCache(File file, int i11, int i12, long j11, boolean z10) {
        this.f21356a = file;
        this.f21360e = i11;
        this.f21357b = new File(file, "journal");
        this.f21358c = new File(file, "journal.tmp");
        this.f21359d = new File(file, "journal.bkp");
        this.f21362g = i12;
        this.f21361f = j11;
        this.f21365j = new LinkedHashMap(0, 0.75f, z10);
    }

    public static DiskLruCache T(File file, int i11, int i12, long j11) {
        return U(file, i11, i12, j11, true);
    }

    public static DiskLruCache U(File file, int i11, int i12, long j11, boolean z10) throws IOException {
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
                g0(file2, file3, false);
            }
        }
        DiskLruCache diskLruCache = new DiskLruCache(file, i11, i12, j11, z10);
        if (diskLruCache.f21357b.exists()) {
            try {
                diskLruCache.Z();
                diskLruCache.V();
                return diskLruCache;
            } catch (IOException e11) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e11.getMessage() + ", removing");
                diskLruCache.r();
            }
        }
        file.mkdirs();
        DiskLruCache diskLruCache2 = new DiskLruCache(file, i11, i12, j11, z10);
        diskLruCache2.c0();
        return diskLruCache2;
    }

    private void V() throws IOException {
        s(this.f21358c);
        Iterator it = this.f21365j.values().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            int i11 = 0;
            if (entry.f21380d == null) {
                while (i11 < this.f21362g) {
                    this.f21363h += entry.f21378b[i11];
                    i11++;
                }
            } else {
                entry.f21380d = null;
                while (i11 < this.f21362g) {
                    s(entry.j(i11));
                    s(entry.k(i11));
                    i11++;
                }
                it.remove();
            }
        }
    }

    private void Z() {
        StrictLineReader strictLineReader = new StrictLineReader(new FileInputStream(this.f21357b), DiskLruCacheUtil.f21408a);
        try {
            String strK = strictLineReader.k();
            String strK2 = strictLineReader.k();
            String strK3 = strictLineReader.k();
            String strK4 = strictLineReader.k();
            String strK5 = strictLineReader.k();
            if (!"libcore.io.DiskLruCache".equals(strK) || !"1".equals(strK2) || !Integer.toString(this.f21360e).equals(strK3) || !Integer.toString(this.f21362g).equals(strK4) || !"".equals(strK5)) {
                throw new IOException("unexpected journal header: [" + strK + ", " + strK2 + ", " + strK4 + ", " + strK5 + "]");
            }
            int i11 = 0;
            while (true) {
                try {
                    a0(strictLineReader.k());
                    i11++;
                } catch (EOFException unused) {
                    this.f21366k = i11 - this.f21365j.size();
                    if (strictLineReader.h()) {
                        c0();
                    } else {
                        this.f21364i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f21357b, true), DiskLruCacheUtil.f21408a));
                    }
                    DiskLruCacheUtil.b(strictLineReader);
                    return;
                }
            }
        } catch (Throwable th2) {
            DiskLruCacheUtil.b(strictLineReader);
            throw th2;
        }
    }

    private void a0(String str) throws IOException {
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
                this.f21365j.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i11, iIndexOf2);
        }
        Entry entry = (Entry) this.f21365j.get(strSubstring);
        if (entry == null) {
            entry = new Entry(strSubstring);
            this.f21365j.put(strSubstring, entry);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            entry.f21379c = true;
            entry.f21380d = null;
            entry.n(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            entry.f21380d = new Editor(entry);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c0() {
        try {
            Writer writer = this.f21364i;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f21358c), DiskLruCacheUtil.f21408a));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f21360e));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f21362g));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (Entry entry : this.f21365j.values()) {
                    if (entry.f21380d != null) {
                        bufferedWriter.write("DIRTY " + entry.f21377a + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + entry.f21377a + entry.l() + '\n');
                    }
                }
                bufferedWriter.close();
                if (this.f21357b.exists()) {
                    g0(this.f21357b, this.f21359d, true);
                }
                g0(this.f21358c, this.f21357b, false);
                this.f21359d.delete();
                this.f21364i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f21357b, true), DiskLruCacheUtil.f21408a));
            } catch (Throwable th2) {
                bufferedWriter.close();
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    private static void g0(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            s(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0() {
        while (this.f21363h > this.f21361f) {
            Map.Entry entry = (Map.Entry) this.f21365j.entrySet().iterator().next();
            if (d0((String) entry.getKey())) {
                x((String) entry.getKey());
            }
        }
    }

    private void k0(String str) {
        if (f21354o.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    private void p() {
        if (this.f21364i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void q(Editor editor, boolean z10) {
        Entry entry = editor.f21371a;
        if (entry.f21380d != editor) {
            throw new IllegalStateException();
        }
        if (z10 && !entry.f21379c) {
            for (int i11 = 0; i11 < this.f21362g; i11++) {
                if (!editor.f21372b[i11]) {
                    editor.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i11);
                }
                if (!entry.k(i11).exists()) {
                    editor.a();
                    return;
                }
            }
        }
        for (int i12 = 0; i12 < this.f21362g; i12++) {
            File fileK = entry.k(i12);
            if (!z10) {
                s(fileK);
            } else if (fileK.exists()) {
                File fileJ = entry.j(i12);
                fileK.renameTo(fileJ);
                long j11 = entry.f21378b[i12];
                long length = fileJ.length();
                entry.f21378b[i12] = length;
                this.f21363h = (this.f21363h - j11) + length;
            }
        }
        this.f21366k++;
        entry.f21380d = null;
        if (entry.f21379c || z10) {
            entry.f21379c = true;
            this.f21364i.write("CLEAN " + entry.f21377a + entry.l() + '\n');
            if (z10) {
                long j12 = this.f21367l;
                this.f21367l = 1 + j12;
                entry.f21381e = j12;
            }
        } else {
            this.f21365j.remove(entry.f21377a);
            this.f21364i.write("REMOVE " + entry.f21377a + '\n');
        }
        this.f21364i.flush();
        if (this.f21363h > this.f21361f || w()) {
            this.f21368m.submit(this.f21369n);
        }
    }

    private static void s(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private synchronized Editor u(String str, long j11) {
        p();
        k0(str);
        Entry entry = (Entry) this.f21365j.get(str);
        if (j11 != -1 && (entry == null || entry.f21381e != j11)) {
            return null;
        }
        if (entry == null) {
            entry = new Entry(str);
            this.f21365j.put(str, entry);
        } else if (entry.f21380d != null) {
            return null;
        }
        Editor editor = new Editor(entry);
        entry.f21380d = editor;
        this.f21364i.write("DIRTY " + str + '\n');
        this.f21364i.flush();
        return editor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w() {
        int i11 = this.f21366k;
        return i11 >= 2000 && i11 >= this.f21365j.size();
    }

    private void x(String str) {
        HttpRequest httpRequest = HttpRequest.f21328a;
        if (httpRequest.g().isEmpty() || TextUtils.isEmpty(str)) {
            return;
        }
        for (LruCleanCallBack lruCleanCallBack : httpRequest.g()) {
            if (lruCleanCallBack != null) {
                lruCleanCallBack.onCallBack(str);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            if (this.f21364i == null) {
                return;
            }
            for (Entry entry : new ArrayList(this.f21365j.values())) {
                if (entry.f21380d != null) {
                    entry.f21380d.a();
                }
            }
            h0();
            this.f21364i.close();
            this.f21364i = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean d0(String str) {
        try {
            p();
            k0(str);
            Entry entry = (Entry) this.f21365j.get(str);
            if (entry != null && entry.f21380d == null) {
                for (int i11 = 0; i11 < this.f21362g; i11++) {
                    File fileJ = entry.j(i11);
                    if (fileJ.exists() && !fileJ.delete()) {
                        throw new IOException("failed to delete " + fileJ);
                    }
                    this.f21363h -= entry.f21378b[i11];
                    entry.f21378b[i11] = 0;
                }
                this.f21366k++;
                this.f21364i.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f21365j.remove(str);
                if (w()) {
                    this.f21368m.submit(this.f21369n);
                }
                return true;
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void flush() {
        p();
        h0();
        this.f21364i.flush();
    }

    public void r() throws IOException {
        close();
        DiskLruCacheUtil.c(this.f21356a);
    }

    public Editor t(String str) {
        return u(str, -1L);
    }

    public synchronized Snapshot v(String str) {
        InputStream inputStream;
        p();
        k0(str);
        Entry entry = (Entry) this.f21365j.get(str);
        if (entry == null) {
            return null;
        }
        if (!entry.f21379c) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.f21362g];
        for (int i11 = 0; i11 < this.f21362g; i11++) {
            try {
                inputStreamArr[i11] = new FileInputStream(entry.j(i11));
            } catch (FileNotFoundException unused) {
                for (int i12 = 0; i12 < this.f21362g && (inputStream = inputStreamArr[i12]) != null; i12++) {
                    DiskLruCacheUtil.b(inputStream);
                }
                return null;
            }
        }
        this.f21366k++;
        this.f21364i.append((CharSequence) ("READ " + str + '\n'));
        if (w()) {
            this.f21368m.submit(this.f21369n);
        }
        return new Snapshot(str, entry.f21381e, inputStreamArr, entry.f21378b);
    }
}
