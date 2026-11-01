package k8;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f66680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f66681b;

    static {
        HashMap map = new HashMap();
        f66680a = map;
        HashMap map2 = new HashMap();
        f66681b = map2;
        map.put("FACEBOOK_BIDDER", "facebook");
        map2.put("facebook", "FACEBOOK_BIDDER");
        map.put("APPLOVIN_BIDDER", "applovin");
        map2.put("applovin", "APPLOVIN_BIDDER");
        map.put("TAPJOY_BIDDER", "tapjoy");
        map2.put("tapjoy", "TAPJOY_BIDDER");
    }

    public static boolean a(String str) {
        return "FACEBOOK_BIDDER".equals(str) || "APPLOVIN_BIDDER".equals(str) || "TAPJOY_BIDDER".equals(str) || "CHARTBOOST_BIDDER".equals(str);
    }
}
