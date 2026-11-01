package com.transsion.push.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.service.JobIntentService;
import com.transsion.push.service.PushJobIntentService;
import com.transsion.push.service.PushServiceHelper;

/* JADX INFO: loaded from: classes.dex */
public final class ServiceUtils {
    private static void b(Context context, Intent intent) {
        try {
            JobIntentService.enqueueWork(context, PushJobIntentService.class, 1003, intent.setComponent(new ComponentName(context, (Class<?>) PushJobIntentService.class)));
        } catch (Exception e11) {
            PushLogUtils.LOG.i("start job intent service exception, e:" + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, Intent intent) {
        try {
            PushServiceHelper.f(intent);
        } catch (Exception e11) {
            PushLogUtils.LOG.i("start job intent service exception, e:" + e11.getMessage());
        }
    }

    public static void startJobThread(final Context context, final Bundle bundle) {
        ThreadManager.executeInBackground(new Runnable() { // from class: com.transsion.push.utils.ServiceUtils.1
            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent();
                intent.putExtras(bundle);
                ServiceUtils.c(context, intent);
            }
        });
    }

    public static void startTargetIntentService(Context context, Bundle bundle) {
        Intent intent = new Intent();
        intent.putExtras(bundle);
        b(context, intent);
    }

    public static void startTargetIntentService(PushMessage pushMessage) {
    }
}
