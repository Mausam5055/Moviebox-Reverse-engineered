package com.transsnet.login.phone;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.activity.BaseActivity;
import com.transsnet.login.R$color;
import com.transsnet.login.R$string;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.login.widget.LoginProgressBar;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u0019\u0010\u0017\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001f\u0010\u001dJ\u000f\u0010 \u001a\u00020\u0005H\u0014¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\bH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u001e\u0010<\u001a\n\u0012\u0004\u0012\u000209\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010B\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u0014\u0010J\u001a\u00020G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR\"\u0010P\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010\u001d\"\u0004\bN\u0010OR\u0014\u0010R\u001a\u00020G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010I¨\u0006S"}, d2 = {"Lcom/transsnet/login/phone/LoginPhoneCodeActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lzy/f;", "<init>", "()V", "", "initView", "C0", "", NotificationCompat.CATEGORY_MESSAGE, "J0", "(Ljava/lang/String;)V", "v0", "", "t0", "()J", "r0", "I0", "q0", "showLoading", "s0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "u0", "()Lzy/f;", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "onDestroy", "getPageName", "()Ljava/lang/String;", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onResume", "onPause", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "a", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "requestData", "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;", "checkPhoneExistResult", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "c", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "mLoginPhoneViewModel", "Lck/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lck/h;", "mBaseLoadingDialog", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "e", "Landroidx/activity/result/b;", "loginLaunch", "f", "Ljava/lang/String;", EventConstants.KEY_SOURCE, "g", "J", "mCountDownTime", "Landroid/os/Handler;", "h", "Landroid/os/Handler;", "mHandler", "Ljava/lang/Runnable;", "i", "Ljava/lang/Runnable;", "mCountDownRunnable", "j", "Z", "getEnable", "setEnable", "(Z)V", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, CampaignEx.JSON_KEY_AD_K, "mRunnable", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginPhoneCodeActivity extends BaseActivity<zy.f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private LoginSmsCodeRequest requestData;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private LoginCheckPhoneExistResult checkPhoneExistResult;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private LoginPhoneViewModel mLoginPhoneViewModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ck.h mBaseLoadingDialog;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b loginLaunch;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String source;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean enable;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private long mCountDownTime = 60;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Runnable mCountDownRunnable = new Runnable() { // from class: com.transsnet.login.phone.g
        @Override // java.lang.Runnable
        public final void run() {
            LoginPhoneCodeActivity.G0(this.f60498a);
        }
    };

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Runnable mRunnable = new Runnable() { // from class: com.transsnet.login.phone.h
        @Override // java.lang.Runnable
        public final void run() {
            LoginPhoneCodeActivity.H0(this.f60501a);
        }
    };

    public static final class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            LoginPhoneCodeActivity.this.q0();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f60404a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f60404a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f60404a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f60404a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void A0(LoginPhoneCodeActivity loginPhoneCodeActivity) {
        ((zy.f) loginPhoneCodeActivity.getMViewBinding()).f79553d.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(LoginPhoneCodeActivity loginPhoneCodeActivity, View view) {
        KeyboardUtils.d(loginPhoneCodeActivity);
    }

    private final void C0() {
        LoginPhoneViewModel loginPhoneViewModel = (LoginPhoneViewModel) new androidx.p009lifecycle.v0(this).a(LoginPhoneViewModel.class);
        loginPhoneViewModel.v().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LoginPhoneCodeActivity.F0(this.f60505a, (Boolean) obj);
            }
        }));
        loginPhoneViewModel.G().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LoginPhoneCodeActivity.D0(this.f60507a, (LoginSmsCodeRequest) obj);
            }
        }));
        loginPhoneViewModel.A().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LoginPhoneCodeActivity.E0(this.f60509a, (String) obj);
            }
        }));
        this.mLoginPhoneViewModel = loginPhoneViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D0(LoginPhoneCodeActivity loginPhoneCodeActivity, LoginSmsCodeRequest loginSmsCodeRequest) {
        loginPhoneCodeActivity.s0();
        if (loginSmsCodeRequest != null) {
            loginPhoneCodeActivity.mCountDownTime = loginPhoneCodeActivity.t0();
            loginPhoneCodeActivity.mHandler.post(loginPhoneCodeActivity.mCountDownRunnable);
            HashMap map = new HashMap();
            map.put("is_login", "true");
            String str = loginPhoneCodeActivity.source;
            if (str != null) {
                map.put(EventConstants.KEY_SOURCE, str);
            }
            hj.i.f64505a.p(loginPhoneCodeActivity.getPageName(), map);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(LoginPhoneCodeActivity loginPhoneCodeActivity, String str) {
        loginPhoneCodeActivity.J0(str);
        HashMap map = new HashMap();
        map.put("error_code", String.valueOf(str));
        String str2 = loginPhoneCodeActivity.source;
        if (str2 != null) {
            map.put(EventConstants.KEY_SOURCE, str2);
        }
        hj.i.f64505a.p(loginPhoneCodeActivity.getPageName(), map);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F0(LoginPhoneCodeActivity loginPhoneCodeActivity, Boolean bool) {
        loginPhoneCodeActivity.s0();
        if (bool.booleanValue()) {
            Intent intent = new Intent(loginPhoneCodeActivity, (Class<?>) LoginSetPwdActivity.class);
            intent.putExtra("requestData", loginPhoneCodeActivity.requestData);
            intent.putExtra("checkPhoneData", loginPhoneCodeActivity.checkPhoneExistResult);
            intent.putExtra(EventConstants.KEY_SOURCE, loginPhoneCodeActivity.source);
            androidx.activity.result.b bVar = loginPhoneCodeActivity.loginLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void G0(LoginPhoneCodeActivity loginPhoneCodeActivity) {
        long j11 = loginPhoneCodeActivity.mCountDownTime - 1;
        loginPhoneCodeActivity.mCountDownTime = j11;
        if (j11 <= 0) {
            loginPhoneCodeActivity.I0();
            return;
        }
        ((zy.f) loginPhoneCodeActivity.getMViewBinding()).f79552c.setEnabled(false);
        ((zy.f) loginPhoneCodeActivity.getMViewBinding()).f79552c.setText(loginPhoneCodeActivity.getString(R$string.login_seconds, Long.valueOf(loginPhoneCodeActivity.mCountDownTime)));
        loginPhoneCodeActivity.r0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void H0(LoginPhoneCodeActivity loginPhoneCodeActivity) {
        AppCompatEditText appCompatEditText = ((zy.f) loginPhoneCodeActivity.getMViewBinding()).f79553d;
        appCompatEditText.clearFocus();
        appCompatEditText.requestFocus();
        KeyboardUtils.i(appCompatEditText);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void I0() {
        ((zy.f) getMViewBinding()).f79552c.setText(R$string.login_phone_code_resend);
        ((zy.f) getMViewBinding()).f79552c.setEnabled(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void J0(String msg) {
        if (msg == null || msg.length() == 0) {
            AppCompatTextView tvTips = ((zy.f) getMViewBinding()).f79557h;
            Intrinsics.g(tvTips, "tvTips");
            jg.c.g(tvTips);
        } else {
            AppCompatTextView tvTips2 = ((zy.f) getMViewBinding()).f79557h;
            Intrinsics.g(tvTips2, "tvTips");
            jg.c.k(tvTips2);
            ((zy.f) getMViewBinding()).f79557h.setText(msg);
        }
    }

    private final void initView() {
        String mail;
        String cc2;
        String phone;
        LoginCheckPhoneExistResult loginCheckPhoneExistResult;
        LoginCheckPhoneExistResult loginCheckPhoneExistResult2 = this.checkPhoneExistResult;
        if (loginCheckPhoneExistResult2 == null || loginCheckPhoneExistResult2.getExists() || ((loginCheckPhoneExistResult = this.checkPhoneExistResult) != null && loginCheckPhoneExistResult.getReset())) {
            AppCompatTextView tvProgress = ((zy.f) getMViewBinding()).f79555f.f79605d;
            Intrinsics.g(tvProgress, "tvProgress");
            jg.c.g(tvProgress);
            LoginProgressBar progress = ((zy.f) getMViewBinding()).f79555f.f79604c;
            Intrinsics.g(progress, "progress");
            jg.c.g(progress);
            LoginCheckPhoneExistResult loginCheckPhoneExistResult3 = this.checkPhoneExistResult;
            if (loginCheckPhoneExistResult3 != null && loginCheckPhoneExistResult3.getReset()) {
                ((zy.f) getMViewBinding()).f79555f.f79606e.setText(R$string.login_pwd_find);
            }
        } else {
            AppCompatTextView tvProgress2 = ((zy.f) getMViewBinding()).f79555f.f79605d;
            Intrinsics.g(tvProgress2, "tvProgress");
            jg.c.k(tvProgress2);
            LoginProgressBar progress2 = ((zy.f) getMViewBinding()).f79555f.f79604c;
            Intrinsics.g(progress2, "progress");
            jg.c.k(progress2);
            ((zy.f) getMViewBinding()).f79555f.f79604c.setProgress(2);
            ((zy.f) getMViewBinding()).f79555f.f79605d.setText("2/3");
            ((zy.f) getMViewBinding()).f79555f.f79604c.setProgress(300, 600);
        }
        ((zy.f) getMViewBinding()).f79551b.setSelected(true);
        ((zy.f) getMViewBinding()).f79555f.f79603b.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPhoneCodeActivity.x0(this.f60481a, view);
            }
        });
        ((zy.f) getMViewBinding()).f79551b.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPhoneCodeActivity.y0(this.f60487a, view);
            }
        });
        ((zy.f) getMViewBinding()).f79552c.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPhoneCodeActivity.z0(this.f60489a, view);
            }
        });
        AppCompatEditText etCode = ((zy.f) getMViewBinding()).f79553d;
        Intrinsics.g(etCode, "etCode");
        etCode.addTextChangedListener(new a());
        ((zy.f) getMViewBinding()).f79553d.post(new Runnable() { // from class: com.transsnet.login.phone.e
            @Override // java.lang.Runnable
            public final void run() {
                LoginPhoneCodeActivity.A0(this.f60492a);
            }
        });
        ((zy.f) getMViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPhoneCodeActivity.B0(this.f60495a, view);
            }
        });
        LoginSmsCodeRequest loginSmsCodeRequest = this.requestData;
        String str = "";
        if (loginSmsCodeRequest == null || loginSmsCodeRequest.getAuthType() != 0) {
            LoginSmsCodeRequest loginSmsCodeRequest2 = this.requestData;
            if (loginSmsCodeRequest2 != null && (mail = loginSmsCodeRequest2.getMail()) != null) {
                str = mail;
            }
        } else {
            LoginSmsCodeRequest loginSmsCodeRequest3 = this.requestData;
            if (loginSmsCodeRequest3 == null || (cc2 = loginSmsCodeRequest3.getCc()) == null) {
                cc2 = "";
            }
            LoginSmsCodeRequest loginSmsCodeRequest4 = this.requestData;
            if (loginSmsCodeRequest4 != null && (phone = loginSmsCodeRequest4.getPhone()) != null) {
                str = phone;
            }
            str = "+" + cc2 + " " + str;
        }
        LoginCheckPhoneExistResult loginCheckPhoneExistResult4 = this.checkPhoneExistResult;
        if (loginCheckPhoneExistResult4 == null || !loginCheckPhoneExistResult4.getReset()) {
            LoginSmsCodeRequest loginSmsCodeRequest5 = this.requestData;
            if (loginSmsCodeRequest5 == null || loginSmsCodeRequest5.getAuthType() != 0) {
                ((zy.f) getMViewBinding()).f79556g.setText(getString(R$string.login_email_code_tips, str));
            } else {
                ((zy.f) getMViewBinding()).f79556g.setText(getString(R$string.login_phone_code_tips, str));
            }
        } else {
            ((zy.f) getMViewBinding()).f79556g.setText(getString(R$string.login_verify_code_tips, str));
        }
        ((zy.f) getMViewBinding()).f79556g.setTextColor(androidx.core.content.b.getColor(this, R$color.base_color_999999));
        this.mHandler.post(this.mCountDownRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void q0() {
        Editable text = ((zy.f) getMViewBinding()).f79553d.getText();
        boolean z10 = false;
        if (text != null && text.length() == 6) {
            z10 = true;
        }
        this.enable = z10;
        if (z10) {
            J0(null);
        }
    }

    private final void r0() {
        this.mHandler.postDelayed(this.mCountDownRunnable, 1000L);
    }

    private final void s0() {
        ck.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    private final void showLoading() {
        if (this.mBaseLoadingDialog == null) {
            this.mBaseLoadingDialog = new ck.h(this);
        }
        ck.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.show();
        }
    }

    private final long t0() {
        String strAccount;
        LoginSmsCodeRequest loginSmsCodeRequest = this.requestData;
        if (loginSmsCodeRequest == null || (strAccount = loginSmsCodeRequest.account()) == null) {
            strAccount = "";
        }
        return 60 - ((SystemClock.elapsedRealtime() - vy.f.f77482a.b().getLong(strAccount, SystemClock.elapsedRealtime())) / ((long) 1000));
    }

    private final void v0() {
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsnet.login.phone.b
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                LoginPhoneCodeActivity.w0(this.f60483a, (ActivityResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(LoginPhoneCodeActivity loginPhoneCodeActivity, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            loginPhoneCodeActivity.setResult(-1);
            loginPhoneCodeActivity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(LoginPhoneCodeActivity loginPhoneCodeActivity, View view) {
        loginPhoneCodeActivity.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void y0(LoginPhoneCodeActivity loginPhoneCodeActivity, View view) {
        if (!loginPhoneCodeActivity.enable || loginPhoneCodeActivity.requestData == null) {
            loginPhoneCodeActivity.J0(loginPhoneCodeActivity.getString(R$string.login_verifcation_err));
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.login_net_err);
            return;
        }
        loginPhoneCodeActivity.showLoading();
        LoginSmsCodeRequest loginSmsCodeRequest = loginPhoneCodeActivity.requestData;
        if (loginSmsCodeRequest != null) {
            loginSmsCodeRequest.setVerificationCode(String.valueOf(((zy.f) loginPhoneCodeActivity.getMViewBinding()).f79553d.getText()));
        }
        LoginPhoneViewModel loginPhoneViewModel = loginPhoneCodeActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.M(loginPhoneCodeActivity.requestData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void z0(LoginPhoneCodeActivity loginPhoneCodeActivity, View view) {
        LoginCheckPhoneExistResult loginCheckPhoneExistResult;
        if (loginPhoneCodeActivity.mCountDownTime > 0) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.login_net_err);
            return;
        }
        loginPhoneCodeActivity.showLoading();
        LoginSmsCodeRequest loginSmsCodeRequest = loginPhoneCodeActivity.requestData;
        if (loginSmsCodeRequest != null) {
            loginSmsCodeRequest.setVerificationCode(String.valueOf(((zy.f) loginPhoneCodeActivity.getMViewBinding()).f79553d.getText()));
        }
        LoginPhoneViewModel loginPhoneViewModel = loginPhoneCodeActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            LoginSmsCodeRequest loginSmsCodeRequest2 = loginPhoneCodeActivity.requestData;
            LoginCheckPhoneExistResult loginCheckPhoneExistResult2 = loginPhoneCodeActivity.checkPhoneExistResult;
            int i11 = 1;
            if ((loginCheckPhoneExistResult2 != null && loginCheckPhoneExistResult2.getExists()) || ((loginCheckPhoneExistResult = loginPhoneCodeActivity.checkPhoneExistResult) != null && loginCheckPhoneExistResult.getReset())) {
                i11 = 2;
            }
            loginPhoneViewModel.E(loginSmsCodeRequest2, i11);
        }
        HashMap map = new HashMap();
        map.put("is_login", "true");
        String str = loginPhoneCodeActivity.source;
        if (str == null) {
            str = "";
        }
        map.put(EventConstants.KEY_SOURCE, str);
        hj.i.f64505a.p(loginPhoneCodeActivity.getPageName(), map);
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "code_enter";
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return !ak.x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        String stringExtra;
        HashMap mapG;
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra(EventConstants.KEY_SOURCE)) == null) {
            stringExtra = null;
        } else {
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            }
        }
        this.source = stringExtra;
        this.requestData = (LoginSmsCodeRequest) getIntent().getSerializableExtra("requestData");
        this.checkPhoneExistResult = (LoginCheckPhoneExistResult) getIntent().getSerializableExtra("checkPhoneData");
        this.mCountDownTime = t0();
        initView();
        C0();
        v0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        s0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        ((zy.f) getMViewBinding()).f79553d.removeCallbacks(this.mRunnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        ((zy.f) getMViewBinding()).f79553d.postDelayed(this.mRunnable, 500L);
        LoginProgressBar loginProgressBar = ((zy.f) getMViewBinding()).f79555f.f79604c;
        Intrinsics.e(loginProgressBar);
        if (!jg.c.i(loginProgressBar) || loginProgressBar.getProgress() > loginProgressBar.getStartProgress()) {
            return;
        }
        loginProgressBar.startProgressIncrease();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: u0, reason: merged with bridge method [inline-methods] */
    public zy.f getViewBinding() {
        zy.f fVarC = zy.f.c(getLayoutInflater());
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }
}
