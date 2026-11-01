package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__1773921142 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/download/ugc_my_downloads\",\"className\":\"com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/ugc_collection_list\",\"className\":\"com.transsnet.downloader.ugc.activity.UGCDownloadCollectionListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/transfer\",\"className\":\"com.transsnet.downloader.activity.TransferActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/series_list\",\"className\":\"com.transsnet.downloader.activity.DownloadSeriesListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/panel_activity\",\"className\":\"com.transsnet.downloader.activity.DownloadPanelActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/play_history\",\"className\":\"com.transsnet.downloader.activity.AllHistoricalPlayRecordActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/download/ugc_my_downloads", "com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity", "", ""));
        RouteMapKt.c(new RouteItem("/download/ugc_collection_list", "com.transsnet.downloader.ugc.activity.UGCDownloadCollectionListActivity", "", ""));
        RouteMapKt.c(new RouteItem("/download/transfer", "com.transsnet.downloader.activity.TransferActivity", "", ""));
        RouteMapKt.c(new RouteItem("/download/series_list", "com.transsnet.downloader.activity.DownloadSeriesListActivity", "", ""));
        RouteMapKt.c(new RouteItem("/download/panel_activity", "com.transsnet.downloader.activity.DownloadPanelActivity", "", ""));
        RouteMapKt.c(new RouteItem("/download/play_history", "com.transsnet.downloader.activity.AllHistoricalPlayRecordActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
