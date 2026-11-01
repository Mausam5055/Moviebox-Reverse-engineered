package com.transsion.videodetail.api;

import androidx.fragment.app.Fragment;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.inject.Singleton;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes7.dex */
@Singleton
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001JC\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0007H&¢\u0006\u0004\b\u000b\u0010\fJ/\u0010\u000e\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u000e\u0010\u000fJ;\u0010\u0012\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H&¢\u0006\u0004\b\u0012\u0010\fJL\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\n2\b\b\u0001\u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u00042!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u001b0\u0016H&¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/transsion/videodetail/api/IStreamDetailService;", "", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "", "ops", "pageName", "", "isLocalVideo", "isOutsideVideo", "Landroidx/fragment/app/Fragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)Landroidx/fragment/app/Fragment;", "subjectId", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;", "moduleName", "isInterceptDetail", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "targetFragment", "", "containerId", "Lkotlin/Function1;", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "Lkotlin/ParameterName;", "name", "info", "", "callback", "c", "(Landroidx/fragment/app/Fragment;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V", "VideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IStreamDetailService {
    Fragment a(String subjectId, String ops, String pageName);

    Fragment b(Subject subject, String pageName, String moduleName, boolean isInterceptDetail, boolean isOutsideVideo);

    void c(Fragment targetFragment, int containerId, String subjectId, Function1 callback);

    Fragment d(Subject subject, String ops, String pageName, boolean isLocalVideo, boolean isOutsideVideo);
}
