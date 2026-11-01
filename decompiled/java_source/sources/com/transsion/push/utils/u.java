package com.transsion.push.utils;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.push.PushConstants;
import com.transsion.push.config.PushRepository;

/* JADX INFO: loaded from: classes6.dex */
public final class u {
    private static boolean a() {
        if (!z.e()) {
            return true;
        }
        try {
            Class.forName("com.transsion.tpush.tpms.PushContentProvider");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean b(Context context) {
        if (!a()) {
            return false;
        }
        try {
            String str = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_FCM_TOKEN, "");
            if (TextUtils.isEmpty(str)) {
                PushLogUtils.LOG.i("update provider active fail, token is empty");
                return false;
            }
            Uri uri = Uri.parse("content://com.transsion.tpush.tpms.PushContentProvider/active");
            ContentResolver contentResolver = context.getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put(PushConstants.PROVIDER_VAID, AthenaAnalytics.H(qk.a.a(), true));
            contentValues.put(PushConstants.PROVIDER_FIELD_PKG, context.getPackageName());
            contentValues.put("appId", PushUtils.e());
            contentValues.put(PushConstants.PROVIDER_FIELD_APP_KEY, PushUtils.f());
            contentValues.put("token", str);
            contentValues.put(PushConstants.PROVIDER_FIELD_UPDATE_TIME, Long.valueOf(System.currentTimeMillis()));
            contentValues.put(PushConstants.PROVIDER_FIELD_NOTICE_ENABLE, Integer.valueOf(NotificationAssistUtils.isOpenNotification(context) ? 1 : 2));
            contentValues.put("sdkVersion", "2.0.2.01");
            contentValues.put(PushConstants.PROVIDER_FIELD_SDK_VERSION_CODE, (Integer) 17004);
            contentResolver.update(uri, contentValues, null, null);
            return true;
        } catch (Exception e11) {
            PushLogUtils.LOG.i("update provider active fail, e:" + e11.getMessage());
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00aa  */
    public static boolean c(Context context) {
        if (!a()) {
            return false;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = context.getContentResolver().query(Uri.parse("content://com.transsion.tpush.tpms.PushContentProvider/config"), new String[]{PushUtils.e()}, null, null, null);
                if (cursorQuery == null || cursorQuery.getCount() <= 0) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return false;
                }
                cursorQuery.moveToNext();
                int i11 = cursorQuery.getInt(cursorQuery.getColumnIndex(PushConstants.PROVIDER_FIELD_DESTROY));
                int i12 = cursorQuery.getInt(cursorQuery.getColumnIndex(PushConstants.PROVIDER_FIELD_SYNC_INFO_INTERVAL));
                PushLogUtils.LOG.g("updateConfig----->destroy:" + i11 + ", interval:" + i12);
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_SELF_DESTROYING, Integer.valueOf(i11));
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_SELF_DESTROYING_INTERVAL, Integer.valueOf(i12));
                cursorQuery.close();
                return true;
            } catch (Exception e11) {
                PushLogUtils.LOG.i("update provider config fail, e:" + e11.getMessage());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return false;
            }
        } catch (Throwable th2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th2;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        throw th2;
    }
}
