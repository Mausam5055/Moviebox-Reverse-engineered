package a;

import android.content.Context;
import androidx.annotation.Keep;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.commercialization.aha.AhaGameAllActivity__TheRouter__Autowired;
import com.transsion.home.activity.FilterActivity__TheRouter__Autowired;
import com.transsion.home.activity.MovieFilterActivity__TheRouter__Autowired;
import com.transsion.home.activity.OperateActivity__TheRouter__Autowired;
import com.transsion.home.activity.RankAllActivity__TheRouter__Autowired;
import com.transsion.home.activity.UGCFilmListActivity__TheRouter__Autowired;
import com.transsion.home.activity.UGCFilterActivity__TheRouter__Autowired;
import com.transsion.home.activity.UGCHashTagActivity__TheRouter__Autowired;
import com.transsion.home.activity.UGCRankingActivity__TheRouter__Autowired;
import com.transsion.home.category.CategoryActivity__TheRouter__Autowired;
import com.transsion.home.category.PlayListActivity__TheRouter__Autowired;
import com.transsion.home.tv.TvLiveDetailActivity__TheRouter__Autowired;
import com.transsion.moviedetail.activity.MovieDetailActivity__TheRouter__Autowired;
import com.transsion.moviedetail.staff.MovieStaffActivity__TheRouter__Autowired;
import com.transsion.payment.lib.strategy.ui.PayWebActivity__TheRouter__Autowired;
import com.transsion.postdetail.ui.activity.LocalVideoDetailActivity__TheRouter__Autowired;
import com.transsion.postdetail.ui.activity.PostDetailActivity__TheRouter__Autowired;
import com.transsion.postdetail.ui.activity.PostDetailVideoActivity__TheRouter__Autowired;
import com.transsion.room.activity.OthersRoomListActivity__TheRouter__Autowired;
import com.transsion.room.activity.RoomDetailActivity__TheRouter__Autowired;
import com.transsion.room.activity.RoomHomeActivity__TheRouter__Autowired;
import com.transsion.room.activity.RoomListActivity__TheRouter__Autowired;
import com.transsion.search.activity.SearchManagerActivity__TheRouter__Autowired;
import com.transsion.shorttv._channel.ui.activity.ShortTvCategoryActivity__TheRouter__Autowired;
import com.transsion.shorttv._channel.ui.activity.ShortTvMovieFilterActivity__TheRouter__Autowired;
import com.transsion.shorttv._channel.ui.activity.ShortTvPlayListActivity__TheRouter__Autowired;
import com.transsion.shorttv.ui.activity.ShortTVFavoriteActivity__TheRouter__Autowired;
import com.transsion.shorttv.ui.activity.ShortTvListActivity__TheRouter__Autowired;
import com.transsion.subroom.activity.MainActivity__TheRouter__Autowired;
import com.transsion.subroom.activity.NotAvailableActivity__TheRouter__Autowired;
import com.transsion.ugcvideodetail.activity.UGCLocalVideoDetailActivity__TheRouter__Autowired;
import com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity__TheRouter__Autowired;
import com.transsion.usercenter.message.UserRoomMessageActivity__TheRouter__Autowired;
import com.transsion.usercenter.message.detail.MessageDetailActivity__TheRouter__Autowired;
import com.transsion.usercenter.profile.ProfileActivity__TheRouter__Autowired;
import com.transsion.usercenter.profile.UserProfileActivity__TheRouter__Autowired;
import com.transsion.usercenter.profile.see.ProfileSeeActivity__TheRouter__Autowired;
import com.transsion.usercenter.tvlink.TvDownloadWebLinkActivity__TheRouter__Autowired;
import com.transsion.videodetail.BaseDetailActivity__TheRouter__Autowired;
import com.transsion.videodetail.StreamDetailActivity__TheRouter__Autowired;
import com.transsion.web.activity.WebActivity__TheRouter__Autowired;
import com.transsnet.downloader.activity.DownloadPanelActivity__TheRouter__Autowired;
import com.transsnet.downloader.activity.DownloadSeriesListActivity__TheRouter__Autowired;
import com.transsnet.downloader.ugc.activity.UGCDownloadCollectionListActivity__TheRouter__Autowired;
import com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity__TheRouter__Autowired;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import yf.b;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\r\u0010\u0001\u001a\u00020\u0000¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u0017\u0010\u0005\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001f\u0010\u000b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f\u001a\r\u0010\r\u001a\u00020\u0000¢\u0006\u0004\b\r\u0010\u0002\"\u0016\u0010\u000f\u001a\u00020\u000e8\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "", "obj", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/Object;)V", "Landroid/content/Context;", "context", "Lyf/b;", "digraph", "a", "(Landroid/content/Context;Lyf/b;)V", "c", "", "asm", "Z", "router_release"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
public final class TheRouterServiceProvideInjecter {

    @Keep
    @JvmField
    public static boolean asm = true;

