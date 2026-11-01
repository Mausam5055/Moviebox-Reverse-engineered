package com.transsion.usercenter.kids;

import android.os.Bundle;
import android.view.View;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.kids.PinManagementActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.i;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import lg.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/transsion/usercenter/kids/PinManagementActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lfw/i;", "<init>", "()V", "f0", "()Lfw/i;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "", "isStatusDark", "()Z", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PinManagementActivity extends BaseActivity<i> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(PinManagementActivity pinManagementActivity, View view) {
        pinManagementActivity.finish();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public i getViewBinding() {
        i iVarC = i.c(getLayoutInflater());
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        a.C0828a.f(a.f68839a, "PinManagementActivity", "enter PIN management.", false, 4, null);
        String stringExtra = getIntent().getStringExtra("arg_kids_id");
        if (stringExtra == null) {
            stringExtra = "";
        }
        ((i) getMViewBinding()).f62689d.setOnClickListener(new View.OnClickListener() { // from class: pw.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PinManagementActivity.g0(this.f72517a, view);
            }
        });
        if (savedInstanceState == null) {
            getSupportFragmentManager().p().s(R$id.flContainer, PinManagementFragment.INSTANCE.a(stringExtra)).i();
        }
    }
}
