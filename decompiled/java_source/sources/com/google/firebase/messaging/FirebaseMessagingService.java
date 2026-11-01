package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.transsion.push.PushConstants;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseMessagingService extends EnhancedIntentService {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Queue f31984g = new ArrayDeque(10);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Rpc f31985f;

    private boolean l(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Queue queue = f31984g;
        if (!queue.contains(str)) {
            if (queue.size() >= 10) {
                queue.remove();
            }
            queue.add(str);
            return false;
        }
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            return true;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Received duplicate message: ");
        sb2.append(str);
        return true;
    }

    private void m(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        extras.remove("androidx.content.wakelockid");
        if (k0.t(extras)) {
            k0 k0Var = new k0(extras);
            ExecutorService executorServiceE = n.e();
            try {
                if (new f(this, k0Var, executorServiceE).a()) {
                    executorServiceE.shutdown();
                    return;
                } else {
                    executorServiceE.shutdown();
                    if (i0.D(intent)) {
                        i0.w(intent);
                    }
                }
            } catch (Throwable th2) {
                executorServiceE.shutdown();
                throw th2;
            }
        }
        r(new RemoteMessage(extras));
    }

    private String n(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra(PushConstants.EXTRA_PUSH_MESSAGE_ID) : stringExtra;
    }

    private Rpc o(Context context) {
        if (this.f31985f == null) {
            this.f31985f = new Rpc(context.getApplicationContext());
        }
        return this.f31985f;
    }

    private void p(Intent intent) {
        if (!l(intent.getStringExtra("google.message_id"))) {
            v(intent);
        }
        o(this).messageHandled(new CloudMessage(intent));
    }

    private void v(Intent intent) {
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_PUSH_MESSAGE_TYPE);
        if (stringExtra == null) {
            stringExtra = GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE;
        }
        switch (stringExtra) {
            case "deleted_messages":
                q();
                break;
            case "gcm":
                i0.y(intent);
                m(intent);
                break;
            case "send_error":
                u(n(intent), new SendException(intent.getStringExtra("error")));
                break;
            case "send_event":
                s(intent.getStringExtra("google.message_id"));
                break;
            default:
                Log.w("FirebaseMessaging", "Received message with unknown type: " + stringExtra);
                break;
        }
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    protected Intent e(Intent intent) {
        return v0.b().c();
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    public void f(Intent intent) {
        String action = intent.getAction();
        if ("com.google.android.c2dm.intent.RECEIVE".equals(action) || "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(action)) {
            p(intent);
        } else {
            if ("com.google.firebase.messaging.NEW_TOKEN".equals(action)) {
                t(intent.getStringExtra("token"));
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unknown intent action: ");
            sb2.append(intent.getAction());
        }
    }

    public void q() {
    }

    public void r(RemoteMessage remoteMessage) {
    }

    public void s(String str) {
    }

    public void t(String str) {
    }

    public void u(String str, Exception exc) {
    }
}
