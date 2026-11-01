package com.transsion.tinker.lib.custom.download;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.f;
import androidx.work.s;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import com.transsion.push.PushConstants;
import com.transsion.tinker.lib.custom.api.DownloadPolicy;
import com.transsion.tinker.lib.custom.api.PatchState;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import nu.h;
import ou.d;

/* JADX INFO: loaded from: classes6.dex */
public class PatchDownloadWorker extends Worker {

    class a implements DownloadManager.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f55086a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CountDownLatch f55087b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AtomicReference f55088c;

        a(AtomicBoolean atomicBoolean, CountDownLatch countDownLatch, AtomicReference atomicReference) {
            this.f55086a = atomicBoolean;
            this.f55087b = countDownLatch;
            this.f55088c = atomicReference;
        }

        @Override // com.transsion.tinker.lib.custom.download.DownloadManager.a
        public void a(long j11, long j12) {
        }

        @Override // com.transsion.tinker.lib.custom.download.DownloadManager.a
        public void b(Exception exc) {
            this.f55088c.set(exc);
            this.f55087b.countDown();
        }

        @Override // com.transsion.tinker.lib.custom.download.DownloadManager.a
        public void onSuccess(String str) {
            this.f55086a.set(true);
            this.f55087b.countDown();
        }
    }

    public PatchDownloadWorker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.Worker
    public s.a p() {
        f fVarE = e();
        String strG = fVarE.g("url");
        String strG2 = fVarE.g("patch_id");
        if (strG == null || strG.isEmpty() || strG2 == null || strG2.isEmpty()) {
            ShareTinkerLog.e("Tinker.DownloadWorker", "invalid input: url or patchId is empty", new Object[0]);
            return s.a.a();
        }
        Context contextA = a();
        PatchState patchStateE = yu.a.e(contextA);
        if (strG2.equals(yu.a.d(contextA))) {
            if (patchStateE == PatchState.INSTALLED) {
                ShareTinkerLog.i("Tinker.DownloadWorker", "patch %s already installed, skip worker", strG2);
                return s.a.c();
            }
            if (patchStateE == PatchState.READY) {
                ShareTinkerLog.i("Tinker.DownloadWorker", "patch %s in READY state, retry after TinkerPatchService", strG2);
                return s.a.b();
            }
        }
        d.b bVar = new d.b(strG, strG2);
        String strG3 = fVarE.g("md5");
        if (strG3 != null) {
            bVar.u(strG3);
        }
        long jF = fVarE.f("size", 0L);
        if (jF > 0) {
            bVar.x(jF);
        }
        bVar.t(fVarE.c("mandatory", false));
        bVar.s(fVarE.f("expires_at", 0L));
        String strG4 = fVarE.g("download_policy");
        if (strG4 != null) {
            try {
                bVar.r(DownloadPolicy.valueOf(strG4));
            } catch (IllegalArgumentException unused) {
                ShareTinkerLog.w("Tinker.DownloadWorker", "unknown DownloadPolicy='%s', fallback to default", strG4);
            }
        }
        int iD = fVarE.d(PushConstants.SP_KEY_RETRY_COUNT, 0);
        if (iD > 0) {
            bVar.v(iD);
        }
        long jF2 = fVarE.f("retry_delay_ms", 0L);
        if (jF2 > 0) {
            bVar.w(jF2);
        }
        d dVarQ = bVar.q();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        AtomicReference atomicReference = new AtomicReference();
        h.q(contextA, dVarQ, new a(atomicBoolean, countDownLatch, atomicReference));
        try {
            countDownLatch.await();
            if (atomicBoolean.get()) {
                ShareTinkerLog.i("Tinker.DownloadWorker", "background download succeeded, patchId=%s", strG2);
                return s.a.c();
            }
            Exception exc = (Exception) atomicReference.get();
            if (exc instanceof DownloadManager.NetworkPolicyException) {
                ShareTinkerLog.w("Tinker.DownloadWorker", "network policy rejected, will retry when wifi available", new Object[0]);
                return s.a.b();
            }
            if (yu.a.e(contextA) == PatchState.DOWNLOADING) {
                ShareTinkerLog.w("Tinker.DownloadWorker", "another download in progress, retry later", new Object[0]);
                return s.a.b();
            }
            ShareTinkerLog.w("Tinker.DownloadWorker", "background download failed: %s", exc != null ? exc.getMessage() : TmcConstants.ROUTE_UNKNOWN);
            return s.a.a();
        } catch (InterruptedException unused2) {
            Thread.currentThread().interrupt();
            return s.a.b();
        }
    }
}
