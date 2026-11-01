package com.transsion.room.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class OthersRoomListActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof OthersRoomListActivity) {
            OthersRoomListActivity othersRoomListActivity = (OthersRoomListActivity) obj;
            Iterator it = TheRouter.g().iterator();
            while (it.hasNext()) {
                try {
                    String str = (String) ((a) it.next()).a("java.lang.String", othersRoomListActivity, new b("java.lang.String", "user_id", 0, "", "com.transsion.room.activity.OthersRoomListActivity", "userId", false, "No desc."));
                    if (str != null) {
                        othersRoomListActivity.userId = str;
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
            }
        }
    }
}
