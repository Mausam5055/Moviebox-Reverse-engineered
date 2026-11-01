package com.transsion.rewardscenterapi;

import android.content.Context;
import androidx.p009lifecycle.LiveData;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.inject.Singleton;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Singleton
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH&¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H&¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u000fH&¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/transsion/rewardscenterapi/IRewardsCenterApi;", "", "Landroid/content/Context;", "context", "Lkotlinx/coroutines/n0;", "scope", "", "c", "(Landroid/content/Context;Lkotlinx/coroutines/n0;)V", "Landroidx/lifecycle/LiveData;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Landroidx/lifecycle/LiveData;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "Lcom/transsion/rewardscenterapi/RewardsCenterData;", "a", "()Lcom/transsion/rewardscenterapi/RewardsCenterData;", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IRewardsCenterApi {
    RewardsCenterData a();

    void b();

    void c(Context context, n0 scope);

    LiveData d();
}
