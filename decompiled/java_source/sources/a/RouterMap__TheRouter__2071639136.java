package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__2071639136 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/home/tv_live_detail\",\"className\":\"com.transsion.home.tv.TvLiveDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/playlist\",\"className\":\"com.transsion.home.category.PlayListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/category\",\"className\":\"com.transsion.home.category.CategoryActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/ugc_ranking\",\"className\":\"com.transsion.home.activity.UGCRankingActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/hashtag\",\"className\":\"com.transsion.home.activity.UGCHashTagActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/ugc_filter\",\"className\":\"com.transsion.home.activity.UGCFilterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/ugc_film_list\",\"className\":\"com.transsion.home.activity.UGCFilmListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/rank/all\",\"className\":\"com.transsion.home.activity.RankAllActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/operatePage\",\"className\":\"com.transsion.home.activity.OperateActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/movieFilter\",\"className\":\"com.transsion.home.activity.MovieFilterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/filter\",\"className\":\"com.transsion.home.activity.FilterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/home/tv_live_detail", "com.transsion.home.tv.TvLiveDetailActivity", "", ""));
        RouteMapKt.c(new RouteItem("/home/playlist", "com.transsion.home.category.PlayListActivity", "", ""));
        RouteMapKt.c(new RouteItem("/home/category", "com.transsion.home.category.CategoryActivity", "", ""));
        RouteMapKt.c(new RouteItem("/home/ugc_ranking", "com.transsion.home.activity.UGCRankingActivity", "", ""));
        RouteMapKt.c(new RouteItem("/home/hashtag", "com.transsion.home.activity.UGCHashTagActivity", "", ""));
        RouteMapKt.c(new RouteItem("/home/ugc_filter", "com.transsion.home.activity.UGCFilterActivity", "", ""));
        RouteMapKt.c(new RouteItem("/home/ugc_film_list", "com.transsion.home.activity.UGCFilmListActivity", "", ""));
        RouteMapKt.c(new RouteItem("/rank/all", "com.transsion.home.activity.RankAllActivity", "", ""));
        RouteMapKt.c(new RouteItem("/home/operatePage", "com.transsion.home.activity.OperateActivity", "", ""));
        RouteMapKt.c(new RouteItem("/home/movieFilter", "com.transsion.home.activity.MovieFilterActivity", "", ""));
        RouteMapKt.c(new RouteItem("/home/filter", "com.transsion.home.activity.FilterActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
