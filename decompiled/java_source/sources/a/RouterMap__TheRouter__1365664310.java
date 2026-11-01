package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__1365664310 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/movie/staff\",\"className\":\"com.transsion.moviedetail.staff.MovieStaffActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/movie/detail\",\"className\":\"com.transsion.moviedetail.activity.MovieDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/movie/staff", "com.transsion.moviedetail.staff.MovieStaffActivity", "", ""));
        RouteMapKt.c(new RouteItem("/movie/detail", "com.transsion.moviedetail.activity.MovieDetailActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
