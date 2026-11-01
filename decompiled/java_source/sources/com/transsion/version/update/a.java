package com.transsion.version.update;

import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.tn.lib.net.bean.BaseDto;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J,\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/transsion/version/update/a;", "", "", FrameworkConstants.GLOBAL_DATA_KEY_APP_PATH, "basePkgMd5", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/version/update/RemoteVersionInfo;", "a", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Update_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @GET("/{appPath}/app/check-update")
    Object a(@Path(FrameworkConstants.GLOBAL_DATA_KEY_APP_PATH) String str, @Query("basePkgMd5") String str2, Continuation<? super BaseDto<RemoteVersionInfo>> continuation);
}
