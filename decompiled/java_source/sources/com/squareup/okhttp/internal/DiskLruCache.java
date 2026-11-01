package com.squareup.okhttp.internal;

import com.squareup.okhttp.internal.io.FileSystem;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes5.dex */
public final class DiskLruCache implements Closeable {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final Pattern f40240s = Pattern.compile("[a-z0-9_-]{1,120}");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Sink f40241t = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FileSystem f40242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f40243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f40244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f40245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f40246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f40247f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f40248g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f40249h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BufferedSink f40251j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f40253l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f40254m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f40255n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f40256o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Executor f40258q;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f40250i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final LinkedHashMap f40252k = new LinkedHashMap(0, 0.75f, true);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f40257p = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Runnable f40259r = new Runnable() { // from class: com.squareup.okhttp.internal.DiskLruCache.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (DiskLruCache.this) {
                if ((!DiskLruCache.this.f40255n) || DiskLruCache.this.f40256o) {
                    return;
                }
                try {
                    DiskLruCache.this.x0();
                    if (DiskLruCache.this.h0()) {
                        DiskLruCache.this.p0();
                        DiskLruCache.this.f40253l = 0;
                    }
                } catch (IOException e11) {
                    throw new RuntimeException(e11);
                }
            }
        }
    };

    class a extends com.squareup.okhttp.internal.b {
        a(Sink sink) {
            super(sink);
        }

        @Override // com.squareup.okhttp.internal.b
        protected void b(IOException iOException) {
            DiskLruCache.this.f40254m = true;
        }
    }

    class b implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Iterator f40261a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        f f40262b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        f f40263c;

        b() {
            this.f40261a = new ArrayList(DiskLruCache.this.f40252k.values()).iterator();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            f fVar = this.f40262b;
            this.f40263c = fVar;
            this.f40262b = null;
            return fVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f40262b != null) {
                return true;
            }
            synchronized (DiskLruCache.this) {
                try {
                    if (DiskLruCache.this.f40256o) {
                        return false;
                    }
                    while (this.f40261a.hasNext()) {
                        f fVarN = ((e) this.f40261a.next()).n();
                        if (fVarN != null) {
                            this.f40262b = fVarN;
                            return true;
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            f fVar = this.f40263c;
            if (fVar == null) {
                throw new IllegalStateException("remove() before next()");
            }
            try {
                DiskLruCache.this.q0(fVar.f40279a);
            } catch (IOException unused) {
            } finally {
                this.f40263c = null;
            }
        }
    }

    static class c implements Sink {
        c() {
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
        }

        @Override // okio.Sink
        /* JADX INFO: renamed from: timeout */
        public Timeout getTimeout() {
            return Timeout.NONE;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j11) throws EOFException {
            buffer.skip(j11);
        }
    }

    public final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f40265a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean[] f40266b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f40267c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f40268d;

        class a extends com.squareup.okhttp.internal.b {
            a(Sink sink) {
                super(sink);
            }

            @Override // com.squareup.okhttp.internal.b
            protected void b(IOException iOException) {
                synchronized (DiskLruCache.this) {
                    d.this.f40267c = true;
                }
            }
        }

        private d(e eVar) {
            this.f40265a = eVar;
            this.f40266b = eVar.f40275e ? null : new boolean[DiskLruCache.this.f40249h];
        }

        public void a() {
            synchronized (DiskLruCache.this) {
                DiskLruCache.this.w(this, false);
            }
        }

        public void e() {
            synchronized (DiskLruCache.this) {
                try {
                    if (this.f40267c) {
                        DiskLruCache.this.w(this, false);
                        DiskLruCache.this.r0(this.f40265a);
                    } else {
                        DiskLruCache.this.w(this, true);
                    }
                    this.f40268d = true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public Sink f(int i11) {
            a aVar;
            synchronized (DiskLruCache.this) {
                try {
                    if (this.f40265a.f40276f != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.f40265a.f40275e) {
                        this.f40266b[i11] = true;
                    }
                    try {
                        aVar = new a(DiskLruCache.this.f40242a.sink(this.f40265a.f40274d[i11]));
                    } catch (FileNotFoundException unused) {
                        return DiskLruCache.f40241t;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return aVar;
        }
    }

    private final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f40271a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long[] f40272b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final File[] f40273c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final File[] f40274d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f40275e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private d f40276f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f40277g;

        private e(String str) {
            this.f40271a = str;
            this.f40272b = new long[DiskLruCache.this.f40249h];
            this.f40273c = new File[DiskLruCache.this.f40249h];
            this.f40274d = new File[DiskLruCache.this.f40249h];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            for (int i11 = 0; i11 < DiskLruCache.this.f40249h; i11++) {
                sb2.append(i11);
                this.f40273c[i11] = new File(DiskLruCache.this.f40243b, sb2.toString());
                sb2.append(".tmp");
                this.f40274d[i11] = new File(DiskLruCache.this.f40243b, sb2.toString());
                sb2.setLength(length);
            }
        }

        private IOException l(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.f40249h) {
                throw l(strArr);
            }
            for (int i11 = 0; i11 < strArr.length; i11++) {
                try {
                    this.f40272b[i11] = Long.parseLong(strArr[i11]);
                } catch (NumberFormatException unused) {
                    throw l(strArr);
                }
            }
        }

        f n() {
            Source source;
            if (!Thread.holdsLock(DiskLruCache.this)) {
                throw new AssertionError();
            }
            Source[] sourceArr = new Source[DiskLruCache.this.f40249h];
            long[] jArr = (long[]) this.f40272b.clone();
            for (int i11 = 0; i11 < DiskLruCache.this.f40249h; i11++) {
                try {
                    sourceArr[i11] = DiskLruCache.this.f40242a.source(this.f40273c[i11]);
                } catch (FileNotFoundException unused) {
                    for (int i12 = 0; i12 < DiskLruCache.this.f40249h && (source = sourceArr[i12]) != null; i12++) {
                        g.c(source);
                    }
                    return null;
                }
            }
            return new f(this.f40271a, this.f40277g, sourceArr, jArr);
        }

        void o(BufferedSink bufferedSink) throws IOException {
            for (long j11 : this.f40272b) {
                bufferedSink.writeByte(32).writeDecimalLong(j11);
            }
        }
    }

    public final class f implements Closeable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f40279a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f40280b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Source[] f40281c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long[] f40282d;

        private f(String str, long j11, Source[] sourceArr, long[] jArr) {
            this.f40279a = str;
            this.f40280b = j11;
            this.f40281c = sourceArr;
            this.f40282d = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (Source source : this.f40281c) {
                g.c(source);
            }
        }

        public d d() {
            return DiskLruCache.this.V(this.f40279a, this.f40280b);
        }

        public Source h(int i11) {
            return this.f40281c[i11];
        }
    }

    DiskLruCache(FileSystem fileSystem, File file, int i11, int i12, long j11, Executor executor) {
        this.f40242a = fileSystem;
        this.f40243b = file;
        this.f40247f = i11;
        this.f40244c = new File(file, "journal");
        this.f40245d = new File(file, "journal.tmp");
        this.f40246e = new File(file, "journal.bkp");
        this.f40249h = i12;
        this.f40248g = j11;
        this.f40258q = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized d V(String str, long j11) {
        g0();
        v();
        y0(str);
        e eVar = (e) this.f40252k.get(str);
        if (j11 != -1 && (eVar == null || eVar.f40277g != j11)) {
            return null;
        }
        if (eVar != null && eVar.f40276f != null) {
            return null;
        }
        this.f40251j.writeUtf8("DIRTY").writeByte(32).writeUtf8(str).writeByte(10);
        this.f40251j.flush();
        if (this.f40254m) {
            return null;
        }
        if (eVar == null) {
            eVar = new e(str);
            this.f40252k.put(str, eVar);
        }
        d dVar = new d(eVar);
        eVar.f40276f = dVar;
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h0() {
        int i11 = this.f40253l;
        return i11 >= 2000 && i11 >= this.f40252k.size();
    }

    private BufferedSink k0() {
        return Okio.buffer(new a(this.f40242a.appendingSink(this.f40244c)));
    }

    private void l0() throws IOException {
        this.f40242a.delete(this.f40245d);
        Iterator it = this.f40252k.values().iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            int i11 = 0;
            if (eVar.f40276f == null) {
                while (i11 < this.f40249h) {
                    this.f40250i += eVar.f40272b[i11];
                    i11++;
                }
            } else {
                eVar.f40276f = null;
                while (i11 < this.f40249h) {
                    this.f40242a.delete(eVar.f40273c[i11]);
                    this.f40242a.delete(eVar.f40274d[i11]);
                    i11++;
                }
                it.remove();
            }
        }
    }

    private void m0() {
        BufferedSource bufferedSourceBuffer = Okio.buffer(this.f40242a.source(this.f40244c));
        try {
            String utf8LineStrict = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict2 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict3 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict4 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict5 = bufferedSourceBuffer.readUtf8LineStrict();
            if (!"libcore.io.DiskLruCache".equals(utf8LineStrict) || !"1".equals(utf8LineStrict2) || !Integer.toString(this.f40247f).equals(utf8LineStrict3) || !Integer.toString(this.f40249h).equals(utf8LineStrict4) || !"".equals(utf8LineStrict5)) {
                throw new IOException("unexpected journal header: [" + utf8LineStrict + ", " + utf8LineStrict2 + ", " + utf8LineStrict4 + ", " + utf8LineStrict5 + "]");
            }
            int i11 = 0;
            while (true) {
                try {
                    o0(bufferedSourceBuffer.readUtf8LineStrict());
                    i11++;
                } catch (EOFException unused) {
                    this.f40253l = i11 - this.f40252k.size();
                    if (bufferedSourceBuffer.exhausted()) {
                        this.f40251j = k0();
                    } else {
                        p0();
                    }
                    g.c(bufferedSourceBuffer);
                    return;
                }
            }
        } catch (Throwable th2) {
            g.c(bufferedSourceBuffer);
            throw th2;
        }
    }

    private void o0(String str) throws IOException {
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
                this.f40252k.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i11, iIndexOf2);
        }
        e eVar = (e) this.f40252k.get(strSubstring);
        if (eVar == null) {
            eVar = new e(strSubstring);
            this.f40252k.put(strSubstring, eVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            eVar.f40275e = true;
            eVar.f40276f = null;
            eVar.m(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            eVar.f40276f = new d(eVar);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p0() {
        try {
            BufferedSink bufferedSink = this.f40251j;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink bufferedSinkBuffer = Okio.buffer(this.f40242a.sink(this.f40245d));
            try {
                bufferedSinkBuffer.writeUtf8("libcore.io.DiskLruCache").writeByte(10);
                bufferedSinkBuffer.writeUtf8("1").writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.f40247f).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.f40249h).writeByte(10);
                bufferedSinkBuffer.writeByte(10);
                for (e eVar : this.f40252k.values()) {
                    if (eVar.f40276f != null) {
                        bufferedSinkBuffer.writeUtf8("DIRTY").writeByte(32);
                        bufferedSinkBuffer.writeUtf8(eVar.f40271a);
                        bufferedSinkBuffer.writeByte(10);
                    } else {
                        bufferedSinkBuffer.writeUtf8("CLEAN").writeByte(32);
                        bufferedSinkBuffer.writeUtf8(eVar.f40271a);
                        eVar.o(bufferedSinkBuffer);
                        bufferedSinkBuffer.writeByte(10);
                    }
                }
                bufferedSinkBuffer.close();
                if (this.f40242a.exists(this.f40244c)) {
                    this.f40242a.rename(this.f40244c, this.f40246e);
                }
                this.f40242a.rename(this.f40245d, this.f40244c);
                this.f40242a.delete(this.f40246e);
                this.f40251j = k0();
                this.f40254m = false;
            } catch (Throwable th2) {
                bufferedSinkBuffer.close();
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r0(e eVar) throws IOException {
        if (eVar.f40276f != null) {
            eVar.f40276f.f40267c = true;
        }
        for (int i11 = 0; i11 < this.f40249h; i11++) {
            this.f40242a.delete(eVar.f40273c[i11]);
            this.f40250i -= eVar.f40272b[i11];
            eVar.f40272b[i11] = 0;
        }
        this.f40253l++;
        this.f40251j.writeUtf8("REMOVE").writeByte(32).writeUtf8(eVar.f40271a).writeByte(10);
        this.f40252k.remove(eVar.f40271a);
        if (h0()) {
            this.f40258q.execute(this.f40259r);
        }
        return true;
    }

    private synchronized void v() {
        if (isClosed()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void w(d dVar, boolean z10) {
        e eVar = dVar.f40265a;
        if (eVar.f40276f != dVar) {
            throw new IllegalStateException();
        }
        if (z10 && !eVar.f40275e) {
            for (int i11 = 0; i11 < this.f40249h; i11++) {
                if (!dVar.f40266b[i11]) {
                    dVar.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i11);
                }
                if (!this.f40242a.exists(eVar.f40274d[i11])) {
                    dVar.a();
                    return;
                }
            }
        }
        for (int i12 = 0; i12 < this.f40249h; i12++) {
            File file = eVar.f40274d[i12];
            if (!z10) {
                this.f40242a.delete(file);
            } else if (this.f40242a.exists(file)) {
                File file2 = eVar.f40273c[i12];
                this.f40242a.rename(file, file2);
                long j11 = eVar.f40272b[i12];
                long size = this.f40242a.size(file2);
                eVar.f40272b[i12] = size;
                this.f40250i = (this.f40250i - j11) + size;
            }
        }
        this.f40253l++;
        eVar.f40276f = null;
        if (eVar.f40275e || z10) {
            eVar.f40275e = true;
            this.f40251j.writeUtf8("CLEAN").writeByte(32);
            this.f40251j.writeUtf8(eVar.f40271a);
            eVar.o(this.f40251j);
            this.f40251j.writeByte(10);
            if (z10) {
                long j12 = this.f40257p;
                this.f40257p = 1 + j12;
                eVar.f40277g = j12;
            }
        } else {
            this.f40252k.remove(eVar.f40271a);
            this.f40251j.writeUtf8("REMOVE").writeByte(32);
            this.f40251j.writeUtf8(eVar.f40271a);
            this.f40251j.writeByte(10);
        }
        this.f40251j.flush();
        if (this.f40250i > this.f40248g || h0()) {
            this.f40258q.execute(this.f40259r);
        }
    }

    public static DiskLruCache x(FileSystem fileSystem, File file, int i11, int i12, long j11) {
        if (j11 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i12 > 0) {
            return new DiskLruCache(fileSystem, file, i11, i12, j11, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), g.s("OkHttp DiskLruCache", true)));
        }
        throw new IllegalArgumentException("valueCount <= 0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0() throws IOException {
        while (this.f40250i > this.f40248g) {
            r0((e) this.f40252k.values().iterator().next());
        }
    }

    private void y0(String str) {
        if (f40240s.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    public void T() throws IOException {
        close();
        this.f40242a.deleteContents(this.f40243b);
    }

    public d U(String str) {
        return V(str, -1L);
    }

    public synchronized void Z() {
        g0();
        for (e eVar : (e[]) this.f40252k.values().toArray(new e[this.f40252k.size()])) {
            r0(eVar);
        }
    }

    public synchronized f a0(String str) {
        g0();
        v();
        y0(str);
        e eVar = (e) this.f40252k.get(str);
        if (eVar != null && eVar.f40275e) {
            f fVarN = eVar.n();
            if (fVarN == null) {
                return null;
            }
            this.f40253l++;
            this.f40251j.writeUtf8("READ").writeByte(32).writeUtf8(str).writeByte(10);
            if (h0()) {
                this.f40258q.execute(this.f40259r);
            }
            return fVarN;
        }
        return null;
    }

    public File c0() {
        return this.f40243b;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            if (this.f40255n && !this.f40256o) {
                for (e eVar : (e[]) this.f40252k.values().toArray(new e[this.f40252k.size()])) {
                    if (eVar.f40276f != null) {
                        eVar.f40276f.a();
                    }
                }
                x0();
                this.f40251j.close();
                this.f40251j = null;
                this.f40256o = true;
                return;
            }
            this.f40256o = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long d0() {
        return this.f40248g;
    }

    public synchronized void flush() {
        if (this.f40255n) {
            v();
            x0();
            this.f40251j.flush();
        }
    }

    public synchronized void g0() {
        try {
            if (this.f40255n) {
                return;
            }
            if (this.f40242a.exists(this.f40246e)) {
                if (this.f40242a.exists(this.f40244c)) {
                    this.f40242a.delete(this.f40246e);
                } else {
                    this.f40242a.rename(this.f40246e, this.f40244c);
                }
            }
            if (this.f40242a.exists(this.f40244c)) {
                try {
                    m0();
                    l0();
                    this.f40255n = true;
                    return;
                } catch (IOException e11) {
                    com.squareup.okhttp.internal.e.f().i("DiskLruCache " + this.f40243b + " is corrupt: " + e11.getMessage() + ", removing");
                    T();
                    this.f40256o = false;
                }
            }
            p0();
            this.f40255n = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean isClosed() {
        return this.f40256o;
    }

    public synchronized boolean q0(String str) {
        g0();
        v();
        y0(str);
        e eVar = (e) this.f40252k.get(str);
        if (eVar == null) {
            return false;
        }
        return r0(eVar);
    }

    public synchronized long u0() {
        g0();
        return this.f40250i;
    }

    public synchronized Iterator v0() {
        g0();
        return new b();
    }
}
