package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.i0;
import com.google.firebase.messaging.m;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseInstanceIdReceiver extends CloudMessagingReceiver {
    private static Intent a(Context context, String str, Bundle bundle) {
        return new Intent(str).putExtras(bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    protected int onMessageReceive(Context context, CloudMessage cloudMessage) {
        try {
            return ((Integer) Tasks.await(new m(context).k(cloudMessage.getIntent()))).intValue();
        } catch (InterruptedException | ExecutionException e11) {
            Log.e("FirebaseMessaging", "Failed to send message to service.", e11);
            return 500;
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    protected void onNotificationDismissed(Context context, Bundle bundle) {
        Intent intentA = a(context, CloudMessagingReceiver.IntentActionKeys.NOTIFICATION_DISMISS, bundle);
        if (i0.D(intentA)) {
            i0.v(intentA);
        }
    }
}
