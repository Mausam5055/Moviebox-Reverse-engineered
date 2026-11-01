package com.transsion.push.broadcast;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.transsion.json.b;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.bean.PushMessageKey;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import com.transsion.push.utils.ServiceUtils;
import com.transsion.push.utils.e0;
import java.util.Map;
import qk.a;

/* JADX INFO: loaded from: classes6.dex */
public class FCMMessageService extends FirebaseMessagingService {
    private boolean w(PushMessage pushMessage) {
        return pushMessage.messageId > 0 && pushMessage.type > 0 && !TextUtils.isEmpty(pushMessage.pkgId);
    }

    private PushMessage x(RemoteMessage remoteMessage) {
        PushMessage pushMessage = new PushMessage();
        Map<String, String> data = remoteMessage.getData();
        if (data != null && !data.isEmpty()) {
            pushMessage.messageId = e0.e(data.get(PushMessageKey.KEY_TCM_MSG_ID));
            pushMessage.type = e0.d(data.get(PushMessageKey.KEY_TCM_MSG_TYPE));
            pushMessage.pkgId = data.get(PushMessageKey.KEY_TCM_MSG_PKG);
            pushMessage.packageName = data.get(PushMessageKey.KEY_TCM_MSG_PKGNAME);
            try {
                pushMessage.rpkg = a.a().getPackageName();
            } catch (Exception unused) {
                pushMessage.rpkg = "";
            }
            pushMessage.notiType = e0.d(data.get(PushMessageKey.KEY_NOTI_TYPE));
            pushMessage.notiExType = e0.c(data.get(PushMessageKey.KEY_NOTI_EX_TYPE));
            pushMessage.msgTtl = e0.d(data.get(PushMessageKey.KEY_TCM_MSG_TTL));
            pushMessage.ignoreExpire = e0.d(data.get(PushMessageKey.KEY_NOTI_IGNORE_EXPIRE));
            pushMessage.groupId = data.get(PushMessageKey.KEY_APP_GROUP_ID);
            pushMessage.groupMaxCount = data.get(PushMessageKey.KEY_APP_GROUP_MAX_COUNT);
            pushMessage.notiTitle = data.get(PushMessageKey.KEY_NOTI_TITLE);
            pushMessage.notiDes = data.get(PushMessageKey.KEY_NOTI_DESC);
            pushMessage.notiImg = data.get(PushMessageKey.KEY_NOTI_IMG);
            pushMessage.notiIcon = data.get(PushMessageKey.KEY_NOTI_ICON);
            pushMessage.notiBtn = data.get(PushMessageKey.KEY_NOTI_BTN);
            pushMessage.notiImgEx = data.get(PushMessageKey.KEY_NOTI_IMG_EX);
            pushMessage.notiTitleEx = data.get(PushMessageKey.KEY_NOTI_TITLE_EX);
            pushMessage.notiTxtEx = data.get(PushMessageKey.KEY_NOTI_TXT_EX);
            pushMessage.notiOpenType = e0.d(data.get(PushMessageKey.KEY_NOTI_OPEN_TYPE));
            pushMessage.notiOpenContent = data.get(PushMessageKey.KEY_NOTI_OPEN_CONTENT);
            pushMessage.transData = e0.b(data.get("trans_data"));
            pushMessage.timeStamp = data.get(PushMessageKey.KEY_TCM_MSG_TIMESTAMP);
            pushMessage.notiSmallIcon = data.get(PushMessageKey.KEY_NOTI_SMALL_ICON);
            pushMessage.displayPolicy = e0.d(data.get(PushMessageKey.KEY_DISPLAY_POLICY));
            pushMessage.appName = data.get("app_name");
            pushMessage.layoutStyleId = e0.d(data.get(PushMessageKey.KEY_APP_LAYOUT_STYLE_ID));
            pushMessage.channelId = data.get(PushMessageKey.KEY_APP_CHANNEL_ID);
            pushMessage.channelName = data.get(PushMessageKey.KEY_APP_CHANNEL_NAME);
            pushMessage.iconColor = data.get(PushMessageKey.KEY_NOTI_SMALL_ICON_COLOR);
            pushMessage.impUrlList = data.get(PushMessageKey.KEY_NOTI_IMP_URLS);
            pushMessage.clickUrlList = data.get(PushMessageKey.KEY_NOTI_CLICK_URLS);
            pushMessage.isHeadsUp = e0.d(data.get(PushMessageKey.KEY_NOTI_IS_HEADSUP));
            pushMessage.retraceMsgId = e0.e(data.get(PushMessageKey.KEY_NOTI_RETRACE_MSG_ID));
            pushMessage.notiExtensionBtn = data.get(PushMessageKey.KEY_NOTI_BTN_EX);
            pushMessage.notiBtnBgColor = data.get(PushMessageKey.KEY_NOTI_BTN_BG_COLOR);
            pushMessage.notiBtnTxtColor = data.get(PushMessageKey.KEY_NOTI_BTN_WORD_COLOR);
            pushMessage.notiOptionalIcon = data.get(PushMessageKey.KEY_NOTI_OPTIONAL_ICON);
            pushMessage.priority = e0.d(data.get(PushMessageKey.KEY_TCM_MSG_PRIORITY));
            pushMessage.sdkShow = e0.d(data.get(PushMessageKey.KEY_TCM_MSG_SDKSHOW));
            pushMessage.floatNotice = data.get(PushMessageKey.KEY_NOTI_FLOAT_NOTICE);
            pushMessage.materialId = data.get(PushMessageKey.KEY_TCM_MATERIAL_ID);
            pushMessage.seq = data.get(PushMessageKey.KEY_TCM_SEQ);
            pushMessage.sourceType = data.get(PushMessageKey.KEY_TCM_SOURCE_TYPE);
            pushMessage.scheduleDate = data.get(PushMessageKey.KEY_TCM_SCHEDULE_DATE);
            pushMessage.tag = data.get(PushMessageKey.KEY_TCM_TAG);
        }
        return pushMessage;
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void r(RemoteMessage remoteMessage) {
        String strB;
        PushLogUtils.LOG.g("Receiving FCM messages by FirebaseMessagingService:" + remoteMessage.getData());
        super.r(remoteMessage);
        Context applicationContext = getApplicationContext();
        a.b(applicationContext);
        PushManager.getInstance().init(applicationContext.getApplicationContext());
        PushMessage pushMessageX = x(remoteMessage);
        PushLogUtils.LOG.g("Receiving FCM messages packageName:" + applicationContext.getPackageName() + "  " + pushMessageX);
        if (w(pushMessageX)) {
            Tracker.getInstance().trackMessage(pushMessageX.messageId, pushMessageX.type, pushMessageX.timeStamp, IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, 0);
            try {
                strB = b.b(pushMessageX);
            } catch (Exception e11) {
                PushLogUtils.LOG.i("Receiving FCM messages to messageContent fail, e:" + e11.getMessage());
                strB = null;
            }
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("message", strB);
            bundle.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, "message");
            ServiceUtils.startTargetIntentService(applicationContext, bundle);
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void t(String str) {
        super.t(str);
        PushLogUtils.LOG.g("FCM MessageService onNewToken: " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        PushUtils.B(str);
    }
}
