package com.transsion.pushui.activity;

import android.R;
import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import com.transsion.json.b;
import com.transsion.push.PushConstants;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.ServiceUtils;
import com.transsion.push.utils.StatusBarUtils;
import com.transsion.push.utils.r;
import qk.a;

/* JADX INFO: loaded from: classes6.dex */
public class TransparentActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            try {
                a.b(getApplicationContext());
                Tracker.getInstance().init();
                StatusBarUtils.setStatusBarColor(this, R.color.transparent);
                StatusBarUtils.setStatusBarLightMode(getWindow(), true);
                StatusBarUtils.setNavigationBarColor(this, R.color.transparent);
                StatusBarUtils.setNavigationBarLightMode(this, true);
                if (getIntent().getBooleanExtra(PushConstants.EXTRA_PUSH_NOTI_CLICK, false)) {
                    r.f(getApplicationContext(), getIntent());
                    return;
                }
                String stringExtra = getIntent().getStringExtra("message");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                PushMessage pushMessage = (PushMessage) b.a(stringExtra, PushMessage.class);
                Bundle bundle2 = new Bundle();
                bundle2.putString("message", b.b(pushMessage));
                bundle2.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, "message");
                ServiceUtils.startTargetIntentService(a.a(), bundle2);
            } catch (Exception e11) {
                PushLogUtils.LOG.i("Transparent page exception，e:" + e11.getMessage());
            }
        } finally {
            finish();
        }
    }
}
