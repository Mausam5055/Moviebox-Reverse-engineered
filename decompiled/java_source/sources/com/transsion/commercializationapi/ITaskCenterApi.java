package com.transsion.commercializationapi;

import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.inject.Singleton;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberSceneType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import ok.b;

/* JADX INFO: loaded from: classes.dex */
@Singleton
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J@\u0010\u000b\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022%\b\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004H&¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH&¢\u0006\u0004\b\u000f\u0010\u0010J3\u0010\u0017\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0015H&¢\u0006\u0004\b\u0017\u0010\u0018J*\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00132\b\b\u0002\u0010\u001b\u001a\u00020\u0005H¦@¢\u0006\u0004\b\u001c\u0010\u001dJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u001eH¦@¢\u0006\u0004\b\u001f\u0010 J+\u0010#\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH&¢\u0006\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lcom/transsion/commercializationapi/ITaskCenterApi;", "", "Landroidx/fragment/app/FragmentActivity;", "activity", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "isOnRewarded", "", "callback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V", "Lok/b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "c", "(Lok/b;)V", "", "resolution", "", "genre", "Lcom/transsion/memberapi/MemberSceneType;", "sceneType", "f", "(Ljava/lang/Integer;Ljava/lang/String;Lok/b;Lcom/transsion/memberapi/MemberSceneType;)V", "activityId", "orderId", "showErrorToast", "a", "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/bean/lottery/LotteryUserInfoEntity;", "e", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/memberapi/MemberCheckResult;", "memberCheckResult", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Lcom/transsion/memberapi/MemberCheckResult;Lok/b;)V", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface ITaskCenterApi {

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {
        public static /* synthetic */ Object a(ITaskCenterApi iTaskCenterApi, String str, String str2, boolean z10, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLotteryUserActivityInfo");
            }
            if ((i11 & 4) != 0) {
                z10 = false;
            }
            return iTaskCenterApi.a(str, str2, z10, continuation);
        }
    }

    Object a(String str, String str2, boolean z10, Continuation continuation);

    void b(FragmentActivity activity, Function1 callback);

    void c(b listener);

    void d(String genre, MemberCheckResult memberCheckResult, b listener);

    Object e(Continuation continuation);

    void f(Integer resolution, String genre, b listener, MemberSceneType sceneType);
}
