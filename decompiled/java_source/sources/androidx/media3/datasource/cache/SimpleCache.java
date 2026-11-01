package androidx.media3.datasource.cache;

import android.os.ConditionVariable;
import androidx.media3.common.util.u;
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

/* JADX INFO: loaded from: classes2.dex */
public final class SimpleCache implements Cache {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final HashSet f10771l = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f10772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f10773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k f10774c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f10775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap f10776e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Random f10777f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f10778g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f10779h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f10780i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f10781j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Cache.CacheException f10782k;

    SimpleCache(File file, b bVar, k kVar, d dVar) {
        if (!t(file)) {
            throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
        }
        this.f10772a = file;
        this.f10773b = bVar;
        this.f10774c = kVar;
        this.f10775d = dVar;
        this.f10776e = new HashMap();
        this.f10777f = new Random();
        this.f10778g = bVar.a();
        this.f10779h = -1L;
        final ConditionVariable conditionVariable = new ConditionVariable();
        new Thread("ExoPlayer:SimpleCacheInit") { // from class: androidx.media3.datasource.cache.SimpleCache.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (SimpleCache.this) {
                    conditionVariable.open();
                    SimpleCache.this.q();
                    SimpleCache.this.f10773b.onCacheInitialized();
                }
            }
        }.start();
        conditionVariable.block();
    }

    public SimpleCache(File file, b bVar, v1.a aVar) {
        this(file, bVar, aVar, null, false, false);
    }

    public SimpleCache(File file, b bVar, v1.a aVar, byte[] bArr, boolean z10, boolean z11) {
        this(file, bVar, new k(aVar, file, bArr, z10, z11), (aVar == null || z11) ? null : new d(aVar));
    }

    private s A(String str, s sVar) {
        boolean z10;
        if (!this.f10778g) {
            return sVar;
        }
        String name = ((File) androidx.media3.common.util.a.e(sVar.f10822e)).getName();
        long j11 = sVar.f10820c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        d dVar = this.f10775d;
        if (dVar != null) {
            try {
                dVar.h(name, j11, jCurrentTimeMillis);
            } catch (IOException unused) {
                u.h("SimpleCache", "Failed to update index with new touch timestamp.");
            }
            z10 = false;
        } else {
            z10 = true;
        }
        s sVarL = ((j) androidx.media3.common.util.a.e(this.f10774c.f(str))).l(sVar, jCurrentTimeMillis, z10);
        w(sVar, sVarL);
        return sVarL;
    }

    private void k(s sVar) {
        this.f10774c.k(sVar.f10818a).a(sVar);
        this.f10780i += sVar.f10820c;
        u(sVar);
    }

    private static void m(File file) throws Cache.CacheException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String str = "Failed to create cache directory: " + file;
        u.c("SimpleCache", str);
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
        j jVarF = this.f10774c.f(str);
        if (jVarF == null) {
            return s.h(str, j11, j12);
        }
        while (true) {
            sVarE = jVarF.e(j11, j12);
            if (!sVarE.f10821d || ((File) androidx.media3.common.util.a.e(sVarE.f10822e)).length() == sVarE.f10820c) {
                break;
            }
            z();
        }
        return sVarE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (!this.f10772a.exists()) {
            try {
                m(this.f10772a);
            } catch (Cache.CacheException e11) {
                this.f10782k = e11;
                return;
            }
        }
        File[] fileArrListFiles = this.f10772a.listFiles();
        if (fileArrListFiles == null) {
            String str = "Failed to list cache directory files: " + this.f10772a;
            u.c("SimpleCache", str);
            this.f10782k = new Cache.CacheException(str);
            return;
        }
        long jS = s(fileArrListFiles);
        this.f10779h = jS;
        if (jS == -1) {
            try {
                this.f10779h = n(this.f10772a);
            } catch (IOException e12) {
                String str2 = "Failed to create cache UID: " + this.f10772a;
                u.d("SimpleCache", str2, e12);
                this.f10782k = new Cache.CacheException(str2, e12);
                return;
            }
        }
        try {
            this.f10774c.l(this.f10779h);
            d dVar = this.f10775d;
            if (dVar != null) {
                dVar.e(this.f10779h);
                Map mapB = this.f10775d.b();
                r(this.f10772a, true, fileArrListFiles, mapB);
                this.f10775d.g(mapB.keySet());
            } else {
                r(this.f10772a, true, fileArrListFiles, null);
            }
            this.f10774c.p();
            try {
                this.f10774c.q();
            } catch (IOException e13) {
                u.d("SimpleCache", "Storing index file failed", e13);
            }
        } catch (IOException e14) {
            String str3 = "Failed to initialize cache indices: " + this.f10772a;
            u.d("SimpleCache", str3, e14);
            this.f10782k = new Cache.CacheException(str3, e14);
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
            } else if (!z10 || (!k.m(name) && !name.endsWith(".uid"))) {
                c cVar = map != null ? (c) map.remove(name) : null;
                if (cVar != null) {
                    j12 = cVar.f10812a;
                    j11 = cVar.f10813b;
                } else {
                    j11 = -9223372036854775807L;
                    j12 = -1;
                }
                s sVarF = s.f(file2, j12, j11, this.f10774c);
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
                    u.c("SimpleCache", "Malformed UID file: " + file);
                    file.delete();
                }
            }
        }
        return -1L;
    }

    private static synchronized boolean t(File file) {
        return f10771l.add(file.getAbsoluteFile());
    }

    private void u(s sVar) {
        ArrayList arrayList = (ArrayList) this.f10776e.get(sVar.f10818a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).c(this, sVar);
            }
        }
        this.f10773b.c(this, sVar);
    }

    private void v(h hVar) {
        ArrayList arrayList = (ArrayList) this.f10776e.get(hVar.f10818a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).e(this, hVar);
            }
        }
        this.f10773b.e(this, hVar);
    }

    private void w(s sVar, h hVar) {
        ArrayList arrayList = (ArrayList) this.f10776e.get(sVar.f10818a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).b(this, sVar, hVar);
            }
        }
        this.f10773b.b(this, sVar, hVar);
    }

    private static long x(String str) {
        return Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    private void y(h hVar) {
        j jVarF = this.f10774c.f(hVar.f10818a);
        if (jVarF == null || !jVarF.k(hVar)) {
            return;
        }
        this.f10780i -= hVar.f10820c;
        if (this.f10775d != null) {
            String name = ((File) androidx.media3.common.util.a.e(hVar.f10822e)).getName();
            try {
                this.f10775d.f(name);
            } catch (IOException unused) {
                u.h("SimpleCache", "Failed to remove file index entry for: " + name);
            }
        }
        this.f10774c.n(jVarF.f10835b);
        v(hVar);
    }

    private void z() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f10774c.g().iterator();
        while (it.hasNext()) {
            for (h hVar : ((j) it.next()).f()) {
                if (((File) androidx.media3.common.util.a.e(hVar.f10822e)).length() != hVar.f10820c) {
                    arrayList.add(hVar);
                }
            }
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            y((h) arrayList.get(i11));
        }
    }

    @Override // androidx.media3.datasource.cache.Cache
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

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized h b(String str, long j11, long j12) {
        androidx.media3.common.util.a.g(!this.f10781j);
        l();
        s sVarP = p(str, j11, j12);
        if (sVarP.f10821d) {
            return A(str, sVarP);
        }
        if (this.f10774c.k(str).j(j11, sVarP.f10820c)) {
            return sVarP;
        }
        return null;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized h c(String str, long j11, long j12) {
        h hVarB;
        androidx.media3.common.util.a.g(!this.f10781j);
        l();
        while (true) {
            hVarB = b(str, j11, j12);
            if (hVarB == null) {
                wait();
            }
        }
        return hVarB;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized void d(File file, long j11) {
        androidx.media3.common.util.a.g(!this.f10781j);
        if (file.exists()) {
            if (j11 == 0) {
                file.delete();
                return;
            }
            s sVar = (s) androidx.media3.common.util.a.e(s.g(file, j11, this.f10774c));
            j jVar = (j) androidx.media3.common.util.a.e(this.f10774c.f(sVar.f10818a));
            androidx.media3.common.util.a.g(jVar.h(sVar.f10819b, sVar.f10820c));
            long jA = l.a(jVar.d());
            if (jA != -1) {
                androidx.media3.common.util.a.g(sVar.f10819b + sVar.f10820c <= jA);
            }
            if (this.f10775d == null) {
                k(sVar);
                this.f10774c.q();
                notifyAll();
                return;
            }
            try {
                this.f10775d.h(file.getName(), sVar.f10820c, sVar.f10823f);
                k(sVar);
                try {
                    this.f10774c.q();
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

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized void e(String str) {
        androidx.media3.common.util.a.g(!this.f10781j);
        Iterator it = o(str).iterator();
        while (it.hasNext()) {
            y((h) it.next());
        }
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized void f(h hVar) {
        androidx.media3.common.util.a.g(!this.f10781j);
        y(hVar);
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized void g(h hVar) {
        androidx.media3.common.util.a.g(!this.f10781j);
        j jVar = (j) androidx.media3.common.util.a.e(this.f10774c.f(hVar.f10818a));
        jVar.m(hVar.f10819b);
        this.f10774c.n(jVar.f10835b);
        notifyAll();
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized long getCachedLength(String str, long j11, long j12) {
        j jVarF;
        androidx.media3.common.util.a.g(!this.f10781j);
        if (j12 == -1) {
            j12 = Long.MAX_VALUE;
        }
        jVarF = this.f10774c.f(str);
        return jVarF != null ? jVarF.c(j11, j12) : -j12;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized m getContentMetadata(String str) {
        androidx.media3.common.util.a.g(!this.f10781j);
        return this.f10774c.h(str);
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized void h(String str, n nVar) {
        androidx.media3.common.util.a.g(!this.f10781j);
        l();
        this.f10774c.d(str, nVar);
        try {
            this.f10774c.q();
        } catch (IOException e11) {
            throw new Cache.CacheException(e11);
        }
    }

    public synchronized void l() {
        Cache.CacheException cacheException = this.f10782k;
        if (cacheException != null) {
            throw cacheException;
        }
    }

    public synchronized NavigableSet o(String str) {
        j jVarF;
        try {
            androidx.media3.common.util.a.g(!this.f10781j);
            jVarF = this.f10774c.f(str);
        } catch (Throwable th2) {
            throw th2;
        }
        return (jVarF == null || jVarF.g()) ? new TreeSet() : new TreeSet((Collection) jVarF.f());
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized File startFile(String str, long j11, long j12) {
        j jVarF;
        File file;
        try {
            androidx.media3.common.util.a.g(!this.f10781j);
            l();
            jVarF = this.f10774c.f(str);
            androidx.media3.common.util.a.e(jVarF);
            androidx.media3.common.util.a.g(jVarF.h(j11, j12));
            if (!this.f10772a.exists()) {
                m(this.f10772a);
                z();
            }
            this.f10773b.d(this, str, j11, j12);
            file = new File(this.f10772a, Integer.toString(this.f10777f.nextInt(10)));
            if (!file.exists()) {
                m(file);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return s.j(file, jVarF.f10834a, j11, System.currentTimeMillis());
    }
}
