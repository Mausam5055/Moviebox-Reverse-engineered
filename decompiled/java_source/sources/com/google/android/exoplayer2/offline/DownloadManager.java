package com.google.android.exoplayer2.offline;

import android.os.Handler;
import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DownloadManager {

    private static class Task extends Thread implements com.google.android.exoplayer2.offline.b.a {
        private long contentLength;
        private final com.google.android.exoplayer2.offline.a downloadProgress;
        private final com.google.android.exoplayer2.offline.b downloader;

        @Nullable
        private Exception finalException;

        @Nullable
        private volatile b internalHandler;
        private volatile boolean isCanceled;
        private final boolean isRemove;
        private final int minRetryCount;
        private final DownloadRequest request;

        private Task(DownloadRequest downloadRequest, com.google.android.exoplayer2.offline.b bVar, com.google.android.exoplayer2.offline.a aVar, boolean z10, int i11, b bVar2) {
            this.request = downloadRequest;
            this.downloader = bVar;
            this.downloadProgress = aVar;
            this.isRemove = z10;
            this.minRetryCount = i11;
            this.contentLength = -1L;
        }

        private static int getRetryDelayMillis(int i11) {
            return Math.min((i11 - 1) * 1000, 5000);
        }

        public void cancel(boolean z10) {
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            this.downloader.cancel();
            interrupt();
        }

        @Override // com.google.android.exoplayer2.offline.b.a
        public void onProgress(long j11, long j12, float f11) {
            this.downloadProgress.f25582a = j12;
            this.downloadProgress.f25583b = f11;
            if (j11 != this.contentLength) {
                this.contentLength = j11;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.isRemove) {
                    this.downloader.remove();
                    return;
                }
                long j11 = -1;
                int i11 = 0;
                while (!this.isCanceled) {
                    try {
                        this.downloader.a(this);
                        return;
                    } catch (IOException e11) {
                        if (!this.isCanceled) {
                            long j12 = this.downloadProgress.f25582a;
                            if (j12 != j11) {
                                i11 = 0;
                                j11 = j12;
                            }
                            i11++;
                            if (i11 > this.minRetryCount) {
                                throw e11;
                            }
                            Thread.sleep(getRetryDelayMillis(i11));
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception e12) {
                this.finalException = e12;
            }
        }
    }

    private static final class b extends Handler {
    }
}
