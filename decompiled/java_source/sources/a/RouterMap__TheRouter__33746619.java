package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__33746619 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/push/test\",\"className\":\"com.transsion.push.PushTestActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/push/test", "com.transsion.push.PushTestActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
