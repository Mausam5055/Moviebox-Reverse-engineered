package com.transsion.push.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.transsion.push.PushConstants;
import com.transsion.push.utils.PushLogUtils;

/* JADX INFO: loaded from: classes6.dex */
public abstract class IPushBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f50793a;

    public abstract void onMessageReceive(Context context, long j11, String str);

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            PushLogUtils.LOG.g(context.getPackageName() + " push receiver action:" + intent.getAction());
            if (PushConstants.ACTION_PUSH_RECEIVER.equals(intent.getAction())) {
                long longExtra = intent.getLongExtra(PushConstants.EXTRA_PUSH_MESSAGE_ID, -1L);
                String stringExtra = intent.getStringExtra("trans_data");
                if (longExtra >= 0 && !TextUtils.isEmpty(stringExtra)) {
                    onMessageReceive(context, longExtra, stringExtra);
                    return;
                }
                PushLogUtils.LOG.z("msgId is -1 or transData is null");
                return;
            }
            if (!PushConstants.ACTION_PUSH_INIT_COMPLETE.equals(intent.getAction()) || f50793a) {
                return;
            }
            f50793a = true;
            PushLogUtils.LOG.g(context.getPackageName() + " init complete");
            onSdkInitSuccess(context, intent.getStringExtra(PushConstants.EXTRA_KEY_CLIENT_ID), intent.getStringExtra(PushConstants.EXTRA_KEY_TOKEN));
        } catch (Exception e11) {
            PushLogUtils.LOG.i("onReceive fail, e:" + e11.getMessage());
        }
    }

    public abstract void onSdkInitSuccess(Context context, String str, String str2);
}
