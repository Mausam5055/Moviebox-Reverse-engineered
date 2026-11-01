package com.google.android.exoplayer2.upstream.cache;

import android.os.ConditionVariable;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Random;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes3.dex */
public final class SimpleCache implements Cache {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final HashSet f27290l = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f27291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f27292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k f27293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f27294d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap f27295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Random f27296f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f27297g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f27298h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f27299i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f27300j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Cache.CacheException f27301k;

    SimpleCache(File file, b bVar, k kVar, d dVar) {
        if (!t(file)) {
            throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
        }
        this.f27291a = file;
        this.f27292b = bVar;
        this.f27293c = kVar;
        this.f27294d = dVar;
        this.f27295e = new HashMap();
        this.f27296f = new Random();
        this.f27297g = bVar.a();
        this.f27298h = -1L;
        final ConditionVariable conditionVariable = new ConditionVariable();
        new Thread("ExoPlayer:SimpleCacheInit") { // from class: com.google.android.exoplayer2.upstream.cache.SimpleCache.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (SimpleCache.this) {
                    conditionVariable.open();
                    SimpleCache.this.q();
                    SimpleCache.this.f27292b.onCacheInitialized();
                }
            }
        }.start();
        conditionVariable.block();
    }

    public SimpleCache(File file, b bVar, f9.a aVar) {
        this(file, bVar, aVar, null, false, false);
    }

    public SimpleCache(File file, b bVar, f9.a aVar, byte[] bArr, boolean z10, boolean z11) {
        this(file, bVar, new k(aVar, file, bArr, z10, z11), (aVar == null || z11) ? null : new d(aVar));
    }

    private s A(String str, s sVar) {
        boolean z10;
        if (!this.f27297g) {
            return sVar;
        }
        String name = ((File) com.google.android.exoplayer2.util.a.e(sVar.f27341e)).getName();
        long j11 = sVar.f27339c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        d dVar = this.f27294d;
        if (dVar != null) {
            try {
                dVar.h(name, j11, jCurrentTimeMillis);
            } catch (IOException unused) {
                com.google.android.exoplayer2.util.s.i("SimpleCache", "Failed to update index with new touch timestamp.");
            }
            z10 = false;
        } else {
            z10 = true;
        }
        s sVarL = this.f27293c.g(str).l(sVar, jCurrentTimeMillis, z10);
        w(sVar, sVarL);
        return sVarL;
    }

    private void k(s sVar) {
        this.f27293c.m(sVar.f27337a).a(sVar);
        this.f27299i += sVar.f27339c;
        u(sVar);
    }

    private static void m(File file) throws Cache.CacheException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String str = "Failed to create cache directory: " + file;
        com.google.android.exoplayer2.util.s.c("SimpleCache", str);
        throw new Cache.CacheException(str);
    }

    private static long n(File file) throws IOException {
        long jNextLong = new SecureRandom().nextLong();
        long jAbs = jNextLong == Long.MIN_VALUE ? 0L : Math.abs(jNextLong);
        File file2 = new File(file, Long.toString(jAbs, 16) + ".uid");
        if (file2.createNewFile()) {
            return jAbs;
        }
        throw new IOException("Failed to create UID file: " + file2);
    }

    private s p(String str, long j11, long j12) {
        s sVarE;
        j jVarG = this.f27293c.g(str);
        if (jVarG == null) {
            return s.h(str, j11, j12);
        }
        while (true) {
            sVarE = jVarG.e(j11, j12);
            if (!sVarE.f27340d || sVarE.f27341e.length() == sVarE.f27339c) {
                break;
            }
            z();
        }
        return sVarE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (!this.f27291a.exists()) {
            try {
                m(this.f27291a);
            } catch (Cache.CacheException e11) {
                this.f27301k = e11;
                return;
            }
        }
        File[] fileArrListFiles = this.f27291a.listFiles();
        if (fileArrListFiles == null) {
            String str = "Failed to list cache directory files: " + this.f27291a;
            com.google.android.exoplayer2.util.s.c("SimpleCache", str);
            this.f27301k = new Cache.CacheException(str);
            return;
        }
        long jS = s(fileArrListFiles);
        this.f27298h = jS;
        if (jS == -1) {
            try {
                this.f27298h = n(this.f27291a);
            } catch (IOException e12) {
                String str2 = "Failed to create cache UID: " + this.f27291a;
                com.google.android.exoplayer2.util.s.d("SimpleCache", str2, e12);
                this.f27301k = new Cache.CacheException(str2, e12);
                return;
            }
        }
        try {
            this.f27293c.n(this.f27298h);
            d dVar = this.f27294d;
            if (dVar != null) {
                dVar.e(this.f27298h);
                Map mapB = this.f27294d.b();
                r(this.f27291a, true, fileArrListFiles, mapB);
                this.f27294d.g(mapB.keySet());
            } else {
                r(this.f27291a, true, fileArrListFiles, null);
            }
            this.f27293c.r();
            try {
                this.f27293c.s();
            } catch (IOException e13) {
                com.google.android.exoplayer2.util.s.d("SimpleCache", "Storing index file failed", e13);
            }
        } catch (IOException e14) {
            String str3 = "Failed to initialize cache indices: " + this.f27291a;
            com.google.android.exoplayer2.util.s.d("SimpleCache", str3, e14);
            this.f27301k = new Cache.CacheException(str3, e14);
        }
    }

    private void r(File file, boolean z10, File[] fileArr, Map map) {
        long j11;
        long j12;
        if (fileArr == null || fileArr.length == 0) {
            if (z10) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z10 && name.indexOf(46) == -1) {
                r(file2, false, file2.listFiles(), map);
            } else if (!z10 || (!k.o(name) && !name.endsWith(".uid"))) {
                c cVar = map != null ? (c) map.remove(name) : null;
                if (cVar != null) {
                    j12 = cVar.f27331a;
                    j11 = cVar.f27332b;
                } else {
                    j11 = -9223372036854775807L;
                    j12 = -1;
                }
                s sVarF = s.f(file2, j12, j11, this.f27293c);
                if (sVarF != null) {
                    k(sVarF);
                } else {
                    file2.delete();
                }
            }
        }
    }

    private static long s(File[] fileArr) {
        int length = fileArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            File file = fileArr[i11];
            String name = file.getName();
            if (name.endsWith(".uid")) {
                try {
                    return x(name);
                } catch (NumberFormatException unused) {
                    com.google.android.exoplayer2.util.s.c("SimpleCache", "Malformed UID file: " + file);
                    file.delete();
                }
            }
        }
        return -1L;
    }

    private static synchronized boolean t(File file) {
        return f27290l.add(file.getAbsoluteFile());
    }

    private void u(s sVar) {
        ArrayList arrayList = (ArrayList) this.f27295e.get(sVar.f27337a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).b(this, sVar);
            }
        }
        this.f27292b.b(this, sVar);
    }

    private void v(h hVar) {
        ArrayList arrayList = (ArrayList) this.f27295e.get(hVar.f27337a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).d(this, hVar);
            }
        }
        this.f27292b.d(this, hVar);
    }

    private void w(s sVar, h hVar) {
        ArrayList arrayList = (ArrayList) this.f27295e.get(sVar.f27337a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).e(this, sVar, hVar);
            }
        }
        this.f27292b.e(this, sVar, hVar);
    }

    private static long x(String str) {
        return Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    private void y(h hVar) {
        j jVarG = this.f27293c.g(hVar.f27337a);
        if (jVarG == null || !jVarG.k(hVar)) {
            return;
        }
        this.f27299i -= hVar.f27339c;
        if (this.f27294d != null) {
            String name = hVar.f27341e.getName();
            try {
                this.f27294d.f(name);
            } catch (IOException unused) {
                com.google.android.exoplayer2.util.s.i("SimpleCache", "Failed to remove file index entry for: " + name);
            }
        }
        this.f27293c.p(jVarG.f27354b);
        v(hVar);
    }

    private void z() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f27293c.h().iterator();
        while (it.hasNext()) {
            for (h hVar : ((j) it.next()).f()) {
                if (hVar.f27341e.length() != hVar.f27339c) {
                    arrayList.add(hVar);
                }
            }
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            y((h) arrayList.get(i11));
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long a(String str, long j11, long j12) {
        long j13;
        long j14 = j12 == -1 ? Long.MAX_VALUE : j11 + j12;
        long j15 = j14 >= 0 ? j14 : Long.MAX_VALUE;
        long j16 = j11;
        j13 = 0;
        while (j16 < j15) {
            long cachedLength = getCachedLength(str, j16, j15 - j16);
            if (cachedLength > 0) {
                j13 += cachedLength;
            } else {
                cachedLength = -cachedLength;
            }
            j16 += cachedLength;
        }
        return j13;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized h b(String str, long j11, long j12) {
        com.google.android.exoplayer2.util.a.g(!this.f27300j);
        l();
        s sVarP = p(str, j11, j12);
        if (sVarP.f27340d) {
            return A(str, sVarP);
        }
        if (this.f27293c.m(str).j(j11, sVarP.f27339c)) {
            return sVarP;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized h c(String str, long j11, long j12) {
        h hVarB;
        com.google.android.exoplayer2.util.a.g(!this.f27300j);
        l();
        while (true) {
            hVarB = b(str, j11, j12);
            if (hVarB == null) {
                wait();
            }
        }
        return hVarB;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void d(File file, long j11) {
        com.google.android.exoplayer2.util.a.g(!this.f27300j);
        if (file.exists()) {
            if (j11 == 0) {
                file.delete();
                return;
            }
            s sVar = (s) com.google.android.exoplayer2.util.a.e(s.g(file, j11, this.f27293c));
            j jVar = (j) com.google.android.exoplayer2.util.a.e(this.f27293c.g(sVar.f27337a));
            com.google.android.exoplayer2.util.a.g(jVar.h(sVar.f27338b, sVar.f27339c));
            long jA = l.a(jVar.d());
            if (jA != -1) {
                com.google.android.exoplayer2.util.a.g(sVar.f27338b + sVar.f27339c <= jA);
            }
            if (this.f27294d == null) {
                k(sVar);
                this.f27293c.s();
                notifyAll();
                return;
            }
            try {
                this.f27294d.h(file.getName(), sVar.f27339c, sVar.f27342f);
                k(sVar);
                try {
                    this.f27293c.s();
                    notifyAll();
                    return;
                } catch (IOException e11) {
                    throw new Cache.CacheException(e11);
                }
            } catch (IOException e12) {
                throw new Cache.CacheException(e12);
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void e(String str) {
        com.google.android.exoplayer2.util.a.g(!this.f27300j);
        Iterator it = o(str).iterator();
        while (it.hasNext()) {
            y((h) it.next());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void f(String str, n nVar) {
        com.google.android.exoplayer2.util.a.g(!this.f27300j);
        l();
        this.f27293c.e(str, nVar);
        try {
            this.f27293c.s();
        } catch (IOException e11) {
            throw new Cache.CacheException(e11);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void g(h hVar) {
        com.google.android.exoplayer2.util.a.g(!this.f27300j);
        j jVar = (j) com.google.android.exoplayer2.util.a.e(this.f27293c.g(hVar.f27337a));
        jVar.m(hVar.f27338b);
        this.f27293c.p(jVar.f27354b);
        notifyAll();
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long getCachedLength(String str, long j11, long j12) {
        j jVarG;
        com.google.android.exoplayer2.util.a.g(!this.f27300j);
        if (j12 == -1) {
            j12 = Long.MAX_VALUE;
        }
        jVarG = this.f27293c.g(str);
        return jVarG != null ? jVarG.c(j11, j12) : -j12;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized m getContentMetadata(String str) {
        com.google.android.exoplayer2.util.a.g(!this.f27300j);
        return this.f27293c.j(str);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void h(h hVar) {
        com.google.android.exoplayer2.util.a.g(!this.f27300j);
        y(hVar);
    }

    public synchronized void l() {
        Cache.CacheException cacheException = this.f27301k;
        if (cacheException != null) {
            throw cacheException;
        }
    }

    public synchronized NavigableSet o(String str) {
        j jVarG;
        try {
            com.google.android.exoplayer2.util.a.g(!this.f27300j);
            jVarG = this.f27293c.g(str);
        } catch (Throwable th2) {
            throw th2;
        }
        return (jVarG == null || jVarG.g()) ? new TreeSet() : new TreeSet((Collection) jVarG.f());
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized File startFile(String str, long j11, long j12) {
        j jVarG;
        File file;
        try {
            com.google.android.exoplayer2.util.a.g(!this.f27300j);
            l();
            jVarG = this.f27293c.g(str);
            com.google.android.exoplayer2.util.a.e(jVarG);
            com.google.android.exoplayer2.util.a.g(jVarG.h(j11, j12));
            if (!this.f27291a.exists()) {
                m(this.f27291a);
                z();
            }
            this.f27292b.c(this, str, j11, j12);
            file = new File(this.f27291a, Integer.toString(this.f27296f.nextInt(10)));
            if (!file.exists()) {
                m(file);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return s.j(file, jVarG.f27353a, j11, System.currentTimeMillis());
    }
}
