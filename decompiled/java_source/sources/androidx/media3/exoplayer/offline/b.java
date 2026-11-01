package androidx.media3.exoplayer.offline;

import android.util.SparseArray;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.dash.offline.DashDownloader;
import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final SparseArray f12410c = c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.datasource.cache.a.c f12411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f12412b;

    public b(androidx.media3.datasource.cache.a.c cVar, Executor executor) {
        this.f12411a = (androidx.media3.datasource.cache.a.c) androidx.media3.common.util.a.e(cVar);
        this.f12412b = (Executor) androidx.media3.common.util.a.e(executor);
    }

    private o b(DownloadRequest downloadRequest, int i11) {
        Constructor constructor = (Constructor) f12410c.get(i11);
        if (constructor == null) {
            throw new IllegalStateException("Module missing for content type " + i11);
        }
        try {
            return (o) constructor.newInstance(new androidx.media3.common.t.c().i(downloadRequest.uri).f(downloadRequest.streamKeys).b(downloadRequest.customCacheKey).a(), this.f12411a, this.f12412b);
        } catch (Exception e11) {
            throw new IllegalStateException("Failed to instantiate downloader for content type " + i11, e11);
        }
    }

    private static SparseArray c() {
        SparseArray sparseArray = new SparseArray();
        try {
            sparseArray.put(0, d(DashDownloader.class));
        } catch (ClassNotFoundException unused) {
        }
        try {
            sparseArray.put(2, d(b2.a.class));
        } catch (ClassNotFoundException unused2) {
        }
        try {
            sparseArray.put(1, d(Class.forName("androidx.media3.exoplayer.smoothstreaming.offline.SsDownloader")));
        } catch (ClassNotFoundException unused3) {
        }
        return sparseArray;
    }

    private static Constructor d(Class cls) {
        try {
            return cls.asSubclass(o.class).getConstructor(androidx.media3.common.t.class, androidx.media3.datasource.cache.a.c.class, Executor.class);
        } catch (NoSuchMethodException e11) {
            throw new IllegalStateException("Downloader constructor missing", e11);
        }
    }

    @Override // androidx.media3.exoplayer.offline.p
    public o a(DownloadRequest downloadRequest) {
        int iA0 = a1.A0(downloadRequest.uri, downloadRequest.mimeType);
        if (iA0 == 0 || iA0 == 1 || iA0 == 2) {
            return b(downloadRequest, iA0);
        }
        if (iA0 == 4) {
            return new ProgressiveDownloader(new androidx.media3.common.t.c().i(downloadRequest.uri).b(downloadRequest.customCacheKey).a(), this.f12411a, this.f12412b);
        }
        throw new IllegalArgumentException("Unsupported type: " + iA0);
    }
}
