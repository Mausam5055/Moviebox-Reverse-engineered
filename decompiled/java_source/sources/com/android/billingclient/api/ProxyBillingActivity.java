package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.zzb;

/* JADX INFO: loaded from: classes2.dex */
@UsedByReflection("PlatformActivityProxy")
public class ProxyBillingActivity extends ComponentActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.activity.result.b f19028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ResultReceiver f19029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ResultReceiver f19030c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ResultReceiver f19031d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f19032e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f19033f;

    private Intent F(String str) {
        Intent intent = new Intent("com.android.vending.billing.ALTERNATIVE_BILLING");
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra("ALTERNATIVE_BILLING_USER_CHOICE_DATA", str);
        return intent;
    }

    private Intent G() {
        getApplicationContext().getPackageName();
        Intent intent = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    void H(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        int iZzc = zzb.zzc(data, "ProxyBillingActivity");
        ResultReceiver resultReceiver = this.f19031d;
        if (resultReceiver != null) {
            resultReceiver.send(iZzc, data == null ? null : data.getExtras());
        }
        if (activityResult.getResultCode() != -1 || iZzc != 0) {
            zzb.zzk("ProxyBillingActivity", "Alternative billing only dialog finished with resultCode " + activityResult.getResultCode() + " and billing's responseCode: " + iZzc);
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i11, int i12, Intent intent) {
        Intent intentG;
        super.onActivityResult(i11, i12, intent);
        if (i11 == 100 || i11 == 110) {
            int iZzc = zzb.zzc(intent, "ProxyBillingActivity");
            if (i12 != -1) {
                zzb.zzk("ProxyBillingActivity", "Activity finished with resultCode " + i12 + " and billing's responseCode: " + iZzc);
            } else if (iZzc != 0) {
                i12 = -1;
                zzb.zzk("ProxyBillingActivity", "Activity finished with resultCode " + i12 + " and billing's responseCode: " + iZzc);
            } else {
                iZzc = 0;
            }
            ResultReceiver resultReceiver = this.f19029b;
            if (resultReceiver != null) {
                resultReceiver.send(iZzc, intent != null ? intent.getExtras() : null);
            } else {
                if (intent == null) {
                    intentG = G();
                } else if (intent.getExtras() != null) {
                    String string = intent.getExtras().getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
                    if (string != null) {
                        intentG = F(string);
                        intentG.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                    } else {
                        intentG = G();
                        intentG.putExtras(intent.getExtras());
                        intentG.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                    }
                } else {
                    intentG = G();
                    zzb.zzk("ProxyBillingActivity", "Got null bundle!");
                    intentG.putExtra("RESPONSE_CODE", 6);
                    intentG.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    n.a aVarC = n.c();
                    aVarC.c(6);
                    aVarC.b("An internal error occurred.");
                    intentG.putExtra("FAILURE_LOGGING_PAYLOAD", m0.a(22, 2, aVarC.a()).zzc());
                    intentG.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                }
                if (i11 == 110) {
                    intentG.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                }
                sendBroadcast(intentG);
            }
        } else if (i11 == 101) {
            int iZza = zzb.zza(intent, "ProxyBillingActivity");
            ResultReceiver resultReceiver2 = this.f19030c;
            if (resultReceiver2 != null) {
                resultReceiver2.send(iZza, intent != null ? intent.getExtras() : null);
            }
        } else {
            zzb.zzk("ProxyBillingActivity", "Got onActivityResult with wrong requestCode: " + i11 + "; skipping...");
        }
        this.f19032e = false;
        finish();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        int i11;
        PendingIntent pendingIntent;
        int i12;
        super.onCreate(bundle);
        this.f19028a = registerForActivityResult(new f.k(), new androidx.activity.result.a() { // from class: com.android.billingclient.api.d1
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                this.f19048a.H((ActivityResult) obj);
            }
        });
        if (bundle != null) {
            zzb.zzj("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            this.f19032e = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
            if (bundle.containsKey("result_receiver")) {
                this.f19029b = (ResultReceiver) bundle.getParcelable("result_receiver");
            } else if (bundle.containsKey("in_app_message_result_receiver")) {
                this.f19030c = (ResultReceiver) bundle.getParcelable("in_app_message_result_receiver");
            } else if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
                this.f19031d = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
            }
            this.f19033f = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
            return;
        }
        zzb.zzj("ProxyBillingActivity", "Launching Play Store billing flow");
        if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
            PendingIntent pendingIntent2 = (PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
            this.f19031d = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
            this.f19028a.a(new IntentSenderRequest.a(pendingIntent2).a());
            return;
        }
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                this.f19033f = true;
                i12 = 110;
                i11 = i12;
            } else {
                i11 = 100;
            }
        } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
            this.f19029b = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
            i11 = 100;
        } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
            this.f19030c = (ResultReceiver) getIntent().getParcelableExtra("in_app_message_result_receiver");
            i12 = 101;
            i11 = i12;
        } else {
            i11 = 100;
            pendingIntent = null;
        }
        try {
            this.f19032e = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), i11, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException e11) {
            zzb.zzl("ProxyBillingActivity", "Got exception while trying to start a purchase flow.", e11);
            ResultReceiver resultReceiver = this.f19029b;
            if (resultReceiver != null) {
                resultReceiver.send(6, null);
            } else {
                ResultReceiver resultReceiver2 = this.f19030c;
                if (resultReceiver2 != null) {
                    resultReceiver2.send(0, null);
                } else {
                    Intent intentG = G();
                    if (this.f19033f) {
                        intentG.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                    }
                    intentG.putExtra("RESPONSE_CODE", 6);
                    intentG.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    sendBroadcast(intentG);
                }
            }
            this.f19032e = false;
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f19032e) {
            Intent intentG = G();
            intentG.putExtra("RESPONSE_CODE", 1);
            intentG.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            sendBroadcast(intentG);
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f19029b;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f19030c;
        if (resultReceiver2 != null) {
            bundle.putParcelable("in_app_message_result_receiver", resultReceiver2);
        }
        ResultReceiver resultReceiver3 = this.f19031d;
        if (resultReceiver3 != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver3);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f19032e);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.f19033f);
    }
}
