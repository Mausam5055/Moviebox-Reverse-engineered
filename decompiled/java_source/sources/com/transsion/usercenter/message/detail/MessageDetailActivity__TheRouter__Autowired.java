package com.transsion.usercenter.message.detail;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class MessageDetailActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof MessageDetailActivity) {
            MessageDetailActivity messageDetailActivity = (MessageDetailActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    String str = (String) aVar.a("java.lang.String", messageDetailActivity, new b("java.lang.String", "msg_content", 0, "", "com.transsion.usercenter.message.detail.MessageDetailActivity", "msgContent", false, "No desc."));
                    if (str != null) {
                        messageDetailActivity.msgContent = str;
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", messageDetailActivity, new b("java.lang.String", "msg_create_time", 0, "", "com.transsion.usercenter.message.detail.MessageDetailActivity", "createTime", false, "No desc."));
                    if (str2 != null) {
                        messageDetailActivity.createTime = str2;
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", messageDetailActivity, new b("java.lang.String", "msg_nickname", 0, "", "com.transsion.usercenter.message.detail.MessageDetailActivity", "nickName", false, "No desc."));
                    if (str3 != null) {
                        messageDetailActivity.nickName = str3;
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
