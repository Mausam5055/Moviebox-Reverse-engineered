package com.transsion.commercializationapi;

import android.content.Context;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.inject.Singleton;
import com.transsion.bean.GameInfoType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
@Singleton
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001JE\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00042\u0014\u0010\f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u000b0\tH&¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsion/commercializationapi/IGameResApi;", "", "Landroid/content/Context;", "context", "", "pageName", "Lcom/transsion/bean/GameInfoType;", NativeComponentConstants.KEY_COMPONENT_TYPE, "itemId", "Lkotlin/Function1;", "Landroid/view/View;", "", "callback", "a", "(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/bean/GameInfoType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IGameResApi {
    void a(Context context, String pageName, GameInfoType type, String itemId, Function1 callback);
}
