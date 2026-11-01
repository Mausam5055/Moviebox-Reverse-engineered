package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__1561463634 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/rewards/center\",\"className\":\"com.transsion.rewardscenter.ui.RewardsCenterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/rewards/claim_reward\",\"className\":\"com.transsion.rewardscenter.ui.ClaimRewardActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/rewards/center", "com.transsion.rewardscenter.ui.RewardsCenterActivity", "", ""));
        RouteMapKt.c(new RouteItem("/rewards/claim_reward", "com.transsion.rewardscenter.ui.ClaimRewardActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