    public static final void a(Context context, b bVar) {
        try {
            ServiceProvider__TheRouter__1240717169.addFlowTask(context, bVar);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__1452284254.addFlowTask(context, bVar);
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__1471326562.addFlowTask(context, bVar);
        } catch (Throwable th4) {
            th4.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__1555715313.addFlowTask(context, bVar);
        } catch (Throwable th5) {
            th5.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__1743846167.addFlowTask(context, bVar);
        } catch (Throwable th6) {
            th6.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__1761636898.addFlowTask(context, bVar);
        } catch (Throwable th7) {
            th7.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__1777372247.addFlowTask(context, bVar);
        } catch (Throwable th8) {
            th8.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__177862002.addFlowTask(context, bVar);
        } catch (Throwable th9) {
            th9.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__2019351757.addFlowTask(context, bVar);
        } catch (Throwable th10) {
            th10.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__206886985.addFlowTask(context, bVar);
        } catch (Throwable th11) {
            th11.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__2072000671.addFlowTask(context, bVar);
        } catch (Throwable th12) {
            th12.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__2146612191.addFlowTask(context, bVar);
        } catch (Throwable th13) {
            th13.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__296321641.addFlowTask(context, bVar);
        } catch (Throwable th14) {
            th14.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__651322747.addFlowTask(context, bVar);
        } catch (Throwable th15) {
            th15.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__865411724.addFlowTask(context, bVar);
        } catch (Throwable th16) {
            th16.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__978335634.addFlowTask(context, bVar);
        } catch (Throwable th17) {
            th17.printStackTrace();
        }
        try {
            ServiceProvider__TheRouter__986479163.addFlowTask(context, bVar);
        } catch (Throwable th18) {
            th18.printStackTrace();
        }
    }

