package com.transsion.usercenter.profile.see;

import ak.x;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$string;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.b1;
import java.lang.reflect.InvocationTargetException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 02\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u0007J\u000f\u0010\u0010\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001a\u0010\u0018J\u0015\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0007R\u0018\u0010\"\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001d\u0010+\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.¨\u00062"}, d2 = {"Lcom/transsion/usercenter/profile/see/ProfileSeeActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lfw/b1;", "<init>", "()V", "", "H0", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "I0", "()Lfw/b1;", "i0", "o0", "p0", "n0", "retryLoadData", "s0", "onBackPressed", "", "isTranslucent", "()Z", "isChangeStatusBar", "isStatusDark", "", "count", "K0", "(I)V", "getPageName", "i", "Ljava/lang/String;", "mUserId", "j", "I", "mWant2SeeCount", "Lcom/transsnet/loginapi/ILoginApi;", CampaignEx.JSON_KEY_AD_K, "Lkotlin/Lazy;", "G0", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;", "l", "Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;", "target", "m", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ProfileSeeActivity extends BaseNewActivity<b1> {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public String mUserId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private int mWant2SeeCount;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.see.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ProfileSeeActivity.J0();
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private ProfileSeeListFragment target;

    private final ILoginApi G0() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    private final String H0() {
        UserInfo userInfoI;
        String str = this.mUserId;
        if (str != null && str.length() != 0) {
            String str2 = this.mUserId;
            ILoginApi iLoginApiG0 = G0();
            if (!Intrinsics.c(str2, (iLoginApiG0 == null || (userInfoI = iLoginApiG0.i()) == null) ? null : userInfoI.getUserId())) {
                String string = getString(R$string.profile_list);
                Intrinsics.e(string);
                return string;
            }
        }
        String string2 = getString(R$string.profile_your_list);
        Intrinsics.e(string2);
        return string2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi J0() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: I0, reason: merged with bridge method [inline-methods] */
    public b1 getViewBinding() {
        b1 b1VarC = b1.c(getLayoutInflater());
        Intrinsics.g(b1VarC, "inflate(...)");
        return b1VarC;
    }

    public final void K0(int count) {
        if (this.mWant2SeeCount < 0) {
            count = 0;
        }
        this.mWant2SeeCount = count;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "movie_audio_archies";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        return H0();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isChangeStatusBar() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isStatusDark() {
        return !x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Intent intent = new Intent();
        intent.putExtra("want2SeeCount", this.mWant2SeeCount);
        setResult(-1, intent);
        super.onBackPressed();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
        z0();
        if (!m.f70474a.e()) {
            B0();
            return;
        }
        x0();
        if (this.target == null) {
            s0();
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        ProfileSeeListFragment profileSeeListFragmentA = ProfileSeeListFragment.INSTANCE.a(1, this.mUserId, H0());
        wVarP.s(R$id.flContent, profileSeeListFragmentA);
        this.target = profileSeeListFragmentA;
        wVarP.j();
    }
}
