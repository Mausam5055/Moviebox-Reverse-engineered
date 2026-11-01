package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__942905260 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/transfer/wifi_create\",\"className\":\"com.transsion.transfer.wifi.ui.WifiCreateActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/transfer/wifi_connect\",\"className\":\"com.transsion.transfer.wifi.ui.WifiConnectActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/transfer/status\",\"className\":\"com.transsion.transfer.impl.TransferStatusActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/transfer/wifi_create", "com.transsion.transfer.wifi.ui.WifiCreateActivity", "", ""));
        RouteMapKt.c(new RouteItem("/transfer/wifi_connect", "com.transsion.transfer.wifi.ui.WifiConnectActivity", "", ""));
        RouteMapKt.c(new RouteItem("/transfer/status", "com.transsion.transfer.impl.TransferStatusActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
