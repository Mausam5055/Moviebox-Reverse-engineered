package com.transsion.postdetailapi;

import android.app.Application;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import bg.b;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.therouter.inject.Singleton;
import com.therouter.router.RouteItem;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomTabItem;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Singleton
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\t\u0010\nJ1\u0010\u000f\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\b\u0011\u0010\u0012J)\u0010\u0017\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H&¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u0019\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H&¢\u0006\u0004\b\u0019\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u000e2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\b\u001b\u0010\u0012J\u0019\u0010\u001c\u001a\u00020\u000e2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\b\u001c\u0010\u0012J1\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00020!2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0006\u0010 \u001a\u00020\u001fH&¢\u0006\u0004\b\"\u0010#J1\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00020!2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0006\u0010 \u001a\u00020\u001fH&¢\u0006\u0004\b$\u0010#J!\u0010(\u001a\u00020\u00042\b\u0010%\u001a\u0004\u0018\u00010\u000e2\u0006\u0010'\u001a\u00020&H&¢\u0006\u0004\b(\u0010)J\u0019\u0010*\u001a\u00020\u00042\b\u0010%\u001a\u0004\u0018\u00010\u000eH&¢\u0006\u0004\b*\u0010+J\u0017\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,H&¢\u0006\u0004\b.\u0010/J\u009f\u0001\u0010<\u001a\u00020\u000e2\b\u00100\u001a\u0004\u0018\u00010\u00072\b\u00101\u001a\u0004\u0018\u00010\u00072\u0006\u00103\u001a\u0002022\b\b\u0002\u00104\u001a\u00020&2\b\b\u0002\u00105\u001a\u00020&2\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\b<\u0010=J\u001f\u0010B\u001a\u00020\u00042\u0006\u0010?\u001a\u00020>2\u0006\u0010A\u001a\u00020@H&¢\u0006\u0004\bB\u0010C¨\u0006D"}, d2 = {"Lcom/transsion/postdetailapi/IPostDetailApi;", "", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "data", "", "i", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "", "tag", "m", "(Ljava/lang/String;)V", "parentType", "insertPostId", "insertPostOps", "Landroidx/fragment/app/Fragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;", "l", "(Ljava/lang/String;)Landroidx/fragment/app/Fragment;", "Lcom/transsion/moviedetailapi/bean/RoomTabItem;", WebConstants.FIELD_ITEM, "", "tabIndex", "c", "(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Landroidx/fragment/app/Fragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "groupId", CampaignEx.JSON_KEY_AD_K, "e", "pageName", "pageFrom", "Landroidx/recyclerview/widget/RecyclerView$s;", "pool", "Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "h", "(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "o", "fragment", "", "isRefresh", "g", "(Landroidx/fragment/app/Fragment;Z)V", "n", "(Landroidx/fragment/app/Fragment;)V", "Landroid/app/Application;", MimeTypes.BASE_TYPE_APPLICATION, "j", "(Landroid/app/Application;)V", "topicId", "topicType", "", "commentCount", "showDownload", "isFromDetail", "commentId", "trackId", "previousTrackId", "previousPageVideoId", "ugcVideoId", "collectionId", "f", "(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;", "Lcom/therouter/router/RouteItem;", "routeItem", "Lbg/b;", "callback", "a", "(Lcom/therouter/router/RouteItem;Lbg/b;)V", "PostDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IPostDetailApi {
    void a(RouteItem routeItem, b callback);

    Fragment b(String parentType, RoomTabItem item, int tabIndex);

    Fragment c(String parentType, RoomTabItem item, int tabIndex);

    Fragment d(String parentType, String insertPostId, String insertPostOps);

    Fragment e(String groupId);

    Fragment f(String topicId, String topicType, long commentCount, boolean showDownload, boolean isFromDetail, String commentId, String pageFrom, String trackId, String previousTrackId, String previousPageVideoId, String ugcVideoId, String pageName, String collectionId);

    void g(Fragment fragment, boolean isRefresh);

    BaseItemProvider h(String pageName, String pageFrom, RecyclerView.s pool);

    void i(PostSubjectItem data);

    void j(Application application);

    Fragment k(String groupId);

    Fragment l(String parentType);

    void m(String tag);

    void n(Fragment fragment);

    BaseItemProvider o(String pageName, String pageFrom, RecyclerView.s pool);
}
