package com.transsnet.login.phone;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.fissionapi.IFissionProvider;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.HomeEvent;
import com.transsnet.login.R$string;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.login.phone.widget.LoginPwdEditText;
import com.transsnet.login.widget.LoginProgressBar;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0015J\u000f\u0010\u0019\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001a\u0010\fJ\u000f\u0010\u001b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001b\u0010\fJ\u000f\u0010\u001c\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0004R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u00109\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006>"}, d2 = {"Lcom/transsnet/login/phone/LoginSetPwdActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lzy/h;", "<init>", "()V", "", "B0", "showLoading", "t0", "q0", "", "r0", "()Z", "", NotificationCompat.CATEGORY_MESSAGE, "H0", "(Ljava/lang/String;)V", "s0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "u0", "()Lzy/h;", "initView", "onDestroy", "isTranslucent", "isStatusDark", "getPageName", "()Ljava/lang/String;", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onResume", "onPause", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "a", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "mLoginPhoneViewModel", "Lck/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lck/h;", "mBaseLoadingDialog", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "c", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "requestBody", "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;", "checkPhoneExistResult", "Lzy/k;", "e", "Lzy/k;", "mLoginLayoutInvitationCodeBinding", "f", "Ljava/lang/String;", EventConstants.KEY_SOURCE, "Ljava/lang/Runnable;", "g", "Ljava/lang/Runnable;", "mRunnable", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginSetPwdActivity extends BaseActivity<zy.h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private LoginPhoneViewModel mLoginPhoneViewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ck.h mBaseLoadingDialog;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private LoginCheckPhoneExistResult checkPhoneExistResult;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private zy.k mLoginLayoutInvitationCodeBinding;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String source;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private LoginSmsCodeRequest requestBody = new LoginSmsCodeRequest();

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Runnable mRunnable = new Runnable() { // from class: com.transsnet.login.phone.y0
        @Override // java.lang.Runnable
        public final void run() {
            LoginSetPwdActivity.G0(this.f60547a);
        }
    };

    public static final class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String string;
            zy.k kVar;
            AppCompatTextView appCompatTextView;
            AppCompatEditText appCompatEditText;
            Editable text;
            String string2;
            zy.k kVar2 = LoginSetPwdActivity.this.mLoginLayoutInvitationCodeBinding;
            if (kVar2 == null || (appCompatEditText = kVar2.f79597b) == null || (text = appCompatEditText.getText()) == null || (string2 = text.toString()) == null || (string = StringsKt.n1(string2).toString()) == null) {
                string = "";
            }
            if (!(string.length() == 0 || string.length() == 8) || (kVar = LoginSetPwdActivity.this.mLoginLayoutInvitationCodeBinding) == null || (appCompatTextView = kVar.f79601f) == null) {
                return;
            }
            jg.c.g(appCompatTextView);
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
        private final /* synthetic */ Function1 f60480a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f60480a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f60480a;
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
            this.f60480a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(zy.h hVar, View view) {
        AppCompatImageView appCompatImageView = hVar.f79574b;
        appCompatImageView.setSelected(!appCompatImageView.isSelected());
        hVar.f79576d.setTransformationMethod(hVar.f79574b.isSelected() ? HideReturnsTransformationMethod.getInstance() : new bz.a());
        LoginPwdEditText loginPwdEditText = hVar.f79576d;
        Editable text = loginPwdEditText.getText();
        loginPwdEditText.setSelection(text != null ? text.length() : 0);
    }

    private final void B0() {
        LoginPhoneViewModel loginPhoneViewModel = (LoginPhoneViewModel) new androidx.p009lifecycle.v0(this).a(LoginPhoneViewModel.class);
        this.mLoginPhoneViewModel = loginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.u().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.x0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginSetPwdActivity.C0(this.f60545a, (LoginCheckPhoneExistResult) obj);
                }
            }));
            loginPhoneViewModel.A().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.z0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginSetPwdActivity.D0(this.f60550a, (String) obj);
                }
            }));
            loginPhoneViewModel.D().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.a1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginSetPwdActivity.E0(this.f60482a, (UserInfo) obj);
                }
            }));
            loginPhoneViewModel.B().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.b1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginSetPwdActivity.F0(this.f60485a, (UserInfo) obj);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C0(LoginSetPwdActivity loginSetPwdActivity, LoginCheckPhoneExistResult loginCheckPhoneExistResult) {
        LoginPhoneViewModel loginPhoneViewModel = loginSetPwdActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            LoginPhoneViewModel.F(loginPhoneViewModel, loginSetPwdActivity.requestBody, 0, 2, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D0(LoginSetPwdActivity loginSetPwdActivity, String str) {
        loginSetPwdActivity.t0();
        loginSetPwdActivity.H0(str);
        HashMap map = new HashMap();
        map.put("error_code", String.valueOf(str));
        String str2 = loginSetPwdActivity.source;
        if (str2 != null) {
            map.put(EventConstants.KEY_SOURCE, str2);
        }
        hj.i.f64505a.p(loginSetPwdActivity.getPageName(), map);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(LoginSetPwdActivity loginSetPwdActivity, UserInfo userInfo) {
        loginSetPwdActivity.t0();
        if (userInfo != null) {
            LoginCheckPhoneExistResult loginCheckPhoneExistResult = loginSetPwdActivity.checkPhoneExistResult;
            if (loginCheckPhoneExistResult == null || !loginCheckPhoneExistResult.getReset()) {
                com.transsnet.login.b.f60283a.b(R$string.login_success);
                hj.i.f64505a.m(userInfo.getUserType(), userInfo.getUserId());
                HomeEvent homeEvent = new HomeEvent(2);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = HomeEvent.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, homeEvent, 0L);
            } else {
                com.transsnet.login.b.f60283a.b(R$string.login_pwd_set_success);
                HashMap map = new HashMap();
                map.put("is_success", "true");
                String str = loginSetPwdActivity.source;
                if (str != null) {
                    map.put(EventConstants.KEY_SOURCE, str);
                }
                hj.i.f64505a.p(loginSetPwdActivity.getPageName(), map);
            }
            loginSetPwdActivity.setResult(-1);
            loginSetPwdActivity.finish();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F0(LoginSetPwdActivity loginSetPwdActivity, UserInfo userInfo) {
        loginSetPwdActivity.t0();
        if (userInfo != null) {
            loginSetPwdActivity.setResult(-1);
            loginSetPwdActivity.finish();
            com.transsnet.login.b.f60283a.b(R$string.login_sign_up_success);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void G0(LoginSetPwdActivity loginSetPwdActivity) {
        LoginPwdEditText loginPwdEditText = ((zy.h) loginSetPwdActivity.getMViewBinding()).f79576d;
        loginPwdEditText.clearFocus();
        loginPwdEditText.requestFocus();
        KeyboardUtils.i(loginPwdEditText);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void H0(String msg) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        if (msg == null || msg.length() == 0) {
            s0();
            return;
        }
        if (!StringsKt.c0(msg, "invitation", false, 2, null)) {
            ((zy.h) getMViewBinding()).f79578f.setText(msg);
            AppCompatTextView tvTips = ((zy.h) getMViewBinding()).f79578f;
            Intrinsics.g(tvTips, "tvTips");
            jg.c.k(tvTips);
            return;
        }
        zy.k kVar = this.mLoginLayoutInvitationCodeBinding;
        if (kVar != null && (appCompatTextView2 = kVar.f79601f) != null) {
            appCompatTextView2.setText(msg);
        }
        zy.k kVar2 = this.mLoginLayoutInvitationCodeBinding;
        if (kVar2 == null || (appCompatTextView = kVar2.f79601f) == null) {
            return;
        }
        jg.c.k(appCompatTextView);
    }

    private final void q0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean r0() {
        return ((zy.h) getMViewBinding()).f79576d.length() >= 6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void s0() {
        ((zy.h) getMViewBinding()).f79578f.setText("");
        AppCompatTextView tvTips = ((zy.h) getMViewBinding()).f79578f;
        Intrinsics.g(tvTips, "tvTips");
        jg.c.g(tvTips);
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

    private final void t0() {
        ck.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(IFissionProvider iFissionProvider, LoginSetPwdActivity loginSetPwdActivity, View view) {
        if (iFissionProvider != null) {
            iFissionProvider.e(loginSetPwdActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void w0(LoginSetPwdActivity loginSetPwdActivity, View view) {
        String string;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatEditText appCompatEditText;
        Editable text;
        String string2;
        LoginCheckPhoneExistResult loginCheckPhoneExistResult;
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.login_net_err);
            return;
        }
        if (!loginSetPwdActivity.r0()) {
            loginSetPwdActivity.H0(loginSetPwdActivity.getString(R$string.login_pwd_err));
            return;
        }
        loginSetPwdActivity.showLoading();
        loginSetPwdActivity.requestBody.setPassword(lh.a.f68842a.d(String.valueOf(((zy.h) loginSetPwdActivity.getMViewBinding()).f79576d.getText())));
        LoginCheckPhoneExistResult loginCheckPhoneExistResult2 = loginSetPwdActivity.checkPhoneExistResult;
        if (loginCheckPhoneExistResult2 != null && loginCheckPhoneExistResult2.getReset()) {
            LoginPhoneViewModel loginPhoneViewModel = loginSetPwdActivity.mLoginPhoneViewModel;
            if (loginPhoneViewModel != null) {
                loginPhoneViewModel.L(loginSetPwdActivity.requestBody, true);
                return;
            }
            return;
        }
        LoginCheckPhoneExistResult loginCheckPhoneExistResult3 = loginSetPwdActivity.checkPhoneExistResult;
        if (loginCheckPhoneExistResult3 != null && loginCheckPhoneExistResult3.getExists() && (loginCheckPhoneExistResult = loginSetPwdActivity.checkPhoneExistResult) != null && !loginCheckPhoneExistResult.getHasPassword()) {
            LoginPhoneViewModel loginPhoneViewModel2 = loginSetPwdActivity.mLoginPhoneViewModel;
            if (loginPhoneViewModel2 != null) {
                loginPhoneViewModel2.L(loginSetPwdActivity.requestBody, false);
                return;
            }
            return;
        }
        zy.k kVar = loginSetPwdActivity.mLoginLayoutInvitationCodeBinding;
        if (kVar == null || (appCompatEditText = kVar.f79597b) == null || (text = appCompatEditText.getText()) == null || (string2 = text.toString()) == null || (string = StringsKt.n1(string2).toString()) == null) {
            string = "";
        }
        if (string.length() > 0 && string.length() != 8) {
            zy.k kVar2 = loginSetPwdActivity.mLoginLayoutInvitationCodeBinding;
            if (kVar2 != null && (appCompatTextView3 = kVar2.f79601f) != null) {
                appCompatTextView3.setText(R$string.login_invitation_code_err);
            }
            zy.k kVar3 = loginSetPwdActivity.mLoginLayoutInvitationCodeBinding;
            if (kVar3 != null && (appCompatTextView2 = kVar3.f79601f) != null) {
                jg.c.k(appCompatTextView2);
            }
            loginSetPwdActivity.t0();
            return;
        }
        zy.k kVar4 = loginSetPwdActivity.mLoginLayoutInvitationCodeBinding;
        if (kVar4 != null && (appCompatTextView = kVar4.f79601f) != null) {
            jg.c.g(appCompatTextView);
        }
        loginSetPwdActivity.requestBody.setInviteCode(string);
        if (loginSetPwdActivity.requestBody.getAuthType() == 1) {
            LoginPhoneViewModel loginPhoneViewModel3 = loginSetPwdActivity.mLoginPhoneViewModel;
            if (loginPhoneViewModel3 != null) {
                loginPhoneViewModel3.s(loginSetPwdActivity.requestBody);
                return;
            }
            return;
        }
        LoginPhoneViewModel loginPhoneViewModel4 = loginSetPwdActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel4 != null) {
            loginPhoneViewModel4.K(loginSetPwdActivity.requestBody);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(LoginSetPwdActivity loginSetPwdActivity, View view) {
        loginSetPwdActivity.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(LoginSetPwdActivity loginSetPwdActivity, View view) {
        KeyboardUtils.d(loginSetPwdActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z0(LoginSetPwdActivity loginSetPwdActivity, boolean z10, String str) {
        loginSetPwdActivity.H0(str);
        loginSetPwdActivity.q0();
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "set_password";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        String stringExtra;
        HashMap mapG;
        HashMap mapG2;
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra(EventConstants.KEY_SOURCE)) == null) {
            stringExtra = null;
        } else {
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
            }
        }
        this.source = stringExtra;
        Serializable serializableExtra = getIntent().getSerializableExtra("requestData");
        if (serializableExtra == null) {
            serializableExtra = this.requestBody;
        }
        Intrinsics.f(serializableExtra, "null cannot be cast to non-null type com.transsnet.login.phone.bean.LoginSmsCodeRequest");
        this.requestBody = (LoginSmsCodeRequest) serializableExtra;
        this.checkPhoneExistResult = (LoginCheckPhoneExistResult) getIntent().getSerializableExtra("checkPhoneData");
        final zy.h hVar = (zy.h) getMViewBinding();
        hVar.f79575c.setSelected(true);
        hVar.f79575c.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.c1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginSetPwdActivity.w0(this.f60488a, view);
            }
        });
        hVar.f79577e.f79603b.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.d1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginSetPwdActivity.x0(this.f60491a, view);
            }
        });
        hVar.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginSetPwdActivity.y0(this.f60494a, view);
            }
        });
        hVar.f79576d.setEnableStatusChangeListener(new Function2() { // from class: com.transsnet.login.phone.f1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return LoginSetPwdActivity.z0(this.f60497a, ((Boolean) obj).booleanValue(), (String) obj2);
            }
        });
        hVar.f79574b.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.g1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginSetPwdActivity.A0(hVar, view);
            }
        });
        LoginCheckPhoneExistResult loginCheckPhoneExistResult = this.checkPhoneExistResult;
        if (loginCheckPhoneExistResult != null && loginCheckPhoneExistResult.getReset()) {
            ((zy.h) getMViewBinding()).f79576d.setHint(R$string.login_pwd_set_hint);
            ((zy.h) getMViewBinding()).f79579g.setText(R$string.login_pwd_set_new);
            LoginProgressBar progress = ((zy.h) getMViewBinding()).f79577e.f79604c;
            Intrinsics.g(progress, "progress");
            jg.c.g(progress);
            AppCompatTextView tvProgress = ((zy.h) getMViewBinding()).f79577e.f79605d;
            Intrinsics.g(tvProgress, "tvProgress");
            jg.c.g(tvProgress);
            ((zy.h) getMViewBinding()).f79577e.f79606e.setText(R$string.login_pwd_find);
            ((zy.h) getMViewBinding()).f79575c.setText(R$string.login_pwd_done);
            return;
        }
        ((zy.h) getMViewBinding()).f79577e.f79604c.setProgress(3);
        LoginProgressBar progress2 = ((zy.h) getMViewBinding()).f79577e.f79604c;
        Intrinsics.g(progress2, "progress");
        jg.c.k(progress2);
        AppCompatTextView tvProgress2 = ((zy.h) getMViewBinding()).f79577e.f79605d;
        Intrinsics.g(tvProgress2, "tvProgress");
        jg.c.k(tvProgress2);
        ((zy.h) getMViewBinding()).f79577e.f79605d.setText("3/3");
        ((zy.h) getMViewBinding()).f79577e.f79604c.setProgress(600, DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
        ((zy.h) getMViewBinding()).f79575c.setText(R$string.login_sign_up_now);
        ((zy.h) getMViewBinding()).f79579g.setText(R$string.login_pwd_set_now);
        final IFissionProvider iFissionProvider = (IFissionProvider) TheRouter.d(IFissionProvider.class, new Object[0]);
        if (Intrinsics.c(iFissionProvider != null ? iFissionProvider.d() : null, "true")) {
            zy.k kVarA = zy.k.a(((zy.h) getMViewBinding()).f79580h.inflate());
            String strH = iFissionProvider.h();
            hj.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            }
            kVarA.f79597b.setText(strH);
            AppCompatEditText appCompatEditText = kVarA.f79597b;
            Editable text = appCompatEditText.getText();
            appCompatEditText.setSelection(text != null ? text.length() : 0);
            kVarA.f79598c.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.h1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LoginSetPwdActivity.v0(iFissionProvider, this, view);
                }
            });
            AppCompatEditText etCode = kVarA.f79597b;
            Intrinsics.g(etCode, "etCode");
            etCode.addTextChangedListener(new a());
            this.mLoginLayoutInvitationCodeBinding = kVarA;
        }
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
        super.onCreate(savedInstanceState);
        B0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        t0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        ((zy.h) getMViewBinding()).f79576d.removeCallbacks(this.mRunnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        ((zy.h) getMViewBinding()).f79576d.postDelayed(this.mRunnable, 500L);
        LoginProgressBar loginProgressBar = ((zy.h) getMViewBinding()).f79577e.f79604c;
        Intrinsics.e(loginProgressBar);
        if (!jg.c.i(loginProgressBar) || loginProgressBar.getProgress() > loginProgressBar.getStartProgress()) {
            return;
        }
        loginProgressBar.startProgressIncrease();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: u0, reason: merged with bridge method [inline-methods] */
    public zy.h getViewBinding() {
        zy.h hVarC = zy.h.c(getLayoutInflater());
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }
}
