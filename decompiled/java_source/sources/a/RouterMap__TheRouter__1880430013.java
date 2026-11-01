package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__1880430013 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/edu/courseList\",\"className\":\"com.transsion.edcation.list.MyCourseListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/edu/history\",\"className\":\"com.transsion.edcation.history.EducationHistoryActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/edu/courseList", "com.transsion.edcation.list.MyCourseListActivity", "", ""));
        RouteMapKt.c(new RouteItem("/edu/history", "com.transsion.edcation.history.EducationHistoryActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
