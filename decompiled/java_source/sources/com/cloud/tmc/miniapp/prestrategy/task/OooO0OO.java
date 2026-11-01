package com.cloud.tmc.miniapp.prestrategy.task;

import android.app.Application;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.prestrategy.PrefetchConfigModel;
import com.cloud.tmc.offline.download.OfflineManager;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO {
    public final PrefetchConfigModel OooO00o;

    public static final class OooO00o extends Lambda implements Function1<Boolean, Unit> {
        public final /* synthetic */ CountDownLatch OooO00o;
        public final /* synthetic */ Application OooO0O0;
        public final /* synthetic */ String OooO0OO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO00o(CountDownLatch countDownLatch, Application application, String str) {
            super(1);
            this.OooO00o = countDownLatch;
            this.OooO0O0 = application;
            this.OooO0OO = str;
        }

        public final void OooO00o(boolean z10) {
            this.OooO00o.countDown();
            if (z10) {
                KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
                Application application = this.OooO0O0;
                String str = this.OooO0OO;
                kVStorageProxy.putLong(application, str, str + "_offline_time", System.currentTimeMillis());
            }
            TmcLogger.e("Prefetch:OfflinePackageTask", "PrefetchOfflinePackageTask task finish. success =" + z10);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            OooO00o(((Boolean) obj).booleanValue());
            return Unit.f67061a;
        }
    }

    public OooO0OO(PrefetchConfigModel data) {
        Intrinsics.h(data, "data");
        this.OooO00o = data;
    }

    public final void OooO00o() {
        String appId;
        try {
            TmcLogger.d("Prefetch:OfflinePackageTask", "request start appId=" + this.OooO00o.getAppId() + ".");
            long jCurrentTimeMillis = System.currentTimeMillis();
            Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
            if (application$com_cloud_tmc_miniapp_sdk == null || (appId = this.OooO00o.getAppId()) == null) {
                return;
            }
            long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(application$com_cloud_tmc_miniapp_sdk, appId, appId + "_offline_time");
            if (j11 <= 0 || this.OooO00o.getExecuteTime() != 0) {
                if (jCurrentTimeMillis - j11 >= this.OooO00o.getExecuteTime() * ((long) 1000)) {
                    CountDownLatch countDownLatch = new CountDownLatch(1);
                    OfflineManager.downloadPkgFromPlatform(appId, false, new OooO00o(countDownLatch, application$com_cloud_tmc_miniapp_sdk, appId));
                    countDownLatch.await(60L, TimeUnit.SECONDS);
                    return;
                }
            }
            TmcLogger.e("Prefetch:OfflinePackageTask", "No need to make repeated requests during the validity period");
        } catch (Throwable th2) {
            TmcLogger.e("Prefetch:OfflinePackageTask", th2);
        }
    }
}
