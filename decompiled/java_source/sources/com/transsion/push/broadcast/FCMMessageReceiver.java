package com.transsion.push.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.transsion.json.b;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.bean.PushMessageKey;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.ServiceUtils;
import com.transsion.push.utils.e0;
import qk.a;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class FCMMessageReceiver extends BroadcastReceiver {
    private boolean a(PushMessage pushMessage) {
        return pushMessage.messageId > 0 && pushMessage.type > 0 && !TextUtils.isEmpty(pushMessage.pkgId);
    }

    private PushMessage b(Bundle bundle) {
        PushMessage pushMessage = new PushMessage();
        pushMessage.messageId = e0.e(bundle.getString(PushMessageKey.KEY_TCM_MSG_ID));
        pushMessage.type = e0.d(bundle.getString(PushMessageKey.KEY_TCM_MSG_TYPE));
        pushMessage.pkgId = bundle.getString(PushMessageKey.KEY_TCM_MSG_PKG);
        pushMessage.packageName = bundle.getString(PushMessageKey.KEY_TCM_MSG_PKGNAME);
        try {
            pushMessage.rpkg = a.a().getPackageName();
        } catch (Exception unused) {
            pushMessage.rpkg = "";
        }
        pushMessage.notiType = e0.d(bundle.getString(PushMessageKey.KEY_NOTI_TYPE));
        pushMessage.notiExType = e0.c(bundle.getString(PushMessageKey.KEY_NOTI_EX_TYPE));
        pushMessage.msgTtl = e0.d(bundle.getString(PushMessageKey.KEY_TCM_MSG_TTL));
        pushMessage.ignoreExpire = e0.d(bundle.getString(PushMessageKey.KEY_NOTI_IGNORE_EXPIRE));
        pushMessage.groupId = bundle.getString(PushMessageKey.KEY_APP_GROUP_ID);
        pushMessage.groupMaxCount = bundle.getString(PushMessageKey.KEY_APP_GROUP_MAX_COUNT);
        pushMessage.notiTitle = bundle.getString(PushMessageKey.KEY_NOTI_TITLE);
        pushMessage.notiDes = bundle.getString(PushMessageKey.KEY_NOTI_DESC);
        pushMessage.notiImg = bundle.getString(PushMessageKey.KEY_NOTI_IMG);
        pushMessage.notiIcon = bundle.getString(PushMessageKey.KEY_NOTI_ICON);
        pushMessage.notiBtn = bundle.getString(PushMessageKey.KEY_NOTI_BTN);
        pushMessage.notiImgEx = bundle.getString(PushMessageKey.KEY_NOTI_IMG_EX);
        pushMessage.notiTitleEx = bundle.getString(PushMessageKey.KEY_NOTI_TITLE_EX);
        pushMessage.notiTxtEx = bundle.getString(PushMessageKey.KEY_NOTI_TXT_EX);
        pushMessage.notiOpenType = e0.d(bundle.getString(PushMessageKey.KEY_NOTI_OPEN_TYPE));
        pushMessage.notiOpenContent = bundle.getString(PushMessageKey.KEY_NOTI_OPEN_CONTENT);
        pushMessage.transData = e0.b(bundle.getString("trans_data"));
        pushMessage.timeStamp = bundle.getString(PushMessageKey.KEY_TCM_MSG_TIMESTAMP);
        pushMessage.notiSmallIcon = bundle.getString(PushMessageKey.KEY_NOTI_SMALL_ICON);
        pushMessage.displayPolicy = e0.d(bundle.getString(PushMessageKey.KEY_DISPLAY_POLICY));
        pushMessage.appName = bundle.getString("app_name");
        pushMessage.layoutStyleId = e0.d(bundle.getString(PushMessageKey.KEY_APP_LAYOUT_STYLE_ID));
        pushMessage.channelId = bundle.getString(PushMessageKey.KEY_APP_CHANNEL_ID);
        pushMessage.channelName = bundle.getString(PushMessageKey.KEY_APP_CHANNEL_NAME);
        pushMessage.iconColor = bundle.getString(PushMessageKey.KEY_NOTI_SMALL_ICON_COLOR);
        pushMessage.impUrlList = bundle.getString(PushMessageKey.KEY_NOTI_IMP_URLS);
        pushMessage.clickUrlList = bundle.getString(PushMessageKey.KEY_NOTI_CLICK_URLS);
        pushMessage.isHeadsUp = e0.d(bundle.getString(PushMessageKey.KEY_NOTI_IS_HEADSUP));
        pushMessage.retraceMsgId = e0.e(bundle.getString(PushMessageKey.KEY_NOTI_RETRACE_MSG_ID));
        pushMessage.notiExtensionBtn = bundle.getString(PushMessageKey.KEY_NOTI_BTN_EX);
        pushMessage.notiBtnBgColor = bundle.getString(PushMessageKey.KEY_NOTI_BTN_BG_COLOR);
        pushMessage.notiBtnTxtColor = bundle.getString(PushMessageKey.KEY_NOTI_BTN_WORD_COLOR);
        pushMessage.notiOptionalIcon = bundle.getString(PushMessageKey.KEY_NOTI_OPTIONAL_ICON);
        pushMessage.priority = e0.d(bundle.getString(PushMessageKey.KEY_TCM_MSG_PRIORITY));
        pushMessage.sdkShow = e0.d(bundle.getString(PushMessageKey.KEY_TCM_MSG_SDKSHOW));
        pushMessage.floatNotice = bundle.getString(PushMessageKey.KEY_NOTI_FLOAT_NOTICE);
        pushMessage.materialId = bundle.getString(PushMessageKey.KEY_TCM_MATERIAL_ID);
        pushMessage.seq = bundle.getString(PushMessageKey.KEY_TCM_SEQ);
        pushMessage.sourceType = bundle.getString(PushMessageKey.KEY_TCM_SOURCE_TYPE);
        pushMessage.scheduleDate = bundle.getString(PushMessageKey.KEY_TCM_SCHEDULE_DATE);
        pushMessage.tag = bundle.getString(PushMessageKey.KEY_TCM_TAG);
        return pushMessage;
    }

    private static boolean c(Intent intent) {
        return "com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction()) || "com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction());
    }

    private void d(Context context, Intent intent) {
        String strB;
        PushManager.getInstance().init(context.getApplicationContext());
        Tracker.getInstance().trackBroadcastInfoeye();
        if (intent == null || intent.getExtras() == null || !c(intent)) {
            return;
        }
        Tracker.getInstance().trackBroadcastGcmInfoeye();
        PushMessage pushMessageB = b(intent.getExtras());
        PushLogUtils.LOG.g("Receiving FCM messages packageName:" + context.getPackageName() + "  " + pushMessageB);
        if (!a(pushMessageB)) {
            if (isOrderedBroadcast()) {
                setResultCode(-1);
                return;
            }
            return;
        }
        if (isOrderedBroadcast()) {
            abortBroadcast();
            setResultCode(-1);
        }
        Tracker.getInstance().trackMessage(pushMessageB.messageId, pushMessageB.type, pushMessageB.timeStamp, IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, 0);
        try {
            strB = b.b(pushMessageB);
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
        ServiceUtils.startTargetIntentService(context.getApplicationContext(), bundle);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        a.b(context.getApplicationContext());
        d(context, intent);
    }
}