    public static final void b(Object obj) {
        try {
            AhaGameAllActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        try {
            FilterActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
        try {
            MovieFilterActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th4) {
            th4.printStackTrace();
        }
        try {
            OperateActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th5) {
            th5.printStackTrace();
        }
        try {
            RankAllActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th6) {
            th6.printStackTrace();
        }
        try {
            UGCFilmListActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th7) {
            th7.printStackTrace();
        }
        try {
            UGCFilterActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th8) {
            th8.printStackTrace();
        }
        try {
            UGCHashTagActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th9) {
            th9.printStackTrace();
        }
        try {
            UGCRankingActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th10) {
            th10.printStackTrace();
        }
        try {
            CategoryActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th11) {
            th11.printStackTrace();
        }
        try {
            PlayListActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th12) {
            th12.printStackTrace();
        }
        try {
            TvLiveDetailActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th13) {
            th13.printStackTrace();
        }
        try {
            MovieDetailActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th14) {
            th14.printStackTrace();
        }
        try {
            MovieStaffActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th15) {
            th15.printStackTrace();
        }
        try {
            PayWebActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th16) {
            th16.printStackTrace();
        }
        try {
            LocalVideoDetailActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th17) {
            th17.printStackTrace();
        }
        try {
            PostDetailActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th18) {
            th18.printStackTrace();
        }
        try {
            PostDetailVideoActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th19) {
            th19.printStackTrace();
        }
        try {
            OthersRoomListActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th20) {
            th20.printStackTrace();
        }
        try {
            RoomDetailActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th21) {
            th21.printStackTrace();
        }
        try {
            RoomHomeActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th22) {
            th22.printStackTrace();
        }
        try {
            RoomListActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th23) {
            th23.printStackTrace();
        }
        try {
            SearchManagerActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th24) {
            th24.printStackTrace();
        }
        try {
            com.transsion.search_pugc.activity.SearchManagerActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th25) {
            th25.printStackTrace();
        }
        try {
            ShortTvCategoryActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th26) {
            th26.printStackTrace();
        }
        try {
            ShortTvMovieFilterActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th27) {
            th27.printStackTrace();
        }
        try {
            ShortTvPlayListActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th28) {
            th28.printStackTrace();
        }
        try {
            ShortTVFavoriteActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th29) {
            th29.printStackTrace();
        }
        try {
            ShortTvListActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th30) {
            th30.printStackTrace();
        }
        try {
            com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th31) {
            th31.printStackTrace();
        }
        try {
            MainActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th32) {
            th32.printStackTrace();
        }
        try {
            NotAvailableActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th33) {
            th33.printStackTrace();
        }
        try {
            UGCLocalVideoDetailActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th34) {
            th34.printStackTrace();
        }
        try {
            UGCVideoDetailActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th35) {
            th35.printStackTrace();
        }
        try {
            UserRoomMessageActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th36) {
            th36.printStackTrace();
        }
        try {
            MessageDetailActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th37) {
            th37.printStackTrace();
        }
        try {
            ProfileActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th38) {
            th38.printStackTrace();
        }
        try {
            UserProfileActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th39) {
            th39.printStackTrace();
        }
        try {
            ProfileSeeActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th40) {
            th40.printStackTrace();
        }
        try {
            TvDownloadWebLinkActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th41) {
            th41.printStackTrace();
        }
        try {
            BaseDetailActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th42) {
            th42.printStackTrace();
        }
        try {
            StreamDetailActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th43) {
            th43.printStackTrace();
        }
        try {
            WebActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th44) {
            th44.printStackTrace();
        }
        try {
            DownloadPanelActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th45) {
            th45.printStackTrace();
        }
        try {
            DownloadSeriesListActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th46) {
            th46.printStackTrace();
        }
        try {
            UGCDownloadCollectionListActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th47) {
            th47.printStackTrace();
        }
        try {
            UGCMyDownloadsActivity__TheRouter__Autowired.autowiredInject(obj);
        } catch (Throwable th48) {
            th48.printStackTrace();
        }
    }

    public static final void c() {
        try {
            RouterMap__TheRouter__1080211237.addRoute();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        try {
            RouterMap__TheRouter__108983972.addRoute();
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
        try {
            RouterMap__TheRouter__1190314991.addRoute();
        } catch (Throwable th4) {
            th4.printStackTrace();
        }
        try {
            RouterMap__TheRouter__1347258790.addRoute();
        } catch (Throwable th5) {
            th5.printStackTrace();
        }
        try {
            RouterMap__TheRouter__1365664310.addRoute();
        } catch (Throwable th6) {
            th6.printStackTrace();
        }
        try {
            RouterMap__TheRouter__1371816234.addRoute();
        } catch (Throwable th7) {
            th7.printStackTrace();
        }
        try {
            RouterMap__TheRouter__1526343298.addRoute();
        } catch (Throwable th8) {
            th8.printStackTrace();
        }
        try {
            RouterMap__TheRouter__1544766231.addRoute();
        } catch (Throwable th9) {
            th9.printStackTrace();
        }
        try {
            RouterMap__TheRouter__1561463634.addRoute();
        } catch (Throwable th10) {
            th10.printStackTrace();
        }
        try {
            RouterMap__TheRouter__1763260754.addRoute();
        } catch (Throwable th11) {
            th11.printStackTrace();
        }
        try {
            RouterMap__TheRouter__1773921142.addRoute();
        } catch (Throwable th12) {
            th12.printStackTrace();
        }
        try {
            RouterMap__TheRouter__1880430013.addRoute();
        } catch (Throwable th13) {
            th13.printStackTrace();
        }
        try {
            RouterMap__TheRouter__1980384028.addRoute();
        } catch (Throwable th14) {
            th14.printStackTrace();
        }
        try {
            RouterMap__TheRouter__2035401828.addRoute();
        } catch (Throwable th15) {
            th15.printStackTrace();
        }
        try {
            RouterMap__TheRouter__2071639136.addRoute();
        } catch (Throwable th16) {
            th16.printStackTrace();
        }
        try {
            RouterMap__TheRouter__2081998313.addRoute();
        } catch (Throwable th17) {
            th17.printStackTrace();
        }
        try {
            RouterMap__TheRouter__330865985.addRoute();
        } catch (Throwable th18) {
            th18.printStackTrace();
        }
        try {
            RouterMap__TheRouter__33746619.addRoute();
        } catch (Throwable th19) {
            th19.printStackTrace();
        }
        try {
            RouterMap__TheRouter__509260627.addRoute();
        } catch (Throwable th20) {
            th20.printStackTrace();
        }
        try {
            RouterMap__TheRouter__601604161.addRoute();
        } catch (Throwable th21) {
            th21.printStackTrace();
        }
        try {
            RouterMap__TheRouter__942905260.addRoute();
        } catch (Throwable th22) {
            th22.printStackTrace();
        }
    }

    public static final void d() {
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__1240717169());
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__1452284254());
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__1471326562());
        } catch (Throwable th4) {
            th4.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__1555715313());
        } catch (Throwable th5) {
            th5.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__1743846167());
        } catch (Throwable th6) {
            th6.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__1761636898());
        } catch (Throwable th7) {
            th7.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__1777372247());
        } catch (Throwable th8) {
            th8.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__177862002());
        } catch (Throwable th9) {
            th9.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__2019351757());
        } catch (Throwable th10) {
            th10.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__206886985());
        } catch (Throwable th11) {
            th11.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__2072000671());
        } catch (Throwable th12) {
            th12.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__2146612191());
        } catch (Throwable th13) {
            th13.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__296321641());
        } catch (Throwable th14) {
            th14.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__651322747());
        } catch (Throwable th15) {
            th15.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__865411724());
        } catch (Throwable th16) {
            th16.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__978335634());
        } catch (Throwable th17) {
            th17.printStackTrace();
        }
        try {
            TheRouter.h().privateAddInterceptor(new ServiceProvider__TheRouter__986479163());
        } catch (Throwable th18) {
            th18.printStackTrace();
        }
    }
}
