package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__1080211237 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/member/point_history\",\"className\":\"com.transsion.member.history.PointsHistoryActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/member/MemberPremiumFragment\",\"className\":\"com.transsion.member.MemberPremiumFragment\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/member/MemberFragment\",\"className\":\"com.transsion.member.MemberFragment\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/member/MemberActivity\",\"className\":\"com.transsion.member.MemberActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/member/point_history", "com.transsion.member.history.PointsHistoryActivity", "", ""));
        RouteMapKt.c(new RouteItem("/member/MemberPremiumFragment", "com.transsion.member.MemberPremiumFragment", "", ""));
        RouteMapKt.c(new RouteItem("/member/MemberFragment", "com.transsion.member.MemberFragment", "", ""));
        RouteMapKt.c(new RouteItem("/member/MemberActivity", "com.transsion.member.MemberActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
