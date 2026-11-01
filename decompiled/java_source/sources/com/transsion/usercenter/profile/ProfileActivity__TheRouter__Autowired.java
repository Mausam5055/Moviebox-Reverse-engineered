package com.transsion.usercenter.profile;

import androidx.annotation.Keep;
import com.therouter.TheRouter;
import com.transsnet.loginapi.bean.UserInfo;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class ProfileActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof ProfileActivity) {
            ProfileActivity profileActivity = (ProfileActivity) obj;
            for (bg.a aVar : TheRouter.g()) {
                try {
                    UserInfo userInfo = (UserInfo) aVar.a("com.transsnet.loginapi.bean.UserInfo", profileActivity, new com.therouter.router.b("com.transsnet.loginapi.bean.UserInfo", "userInfo", 0, "", "com.transsion.usercenter.profile.ProfileActivity", "userInfo", false, "No desc."));
                    if (userInfo != null) {
                        profileActivity.userInfo = userInfo;
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", profileActivity, new com.therouter.router.b("java.lang.String", "userId", 0, "", "com.transsion.usercenter.profile.ProfileActivity", "userId", false, "No desc."));
                    if (str != null) {
                        profileActivity.userId = str;
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
