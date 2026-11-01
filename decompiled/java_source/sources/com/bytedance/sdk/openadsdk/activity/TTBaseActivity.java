package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Build;
import com.bytedance.sdk.component.utils.sU;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class TTBaseActivity extends Activity {
    protected boolean Jcg = false;

    @Override // android.app.Activity
    public void finish() {
        try {
            super.finish();
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (Build.VERSION.SDK_INT < 33) {
            super.onPause();
            return;
        }
        try {
            try {
                super.onPause();
            } catch (Exception unused) {
            }
        } catch (IllegalArgumentException unused2) {
            Field declaredField = Activity.class.getDeclaredField("mCalled");
            declaredField.setAccessible(true);
            declaredField.set(this, Boolean.TRUE);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 > 28 || i11 < 24) {
            super.onResume();
            return;
        }
        try {
            super.onResume();
        } catch (IllegalArgumentException e11) {
            sU.Sj("TTBaseActivity", "super.onResume() run fail", e11);
            try {
                Field declaredField = Activity.class.getDeclaredField("mCalled");
                declaredField.setAccessible(true);
                declaredField.set(this, Boolean.TRUE);
            } catch (Exception e12) {
                sU.Sj("TTBaseActivity", "onResume set mCalled fail", e12);
            }
        }
    }

    public void sP(boolean z10) {
        this.Jcg = z10;
    }
}
