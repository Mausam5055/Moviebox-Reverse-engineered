package com.transsion.commercializationapi;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.inject.Singleton;
import com.transsion.bean.HomePopupEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
@Singleton
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\bg\u0018\u00002\u00020\u0001J<\u0010\u000b\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0004H&¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\tH&¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsion/commercializationapi/ICommonDialogApi;", "", "Lcom/transsion/bean/HomePopupEntity;", "homePopupEntity", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "isShow", "", "callback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;)V", "a", "(Lcom/transsion/bean/HomePopupEntity;)V", "onDestroy", "()V", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface ICommonDialogApi {
    void a(HomePopupEntity homePopupEntity);

    void b(HomePopupEntity homePopupEntity, Function1 callback);

    void onDestroy();
}
