package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.sef;

/* JADX INFO: loaded from: classes2.dex */
public class TTAdActivity extends TTBaseActivity {
    private sP Sj;

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        sP sPVar = this.Sj;
        if (sPVar != null) {
            sPVar.Sj((Activity) this);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        sP sPVar = this.Sj;
        if (sPVar == null) {
            super.onBackPressed();
        } else {
            sPVar.HiB();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        com.bytedance.sdk.openadsdk.Sj.HiB.Sj sjTKC = kF.Sj().TKC();
        com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVarEjP = kF.Sj().EjP();
        sU sUVarSj = com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(getIntent(), bundle, (com.bytedance.sdk.openadsdk.core.aa.EjP.sP) null);
        if (sUVarSj == null) {
            finish();
            return;
        }
        sP sPVar = new sP(this, sUVarSj);
        this.Sj = sPVar;
        sPVar.Sj(this, bundle, sjTKC, sPVarEjP);
        com.bytedance.sdk.openadsdk.utils.sP.Sj(sUVarSj);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        sP sPVar = this.Sj;
        if (sPVar != null) {
            sPVar.HiB(this);
        }
        kF.Sj().Sj((com.bytedance.sdk.openadsdk.Sj.HiB.Sj) null);
        kF.Sj().Sj((com.bytedance.sdk.openadsdk.Sj.TKC.sP) null);
        sef.Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        sP sPVar = this.Sj;
        if (sPVar != null) {
            sPVar.TKC(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        sP sPVar = this.Sj;
        if (sPVar != null) {
            sPVar.sP(this);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        sP sPVar = this.Sj;
        if (sPVar != null) {
            sPVar.Sj(this, bundle);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        sP sPVar = this.Sj;
        if (sPVar != null) {
            sPVar.Sj(this);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        sP sPVar = this.Sj;
        if (sPVar != null) {
            sPVar.EjP(this);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        sP sPVar = this.Sj;
        if (sPVar != null) {
            sPVar.Sj(z10);
        }
    }
}
