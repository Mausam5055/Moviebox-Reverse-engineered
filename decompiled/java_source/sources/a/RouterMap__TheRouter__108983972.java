package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__108983972 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/publish/location_list\",\"className\":\"com.transsion.publish.ui.SelectLocationActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/publish/activity/film_review\",\"className\":\"com.transsion.publish.ui.FilmReviewActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/publish/location_list", "com.transsion.publish.ui.SelectLocationActivity", "", ""));
        RouteMapKt.c(new RouteItem("/publish/activity/film_review", "com.transsion.publish.ui.FilmReviewActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
