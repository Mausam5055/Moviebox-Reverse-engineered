package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__509260627 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/ugc_shorts/detail\",\"className\":\"com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/ugc_shorts/favorite\",\"className\":\"com.transsion.shorttv_pugc.ui.activity.ShortTVFavoriteActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/shorts/detail\",\"className\":\"com.transsion.shorttv.ui.activity.ShortTvListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/shorts/favorite\",\"className\":\"com.transsion.shorttv.ui.activity.ShortTVFavoriteActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/shorttv/playlist\",\"className\":\"com.transsion.shorttv._channel.ui.activity.ShortTvPlayListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/shorttv/movieFilter\",\"className\":\"com.transsion.shorttv._channel.ui.activity.ShortTvMovieFilterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/shorttv/category\",\"className\":\"com.transsion.shorttv._channel.ui.activity.ShortTvCategoryActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/ugc_shorts/detail", "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity", "", ""));
        RouteMapKt.c(new RouteItem("/ugc_shorts/favorite", "com.transsion.shorttv_pugc.ui.activity.ShortTVFavoriteActivity", "", ""));
        RouteMapKt.c(new RouteItem("/shorts/detail", "com.transsion.shorttv.ui.activity.ShortTvListActivity", "", ""));
        RouteMapKt.c(new RouteItem("/shorts/favorite", "com.transsion.shorttv.ui.activity.ShortTVFavoriteActivity", "", ""));
        RouteMapKt.c(new RouteItem("/shorttv/playlist", "com.transsion.shorttv._channel.ui.activity.ShortTvPlayListActivity", "", ""));
        RouteMapKt.c(new RouteItem("/shorttv/movieFilter", "com.transsion.shorttv._channel.ui.activity.ShortTvMovieFilterActivity", "", ""));
        RouteMapKt.c(new RouteItem("/shorttv/category", "com.transsion.shorttv._channel.ui.activity.ShortTvCategoryActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
