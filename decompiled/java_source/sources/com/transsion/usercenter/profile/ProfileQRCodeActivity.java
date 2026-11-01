package com.transsion.usercenter.profile;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.zxing.BarcodeFormat;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.utils.ActivityPermissionUtil;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.usercenter.profile.dialog.ProfileCameraPermissionDialog;
import com.transsion.web.api.WebPageIdentity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 02\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\bH\u0016¢\u0006\u0004\b!\u0010\u001aJ\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\r0(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.¨\u00062"}, d2 = {"Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lfw/m;", "<init>", "()V", "", "K0", "R0", "", "openSetting", "T0", "(Z)V", "P0", "", "scannedText", "O0", "(Ljava/lang/String;)V", "url", "N0", "(Ljava/lang/String;)Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "q0", "()Z", "onPause", "onDestroy", "L0", "()Lfw/m;", "i0", "()Ljava/lang/String;", "setImmersionStatusBar", "o0", "p0", "n0", "s0", "t0", "retryLoadData", "Landroidx/activity/result/b;", "i", "Landroidx/activity/result/b;", "requestCameraPermissionLauncher", "Lxe/a;", "j", "Lxe/a;", "callback", CampaignEx.JSON_KEY_AD_K, "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ProfileQRCodeActivity extends BaseNewActivity<fw.m> {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b requestCameraPermissionLauncher = registerForActivityResult(new f.i(), new androidx.activity.result.a() { // from class: com.transsion.usercenter.profile.g0
        @Override // androidx.activity.result.a
        public final void a(Object obj) {
            ProfileQRCodeActivity.S0(this.f57219a, ((Boolean) obj).booleanValue());
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final xe.a callback = new b();

    public static final class b implements xe.a {
        b() {
        }

        @Override // xe.a
        public void a(List resultPoints) {
            Intrinsics.h(resultPoints, "resultPoints");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // xe.a
        public void b(xe.c result) {
            Intrinsics.h(result, "result");
            if (result.e() != null) {
                ((fw.m) ProfileQRCodeActivity.this.getMViewBinding()).f62779e.pause();
                String strE = result.e();
                ProfileQRCodeActivity profileQRCodeActivity = ProfileQRCodeActivity.this;
                Intrinsics.e(strE);
                profileQRCodeActivity.O0(strE);
            }
        }
    }

    private final void K0() {
        if (androidx.core.content.b.checkSelfPermission(this, "android.permission.CAMERA") == 0) {
            return;
        }
        R0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(ProfileQRCodeActivity profileQRCodeActivity, View view) {
        profileQRCodeActivity.finish();
    }

    private final boolean N0(String url) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("oneroom://com.community.oneroom");
        arrayList.add("oneroom://com.community.moviebox");
        arrayList.add("https://v.aoneroom.com");
        arrayList.add("https://h5.aoneroom.com");
        arrayList.add("https://m.mvbrowse.com");
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (StringsKt.W(url, (String) it.next(), false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O0(String scannedText) {
        if (N0(scannedText)) {
            ak.k.h(scannedText, null, 1, null);
        } else {
            String str = UrlUtils.QUESTION_MARK;
            if (StringsKt.c0(scannedText, UrlUtils.QUESTION_MARK, false, 2, null)) {
                str = UrlUtils.AND_MARK;
            }
            Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", scannedText + str + "web_unlock_key=web_unlock_value"), this, null, 2, null);
        }
        finish();
    }

    private final void P0() {
        ActivityPermissionUtil.f43373a.c("android.settings.APPLICATION_DETAILS_SETTINGS", 1023, new Function0() { // from class: com.transsion.usercenter.profile.i0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProfileQRCodeActivity.Q0(this.f57225a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q0(ProfileQRCodeActivity profileQRCodeActivity) {
        if (androidx.core.content.b.checkSelfPermission(profileQRCodeActivity, "android.permission.CAMERA") == 0) {
            return Unit.f67061a;
        }
        profileQRCodeActivity.T0(true);
        return Unit.f67061a;
    }

    private final void R0() {
        this.requestCameraPermissionLauncher.a("android.permission.CAMERA");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void S0(ProfileQRCodeActivity profileQRCodeActivity, boolean z10) {
        if (z10) {
            ((fw.m) profileQRCodeActivity.getMViewBinding()).f62779e.resume();
        } else if (profileQRCodeActivity.shouldShowRequestPermissionRationale("android.permission.CAMERA")) {
            profileQRCodeActivity.T0(false);
        } else {
            profileQRCodeActivity.T0(true);
        }
    }

    private final void T0(final boolean openSetting) {
        ProfileCameraPermissionDialog profileCameraPermissionDialog = new ProfileCameraPermissionDialog();
        profileCameraPermissionDialog.u0(new Function1() { // from class: com.transsion.usercenter.profile.h0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileQRCodeActivity.U0(openSetting, this, ((Boolean) obj).booleanValue());
            }
        });
        profileCameraPermissionDialog.k0(this, "ProfileCameraPermissionDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U0(boolean z10, ProfileQRCodeActivity profileQRCodeActivity, boolean z11) {
        if (!z11) {
            profileQRCodeActivity.finish();
        } else if (z10) {
            profileQRCodeActivity.P0();
        } else {
            profileQRCodeActivity.R0();
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: L0, reason: merged with bridge method [inline-methods] */
    public fw.m getViewBinding() {
        fw.m mVarC = fw.m.c(getLayoutInflater());
        Intrinsics.g(mVarC, "inflate(...)");
        return mVarC;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
        ((fw.m) getMViewBinding()).f62776b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.profile.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ProfileQRCodeActivity.M0(this.f57138a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
        ((fw.m) getMViewBinding()).f62779e.setDecoderFactory(new xe.k(CollectionsKt.o(BarcodeFormat.QR_CODE, BarcodeFormat.CODE_39)));
        ((fw.m) getMViewBinding()).f62779e.initializeFromIntent(getIntent());
        ((fw.m) getMViewBinding()).f62779e.decodeContinuous(this.callback);
        ImageView vStatusSpace = ((fw.m) getMViewBinding()).f62778d;
        Intrinsics.g(vStatusSpace, "vStatusSpace");
        jg.c.e(vStatusSpace);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        ImmersionBar.with(this).transparentBar().init();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        ((fw.m) getMViewBinding()).f62779e.pause();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        ((fw.m) getMViewBinding()).f62779e.resume();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean q0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean setImmersionStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void t0() {
        super.t0();
        K0();
    }
}
