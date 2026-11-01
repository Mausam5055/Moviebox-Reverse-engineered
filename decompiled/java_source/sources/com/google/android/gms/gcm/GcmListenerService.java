package com.google.android.gms.gcm;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import com.transsion.push.PushConstants;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class GcmListenerService extends com.google.android.gms.iid.zze {
    private com.google.android.gms.internal.gcm.zzl zzg = com.google.android.gms.internal.gcm.zzm.zzdk;

    static void zzd(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next != null && next.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    @Override // com.google.android.gms.iid.zze
    public void handleIntent(Intent intent) {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            String strValueOf = String.valueOf(intent.getAction());
            Log.w("GcmListenerService", strValueOf.length() != 0 ? "Unknown intent action: ".concat(strValueOf) : new String("Unknown intent action: "));
        }
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_PUSH_MESSAGE_TYPE);
        if (stringExtra == null) {
            stringExtra = GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE;
        }
        switch (stringExtra) {
            case "deleted_messages":
                onDeletedMessages();
                break;
            case "gcm":
                Bundle extras = intent.getExtras();
                extras.remove(PushConstants.EXTRA_PUSH_MESSAGE_TYPE);
                extras.remove("androidx.contentpager.content.wakelockid");
                if ("1".equals(zzd.zzd(extras, "gcm.n.e")) || zzd.zzd(extras, "gcm.n.icon") != null) {
                    if (!((KeyguardManager) getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
                        int iMyPid = Process.myPid();
                        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses();
                        if (runningAppProcesses != null) {
                            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                                if (runningAppProcessInfo.pid == iMyPid) {
                                    if (runningAppProcessInfo.importance == 100) {
                                        Bundle bundle = new Bundle();
                                        Iterator<String> it = extras.keySet().iterator();
                                        while (it.hasNext()) {
                                            String next = it.next();
                                            String string = extras.getString(next);
                                            if (next.startsWith("gcm.notification.")) {
                                                next = next.replace("gcm.notification.", "gcm.n.");
                                            }
                                            if (next.startsWith("gcm.n.")) {
                                                if (!"gcm.n.e".equals(next)) {
                                                    bundle.putString(next.substring(6), string);
                                                }
                                                it.remove();
                                            }
                                        }
                                        String string2 = bundle.getString("sound2");
                                        if (string2 != null) {
                                            bundle.remove("sound2");
                                            bundle.putString("sound", string2);
                                        }
                                        if (!bundle.isEmpty()) {
                                            extras.putBundle("notification", bundle);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    zzd.zzd(this).zze(extras);
                    break;
                }
                String string3 = extras.getString("from");
                extras.remove("from");
                zzd(extras);
                this.zzg.zzl("onMessageReceived");
                onMessageReceived(string3, extras);
                break;
            case "send_error":
                String stringExtra2 = intent.getStringExtra("google.message_id");
                if (stringExtra2 == null) {
                    stringExtra2 = intent.getStringExtra(PushConstants.EXTRA_PUSH_MESSAGE_ID);
                }
                onSendError(stringExtra2, intent.getStringExtra("error"));
                break;
            case "send_event":
                onMessageSent(intent.getStringExtra("google.message_id"));
                break;
            default:
                Log.w("GcmListenerService", stringExtra.length() != 0 ? "Received message with unknown type: ".concat(stringExtra) : new String("Received message with unknown type: "));
                break;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        com.google.android.gms.internal.gcm.zzm.zzab();
        this.zzg = com.google.android.gms.internal.gcm.zzm.zzdk;
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(String str, Bundle bundle) {
    }

    public void onMessageSent(String str) {
    }

    public void onSendError(String str, String str2) {
    }
}
