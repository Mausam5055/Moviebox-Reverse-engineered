package com.transsion.moviedetailapi;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.inject.Singleton;
import com.therouter.router.RouteItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Singleton
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J'\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004H&¢\u0006\u0004\b\b\u0010\tJ9\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u00042\b\u0010\r\u001a\u0004\u0018\u00010\fH&¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0007H&¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\fH&¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H&¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/transsion/moviedetailapi/IMovieDetailService;", "", "Landroid/os/Bundle;", "params", "Ljava/lang/Class;", "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;", NativeComponentConstants.KEY_COMPONENT_TYPE, "Landroidx/fragment/app/Fragment;", "e", "(Landroid/os/Bundle;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;", "Landroid/content/Context;", "context", "", CampaignEx.JSON_KEY_TITLE, "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V", "fragment", "c", "(Landroidx/fragment/app/Fragment;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Ljava/lang/String;", "Lcom/therouter/router/RouteItem;", "routeItem", "Lbg/b;", "callback", "a", "(Lcom/therouter/router/RouteItem;Lbg/b;)V", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IMovieDetailService {
    void a(RouteItem routeItem, bg.b callback);

    void b(Context context, Bundle params, Class type, String title);

    void c(Fragment fragment);

    String d();

    Fragment e(Bundle params, Class type);
}
