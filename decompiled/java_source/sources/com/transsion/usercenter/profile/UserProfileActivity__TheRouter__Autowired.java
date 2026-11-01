package com.transsion.usercenter.profile;

import androidx.annotation.Keep;
import com.therouter.TheRouter;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class UserProfileActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof UserProfileActivity) {
            UserProfileActivity userProfileActivity = (UserProfileActivity) obj;
            for (bg.a aVar : TheRouter.g()) {
                try {
                    String str = (String) aVar.a("java.lang.String", userProfileActivity, new com.therouter.router.b("java.lang.String", "fromOptId", 0, "", "com.transsion.usercenter.profile.UserProfileActivity", "fromOptId", false, "No desc."));
                    if (str != null) {
                        userProfileActivity.fromOptId = str;
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", userProfileActivity, new com.therouter.router.b("java.lang.String", "userId", 0, "", "com.transsion.usercenter.profile.UserProfileActivity", "userId", false, "No desc."));
                    if (str2 != null) {
                        userProfileActivity.userId = str2;
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
            }
        }
    }
}
