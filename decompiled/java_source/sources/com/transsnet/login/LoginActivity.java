package com.transsnet.login;

import ak.x;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.baseui.activity.BaseActivity;
import com.transsnet.login.constant.LoginType;
import com.transsnet.login.email.LoginEmailFragment;
import com.transsnet.login.phone.LoginPhoneFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u000eJ\u0015\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsnet/login/LoginActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lzy/a;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "f0", "()Lzy/a;", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "Lcom/transsnet/login/constant/LoginType;", NativeComponentConstants.KEY_COMPONENT_TYPE, "e0", "(Lcom/transsnet/login/constant/LoginType;)V", "", "a", "Ljava/lang/String;", EventConstants.KEY_SOURCE, "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LoginActivity extends BaseActivity<zy.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String source;

    public final void e0(LoginType type) {
        Intrinsics.h(type, "type");
        Fragment loginEmailFragment = type == LoginType.EMAIL ? new LoginEmailFragment() : new LoginPhoneFragment();
        Bundle bundle = new Bundle();
        bundle.putString(EventConstants.KEY_SOURCE, this.source);
        loginEmailFragment.setArguments(bundle);
        androidx.fragment.app.w wVarP = getSupportFragmentManager().p();
        wVarP.s(R$id.fl_content, loginEmailFragment);
        wVarP.j();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public zy.a getViewBinding() {
        zy.a aVarC = zy.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return !x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        HashMap mapG;
        super.onCreate(savedInstanceState);
        LoginType loginType = LoginType.EMAIL;
        String stringExtra = getIntent().getStringExtra(EventConstants.KEY_SOURCE);
        if (stringExtra != null) {
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            }
        } else {
            stringExtra = null;
        }
        this.source = stringExtra;
        e0(loginType);
    }
}
