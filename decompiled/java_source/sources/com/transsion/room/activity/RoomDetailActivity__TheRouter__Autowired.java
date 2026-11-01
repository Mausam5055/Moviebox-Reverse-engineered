package com.transsion.room.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.web.api.WebConstants;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class RoomDetailActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof RoomDetailActivity) {
            RoomDetailActivity roomDetailActivity = (RoomDetailActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a("boolean", roomDetailActivity, new b("boolean", "need_start_room_home", 0, "", "com.transsion.room.activity.RoomDetailActivity", "isNeedStartRoomHome", false, "No desc."));
                    if (bool != null) {
                        roomDetailActivity.isNeedStartRoomHome = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    RoomItem roomItem = (RoomItem) aVar.a("com.transsion.moviedetailapi.bean.RoomItem", roomDetailActivity, new b("com.transsion.moviedetailapi.bean.RoomItem", WebConstants.FIELD_ITEM, 0, "", "com.transsion.room.activity.RoomDetailActivity", WebConstants.FIELD_ITEM, false, "No desc."));
                    if (roomItem != null) {
                        roomDetailActivity.com.transsion.web.api.WebConstants.FIELD_ITEM java.lang.String = roomItem;
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", roomDetailActivity, new b("java.lang.String", "id", 0, "", "com.transsion.room.activity.RoomDetailActivity", "id", false, "No desc."));
                    if (str != null) {
                        roomDetailActivity.id = str;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
            }
        }
    }
}
