package androidx.media3.exoplayer.util;

import androidx.media3.common.util.m;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class b {

    class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Executor f13037a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ m f13038b;

        a(Executor executor, m mVar) {
            this.f13037a = executor;
            this.f13038b = mVar;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f13037a.execute(runnable);
        }

        @Override // androidx.media3.exoplayer.util.c
        public void release() {
            this.f13038b.accept(this.f13037a);
        }
    }

    public static c a(Executor executor, m mVar) {
        return new a(executor, mVar);
    }
}
