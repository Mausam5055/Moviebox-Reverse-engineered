package androidx.media3.datasource.cache;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface Cache {

    public static class CacheException extends IOException {
        public CacheException(String str) {
            super(str);
        }

        public CacheException(String str, Throwable th2) {
            super(str, th2);
        }

        public CacheException(Throwable th2) {
            super(th2);
        }
    }

    public interface a {
        void b(Cache cache, h hVar, h hVar2);

        void c(Cache cache, h hVar);

        void e(Cache cache, h hVar);
    }

    long a(String str, long j11, long j12);

    h b(String str, long j11, long j12);

    h c(String str, long j11, long j12);

    void d(File file, long j11);

    void e(String str);

    void f(h hVar);

    void g(h hVar);

    long getCachedLength(String str, long j11, long j12);

    m getContentMetadata(String str);

    void h(String str, n nVar);

    File startFile(String str, long j11, long j12);
}
