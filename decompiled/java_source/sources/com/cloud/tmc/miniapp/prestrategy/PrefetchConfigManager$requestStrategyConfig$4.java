package com.cloud.tmc.miniapp.prestrategy;

import com.cloud.tmc.integration.net.BaseResponse;
import com.cloud.tmc.integration.net.TmcResponseCallback;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class PrefetchConfigManager$requestStrategyConfig$4 extends TmcResponseCallback<ArrayList<PrefetchConfigModel>> {
    public final /* synthetic */ PrefetchData OooO00o;

    public PrefetchConfigManager$requestStrategyConfig$4(PrefetchData prefetchData) {
        this.OooO00o = prefetchData;
    }

    public static final void OooO00o(List list, PrefetchData data) {
        Intrinsics.h(data, "$data");
        OooO0o.OooO00o.OooO00o((List<PrefetchConfigModel>) list, data.getBundleMap());
    }

    @Override // com.cloud.tmc.integration.net.TmcResponseCallback
    public Type getType() {
        Type type = new TypeToken<BaseResponse<? extends ArrayList<PrefetchConfigModel>>>() { // from class: com.cloud.tmc.miniapp.prestrategy.PrefetchConfigManager$requestStrategyConfig$4$getType$1
        }.getType();
        Intrinsics.g(type, "object : TypeToken<BaseR…hConfigModel>>>() {}.type");
        return type;
    }

    @Override // com.cloud.tmc.integration.net.TmcResponseCallback
    public void onFail(BaseResponse<? extends Object> fail, Map<String, String> map) {
        Intrinsics.h(fail, "fail");
        OooO0OO.OooO0o0.set(0);
        TmcLogger.d("Prefetch:PrefetchConfigManager", "requestStrategyConfig failed( " + fail.getCode() + ":" + fail.getMessage() + ").");
    }

    @Override // com.cloud.tmc.integration.net.TmcResponseCallback
    public void onSuccess(BaseResponse<? extends ArrayList<PrefetchConfigModel>> bean, Map<String, String> map) {
        Intrinsics.h(bean, "bean");
        OooO0OO.OooO0o0.set(0);
        TmcLogger.d("Prefetch:PrefetchConfigManager", "requestStrategyConfig success.");
        if (ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk() != null) {
            final PrefetchData prefetchData = this.OooO00o;
            try {
                final ArrayList<PrefetchConfigModel> data = bean.getData();
                if (data != null && !data.isEmpty()) {
                    TmcLogger.d("Prefetch:PrefetchConfigManager", "requestStrategyConfig data=" + data + ".");
                    ExecutorUtils.execute(ExecutorType.IDLE, new Runnable() { // from class: com.cloud.tmc.miniapp.prestrategy.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            PrefetchConfigManager$requestStrategyConfig$4.OooO00o(data, prefetchData);
                        }
                    });
                    return;
                }
                TmcLogger.e("Prefetch:PrefetchConfigManager", "modelList is empty.");
            } catch (Throwable th2) {
                TmcLogger.e("Prefetch:PrefetchConfigManager", th2);
            }
        }
    }
}
