package com.transsion.push.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.PushConfig;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.config.PushRepository;
import com.transsion.push.tracker.Tracker;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class PushUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f50916a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static AtomicBoolean f50917b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Map f50918c = new LinkedHashMap<Long, PushMessage>(16, 0.75f, false) { // from class: com.transsion.push.utils.PushUtils.1
        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<Long, PushMessage> entry) {
            return size() > 100;
        }
    };

    public static void A(long j11) {
        String strI = com.transsion.core.utils.f.e(PushConstants.SP_FILENAME).i(PushConstants.SP_KEY_PUSHUI_RETRACE_MESSAGE_IDS);
        if (strI.contains(String.valueOf(j11))) {
            return;
        }
        String strSubstring = strI + " " + j11;
        if (strSubstring.length() > 1024) {
            strSubstring = strSubstring.substring(256);
        }
        try {
            com.transsion.core.utils.f.e(PushConstants.SP_FILENAME).p(PushConstants.SP_KEY_PUSHUI_RETRACE_MESSAGE_IDS, strSubstring);
        } catch (Exception unused) {
        }
    }

    public static void B(String str) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, "token");
            bundle.putString(PushConstants.EXTRA_TOKEN, str);
            Tracker.getInstance().trackTokenUpdateInit();
            ServiceUtils.startJobThread(qk.a.a(), bundle);
        } catch (Exception unused) {
        }
    }

    public static boolean a(PushMessage pushMessage, int i11) {
        if (pushMessage == null) {
            PushLogUtils.LOG.z("Transparent page, empty message");
            return false;
        }
        int i12 = pushMessage.type;
        if (i12 != 1 && i12 != 5 && i12 != 2 && i12 != 6 && i12 != 7) {
            PushLogUtils.LOG.i("Message type is not supported");
            if (i11 == 0) {
                Tracker.getInstance().trackMessage(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, "fail", 4);
            } else {
                Tracker.getInstance().trackTarget(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, pushMessage.rpkg, "fail");
            }
            return false;
        }
        if (!k(pushMessage.messageId)) {
            if (i11 == 1 || f0.a(pushMessage.packageName)) {
                return true;
            }
            PushLogUtils.LOG.z("Package Name No longer appMap");
            Tracker.getInstance().trackMessage(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, "fail", 1);
            return false;
        }
        if (i11 == 1 && !TextUtils.isEmpty(pushMessage.packageName) && !pushMessage.packageName.equals(pushMessage.rpkg)) {
            Tracker.getInstance().trackTarget(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, pushMessage.rpkg, "handled");
        }
        PushLogUtils.LOG.g("The message has been handled, msgId:" + pushMessage.messageId + ", rpkg:" + pushMessage.rpkg);
        return false;
    }

    public static void b(long j11) {
        f50918c.remove(Long.valueOf(j11));
    }

    public static Bitmap c(PackageManager packageManager, String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return d(packageManager, str);
        }
        try {
            return ((BitmapDrawable) packageManager.getApplicationIcon(str)).getBitmap();
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static Bitmap d(PackageManager packageManager, String str) {
        try {
            Drawable applicationIcon = packageManager.getApplicationIcon(str);
            if (applicationIcon instanceof BitmapDrawable) {
                return ((BitmapDrawable) applicationIcon).getBitmap();
            }
            if (!com.google.firebase.messaging.c.a(applicationIcon)) {
                return null;
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{b0.a(applicationIcon).getBackground(), b0.a(applicationIcon).getForeground()});
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(layerDrawable.getIntrinsicWidth(), layerDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            layerDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            layerDrawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String e() {
        String string = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_APP_ID, "");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            string = qk.a.a().getPackageManager().getApplicationInfo(qk.a.a().getPackageName(), 128).metaData.getString(PushConstants.TPUSH_APP_ID);
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
        }
        if (!TextUtils.isEmpty(string)) {
            PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_ID, string);
        }
        return TextUtils.isEmpty(string) ? "" : string;
    }

    public static String f() {
        String string = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_APP_KEY, "");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            string = qk.a.a().getPackageManager().getApplicationInfo(qk.a.a().getPackageName(), 128).metaData.getString(PushConstants.TPUSH_APP_KEY);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        if (!TextUtils.isEmpty(string)) {
            PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_KEY, string);
        }
        return TextUtils.isEmpty(string) ? "" : string;
    }

    public static Bitmap g(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                return c(packageManager, str);
            }
        } catch (Exception e11) {
            PushLogUtils.LOG.g("getApplicationIcon e" + e11);
        }
        PushLogUtils.LOG.g("getApplicationIcon id error");
        return null;
    }

    public static String h(Context context, PushMessage pushMessage) {
        if (!TextUtils.isEmpty(pushMessage.appName)) {
            return pushMessage.appName;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager != null ? packageManager.getPackageInfo(pushMessage.packageName, 0).applicationInfo.loadLabel(packageManager).toString() : "";
        } catch (Exception e11) {
            e11.printStackTrace();
            return "";
        }
    }

    public static PushMessage i(Intent intent) {
        if (intent == null) {
            return null;
        }
        try {
            return (PushMessage) com.transsion.json.b.a(intent.getStringExtra("message"), PushMessage.class);
        } catch (Exception unused) {
            PushLogUtils.LOG.i("Notification service message is empty");
            return null;
        }
    }

    public static boolean j(long j11) {
        try {
            String strI = com.transsion.core.utils.f.e(PushConstants.SP_FILENAME).i(PushConstants.SP_KEY_PUSHUI_CLICK_MESSAGE_IDS);
            if (TextUtils.isEmpty(strI)) {
                return false;
            }
            return strI.contains(String.valueOf(j11));
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean k(long j11) {
        try {
            String strI = com.transsion.core.utils.f.e(PushConstants.SP_FILENAME).i(PushConstants.SP_KEY_PUSHUI_MESSAGE_IDS);
            if (TextUtils.isEmpty(strI)) {
                return false;
            }
            return strI.contains(String.valueOf(j11));
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean l(long j11) {
        try {
            String strI = com.transsion.core.utils.f.e(PushConstants.SP_FILENAME).i(PushConstants.SP_KEY_PUSHUI_RETRACE_MESSAGE_IDS);
            if (TextUtils.isEmpty(strI)) {
                return false;
            }
            return strI.contains(String.valueOf(j11));
        } catch (Exception unused) {
            return false;
        }
    }

    public static PushMessage m(long j11) {
        if (Build.VERSION.SDK_INT >= 24) {
            return (PushMessage) f50918c.getOrDefault(Long.valueOf(j11), null);
        }
        return null;
    }

    public static void n() {
        boolean z10;
        PackageManager.NameNotFoundException nameNotFoundException;
        String str;
        boolean z11;
        String string;
        String string2 = "";
        boolean z12 = false;
        try {
            ApplicationInfo applicationInfo = qk.a.a().getPackageManager().getApplicationInfo(qk.a.a().getPackageName(), 128);
            z11 = applicationInfo.metaData.getBoolean(PushConstants.TPUSH_OPEN_DEBUG);
            try {
                string = applicationInfo.metaData.getString(PushConstants.TPUSH_APP_ID);
                try {
                    string2 = applicationInfo.metaData.getString(PushConstants.TPUSH_APP_KEY);
                    z12 = applicationInfo.metaData.getBoolean(PushConstants.TPUSH_TEST_ENV);
                } catch (PackageManager.NameNotFoundException e11) {
                    str = string2;
                    string2 = string;
                    z10 = z11;
                    nameNotFoundException = e11;
                    nameNotFoundException.printStackTrace();
                    z11 = z10;
                    string = string2;
                    string2 = str;
                }
            } catch (PackageManager.NameNotFoundException e12) {
                e = e12;
                z10 = z11;
                nameNotFoundException = e;
                str = "";
                nameNotFoundException.printStackTrace();
                z11 = z10;
                string = string2;
                string2 = str;
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_ID, string);
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_KEY, string2);
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_ISDEBUG, Boolean.valueOf(z11));
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IS_TEST_ENV, Boolean.valueOf(z12));
            }
        } catch (PackageManager.NameNotFoundException e13) {
            e = e13;
            z10 = false;
        }
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_ID, string);
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_KEY, string2);
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_ISDEBUG, Boolean.valueOf(z11));
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IS_TEST_ENV, Boolean.valueOf(z12));
    }

    public static boolean o() {
        return ((Boolean) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_ISDEBUG, Boolean.FALSE)).booleanValue();
    }

    public static boolean p() {
        return TextUtils.isEmpty((String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, "")) || !PushRepository.getInstance().isReported();
    }

    public static boolean q() {
        long reportTime = PushRepository.getInstance().getReportTime();
        return System.currentTimeMillis() - reportTime > 0 || System.currentTimeMillis() - (reportTime - v.b()) < 0;
    }

    public static boolean r() {
        return System.currentTimeMillis() - PushRepository.getInstance().getLastTpmsReportTime() > 0;
    }

    public static boolean s() {
        return ((Boolean) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_IS_TEST_ENV, Boolean.FALSE)).booleanValue();
    }

    public static boolean t() {
        long jLongValue = ((Long) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_TRACKER_REPORT_TIME, -1L)).longValue();
        return System.currentTimeMillis() - jLongValue > 0 || System.currentTimeMillis() - (jLongValue - v.f()) < 0;
    }

    public static boolean u(PushMessage pushMessage) {
        int i11 = pushMessage.type;
        if (i11 != 7) {
            if (i11 != 1) {
                return false;
            }
            boolean zL = l(pushMessage.messageId);
            if (zL) {
                Tracker.getInstance().trackShow(pushMessage.messageId, 7, String.valueOf(System.currentTimeMillis()), NotificationAssistUtils.isOpenNotification(qk.a.a()), 0);
            }
            return zL;
        }
        boolean zK = k(pushMessage.retraceMsgId);
        boolean zJ = j(pushMessage.retraceMsgId);
        if (zK && !zJ) {
            r.a(pushMessage.retraceMsgId);
            try {
                Tracker.getInstance().trackShow(pushMessage.retraceMsgId, 7, String.valueOf(System.currentTimeMillis()), NotificationAssistUtils.isOpenNotification(qk.a.a()), 0);
            } catch (Exception unused) {
            }
        }
        A(pushMessage.retraceMsgId);
        return zK && !zJ;
    }

    public static void v(PushConfig pushConfig) {
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_CLOSE_JOB_SERVICE, Boolean.valueOf(pushConfig.isCloseJobService()));
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_CHECK_INTERVAL, Integer.valueOf(Math.min(Math.max(pushConfig.getCheckInterval(), DescriptorProtos$Edition.EDITION_LEGACY_VALUE), 43200)));
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_MOBILE_UPLOAD_INTERVAL, Integer.valueOf(Math.min(Math.max(pushConfig.getMobileUploadInterval(), 7200), 43200)));
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_UPLOAD_INTERVAL, Integer.valueOf(Math.min(Math.max(pushConfig.getUploadInterval(), 7200), 43200)));
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_GROUP_ID, pushConfig.getGroupId());
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_MAX_NOTIFICATION_COUNT, Integer.valueOf(Math.min(pushConfig.getMaxNotificationCount(), 60)));
    }

    public static void w() {
        try {
            String str = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, "");
            String str2 = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_FCM_TOKEN, "");
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (f50917b.get()) {
                    return;
                }
                if (PushManager.getInstance().getPushListener() != null) {
                    PushManager.getInstance().getPushListener().onSdkInitSuccess(str, str2);
                    f50917b.set(true);
                } else {
                    Log.e(PushLogUtils.TAG, "tpush listener is not registered");
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void x(long j11) {
        try {
            String strI = com.transsion.core.utils.f.e(PushConstants.SP_FILENAME).i(PushConstants.SP_KEY_PUSHUI_CLICK_MESSAGE_IDS);
            if (strI.contains(String.valueOf(j11))) {
                return;
            }
            String strSubstring = strI + " " + j11;
            if (strSubstring.length() > 1024) {
                strSubstring = strSubstring.substring(256);
            }
            com.transsion.core.utils.f.e(PushConstants.SP_FILENAME).p(PushConstants.SP_KEY_PUSHUI_CLICK_MESSAGE_IDS, strSubstring);
        } catch (Exception unused) {
        }
    }

    public static void y(long j11) {
        String strI = com.transsion.core.utils.f.e(PushConstants.SP_FILENAME).i(PushConstants.SP_KEY_PUSHUI_MESSAGE_IDS);
        if (strI.contains(String.valueOf(j11))) {
            return;
        }
        String strSubstring = strI + " " + j11;
        if (strSubstring.length() > 1024) {
            strSubstring = strSubstring.substring(256);
        }
        try {
            com.transsion.core.utils.f.e(PushConstants.SP_FILENAME).p(PushConstants.SP_KEY_PUSHUI_MESSAGE_IDS, strSubstring);
        } catch (Exception unused) {
        }
    }

    public static void z(PushMessage pushMessage) {
        f50918c.put(Long.valueOf(pushMessage.getMessageId()), pushMessage);
    }
}
