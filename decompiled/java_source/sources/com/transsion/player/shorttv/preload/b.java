package com.transsion.player.shorttv.preload;

import androidx.media3.common.t;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.offline.DownloadRequest;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends androidx.media3.exoplayer.offline.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.datasource.cache.a.c f48516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f48517e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(androidx.media3.datasource.cache.a.c cacheDataSourceFactory, Executor executor) {
        super(cacheDataSourceFactory, executor);
        Intrinsics.h(cacheDataSourceFactory, "cacheDataSourceFactory");
        Intrinsics.h(executor, "executor");
        this.f48516d = cacheDataSourceFactory;
        this.f48517e = executor;
    }

    @Override // androidx.media3.exoplayer.offline.b, androidx.media3.exoplayer.offline.p
    public androidx.media3.exoplayer.offline.o a(DownloadRequest request) {
        Intrinsics.h(request, "request");
        int iA0 = a1.A0(request.uri, request.mimeType);
        if (iA0 == 0 || iA0 == 1 || iA0 == 2) {
            androidx.media3.exoplayer.offline.o oVarA = super.a(request);
            Intrinsics.g(oVarA, "createDownloader(...)");
            return oVarA;
        }
        if (iA0 == 4) {
            return new VideoProgressiveDownloader(new t.c().i(request.uri).b(request.customCacheKey).a(), this.f48516d, this.f48517e);
        }
        throw new IllegalArgumentException("Unsupported type: " + iA0);
    }
}
