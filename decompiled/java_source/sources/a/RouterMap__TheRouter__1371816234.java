package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__1371816234 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/main/page_not_available\",\"className\":\"com.transsion.subroom.activity.NotAvailableActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/main/tab\",\"className\":\"com.transsion.subroom.activity.MainActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/main/page_not_available", "com.transsion.subroom.activity.NotAvailableActivity", "", ""));
        RouteMapKt.c(new RouteItem("/main/tab", "com.transsion.subroom.activity.MainActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
