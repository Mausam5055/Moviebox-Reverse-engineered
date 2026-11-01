package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__2035401828 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/subscription/my_subscription\",\"className\":\"com.transsion.room.sub.activity.subscription.SubscriptionListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/subscription/subscription\",\"className\":\"com.transsion.room.sub.activity.subscription.SubscriptionActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/ugc/likes\",\"className\":\"com.transsion.room.sub.activity.likes.UgcLikesActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/list\",\"className\":\"com.transsion.room.activity.RoomListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/home\",\"className\":\"com.transsion.room.activity.RoomHomeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/detail\",\"className\":\"com.transsion.room.activity.RoomDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/others_list\",\"className\":\"com.transsion.room.activity.OthersRoomListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/my\",\"className\":\"com.transsion.room.activity.MyRoomActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/hot_room\",\"className\":\"com.transsion.room.activity.HotRoomsActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/create\",\"className\":\"com.transsion.room.activity.CreateRoomActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/subscription/my_subscription", "com.transsion.room.sub.activity.subscription.SubscriptionListActivity", "", ""));
        RouteMapKt.c(new RouteItem("/subscription/subscription", "com.transsion.room.sub.activity.subscription.SubscriptionActivity", "", ""));
        RouteMapKt.c(new RouteItem("/ugc/likes", "com.transsion.room.sub.activity.likes.UgcLikesActivity", "", ""));
        RouteMapKt.c(new RouteItem("/room/list", "com.transsion.room.activity.RoomListActivity", "", ""));
        RouteMapKt.c(new RouteItem("/room/home", "com.transsion.room.activity.RoomHomeActivity", "", ""));
        RouteMapKt.c(new RouteItem("/room/detail", "com.transsion.room.activity.RoomDetailActivity", "", ""));
        RouteMapKt.c(new RouteItem("/room/others_list", "com.transsion.room.activity.OthersRoomListActivity", "", ""));
        RouteMapKt.c(new RouteItem("/room/my", "com.transsion.room.activity.MyRoomActivity", "", ""));
        RouteMapKt.c(new RouteItem("/room/hot_room", "com.transsion.room.activity.HotRoomsActivity", "", ""));
        RouteMapKt.c(new RouteItem("/room/create", "com.transsion.room.activity.CreateRoomActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
