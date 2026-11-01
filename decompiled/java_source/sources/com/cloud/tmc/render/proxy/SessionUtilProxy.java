package com.cloud.tmc.render.proxy;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.render.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.utils.SessionUtils")
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&J\"\u0010\u0007\u001a\u00020\u00062\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH&¨\u0006\u000b"}, d2 = {"Lcom/cloud/tmc/render/proxy/SessionUtilProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "getId", "", "appId", "removeSession", "", "updateSession", "isValidOnResume", "", "isFormStart", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface SessionUtilProxy extends Proxiable {
    String getId(String appId);

    void removeSession(String appId);

    void updateSession(String appId, boolean isValidOnResume, boolean isFormStart);
}
