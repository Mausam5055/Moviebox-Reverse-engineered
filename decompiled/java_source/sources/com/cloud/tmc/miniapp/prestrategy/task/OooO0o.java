package com.cloud.tmc.miniapp.prestrategy.task;

import android.app.Application;
import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.ExtendModel;
import com.cloud.tmc.integration.proxy.PreHtmStrategyProxy;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.KUrlUtils;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.prestrategy.PrefetchConfigModel;
import com.cloud.tmc.miniutils.util.EncryptUtils;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0o {
    public final PrefetchConfigModel OooO00o;

    public static final class OooO00o extends Lambda implements Function1<Boolean, Unit> {
        public final /* synthetic */ CountDownLatch OooO00o;
        public final /* synthetic */ Application OooO0O0;
        public final /* synthetic */ String OooO0OO;
        public final /* synthetic */ String OooO0Oo;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO00o(CountDownLatch countDownLatch, Application application, String str, String str2) {
            super(1);
            this.OooO00o = countDownLatch;
            this.OooO0O0 = application;
            this.OooO0OO = str;
            this.OooO0Oo = str2;
        }

        public final void OooO00o(boolean z10) {
            this.OooO00o.countDown();
            if (z10) {
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(this.OooO0O0, this.OooO0OO, this.OooO0Oo + "_time", System.currentTimeMillis());
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            OooO00o(((Boolean) obj).booleanValue());
            return Unit.f67061a;
        }
    }

    public OooO0o(PrefetchConfigModel data) {
        Intrinsics.h(data, "data");
        this.OooO00o = data;
    }

    public final void OooO00o() {
        String appId;
        AppModel appModel;
        String h5Url;
        try {
            TmcLogger.d("Prefetch:ShellH5Task", "request start appId=" + this.OooO00o.getAppId() + ".");
            long jCurrentTimeMillis = System.currentTimeMillis();
            Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
            if (application$com_cloud_tmc_miniapp_sdk == null || (appId = this.OooO00o.getAppId()) == null || (appModel = ((TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class)).getAppModel(application$com_cloud_tmc_miniapp_sdk, AppInfoQuery.INSTANCE.make(appId))) == null) {
                return;
            }
            ExtendModel extend = appModel.getExtend();
            if (extend == null || (h5Url = extend.getH5Url()) == null) {
                h5Url = "";
            }
            if (h5Url.length() == 0) {
                TmcLogger.d("Prefetch:ShellH5Task", appId + " ->h5Url is empty ,return!");
                return;
            }
            String strGenerateShellUrl = KUrlUtils.generateShellUrl(h5Url, this.OooO00o.getBundle());
            String strEncryptMD5ToString = EncryptUtils.encryptMD5ToString(strGenerateShellUrl);
            long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(application$com_cloud_tmc_miniapp_sdk, appId, strEncryptMD5ToString + "_time");
            if ((j11 > 0 && this.OooO00o.getExecuteTime() == 0) || jCurrentTimeMillis - j11 < this.OooO00o.getExecuteTime() * ((long) 1000)) {
                TmcLogger.e("Prefetch:H5Task", "No need to make repeated requests during the validity period");
                return;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ((PreHtmStrategyProxy) TmcProxy.get(PreHtmStrategyProxy.class)).requestHtml(application$com_cloud_tmc_miniapp_sdk, strGenerateShellUrl, new OooO00o(countDownLatch, application$com_cloud_tmc_miniapp_sdk, appId, strEncryptMD5ToString));
            countDownLatch.await(60L, TimeUnit.SECONDS);
        } catch (Throwable th2) {
            TmcLogger.e("Prefetch:ShellH5Task", th2);
        }
    }
}
