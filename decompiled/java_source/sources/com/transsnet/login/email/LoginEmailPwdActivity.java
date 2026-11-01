package com.transsnet.login.email;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import androidx.p009lifecycle.v0;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.memberapi.IPremiumApi;
import com.transsnet.login.R$string;
import com.transsnet.login.phone.LoginPhoneCodeActivity;
import com.transsnet.login.phone.LoginPhoneViewModel;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.login.phone.widget.LoginPwdEditText;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u0019\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u0015\u0010\rJ\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u0019\u0010\u0019\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u001d\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0014¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0010H\u0016¢\u0006\u0004\b!\u0010\u0012J\u000f\u0010\"\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\"\u0010\u0012J\u000f\u0010#\u001a\u00020\nH\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R&\u00108\u001a\u0012\u0012\u0004\u0012\u00020\n04j\b\u0012\u0004\u0012\u00020\n`58\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010;\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u001d\u0010A\u001a\u0004\u0018\u00010<8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u001d\u0010F\u001a\u0004\u0018\u00010B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010>\u001a\u0004\bD\u0010ER\u0018\u0010H\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010:R\u001e\u0010M\u001a\n\u0012\u0004\u0012\u00020J\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0014\u0010Q\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010P¨\u0006R"}, d2 = {"Lcom/transsnet/login/email/LoginEmailPwdActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lzy/c;", "<init>", "()V", "", "initData", "C0", "R0", "H0", "", "phoneNum", "b1", "(Ljava/lang/String;)V", "showLoading", "B0", "", "y0", "()Z", "z0", NotificationCompat.CATEGORY_MESSAGE, "a1", "A0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "F0", "()Lzy/c;", "initView", "onResume", "onPause", "onDestroy", "isTranslucent", "isStatusDark", "getPageName", "()Ljava/lang/String;", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "a", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "mLoginPhoneViewModel", "Lck/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lck/h;", "mBaseLoadingDialog", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "c", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "requestBody", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/ArrayList;", "existEmailNumList", "e", "Ljava/lang/String;", "oldUid", "Lcom/transsion/memberapi/IPremiumApi;", "f", "Lkotlin/Lazy;", "D0", "()Lcom/transsion/memberapi/IPremiumApi;", "iMemberApi", "Lcom/transsnet/loginapi/ILoginApi;", "g", "E0", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "h", EventConstants.KEY_SOURCE, "Landroidx/activity/result/b;", "Landroid/content/Intent;", "i", "Landroidx/activity/result/b;", "loginLaunch", "Ljava/lang/Runnable;", "j", "Ljava/lang/Runnable;", "mRunnable", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginEmailPwdActivity extends BaseActivity<zy.c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private LoginPhoneViewModel mLoginPhoneViewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ck.h mBaseLoadingDialog;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String oldUid;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String source;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b loginLaunch;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private LoginSmsCodeRequest requestBody = new LoginSmsCodeRequest();

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ArrayList existEmailNumList = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy iMemberApi = LazyKt.b(new Function0() { // from class: com.transsnet.login.email.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LoginEmailPwdActivity.G0();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi = LazyKt.b(new Function0() { // from class: com.transsnet.login.email.s
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LoginEmailPwdActivity.Y0();
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Runnable mRunnable = new Runnable() { // from class: com.transsnet.login.email.t
        @Override // java.lang.Runnable
        public final void run() {
            LoginEmailPwdActivity.Z0(this.f60358a);
        }
    };

    public static final class a implements TextWatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ zy.c f60327b;

        public a(zy.c cVar) {
            this.f60327b = cVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (LoginEmailPwdActivity.this.y0()) {
                LoginEmailPwdActivity.this.A0();
            }
            this.f60327b.f79526c.setVisibility((editable == null || editable.length() == 0) ? 8 : 0);
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
        private final /* synthetic */ Function1 f60328a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f60328a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f60328a;
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
            this.f60328a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void A0() {
        ((zy.c) getMViewBinding()).f79535l.setVisibility(8);
    }

    private final void B0() {
        ck.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void C0() {
        showLoading();
        String strValueOf = String.valueOf(((zy.c) getMViewBinding()).f79530g.getText());
        this.requestBody.setMail(strValueOf);
        if (this.existEmailNumList.contains(strValueOf)) {
            LoginPhoneViewModel loginPhoneViewModel = this.mLoginPhoneViewModel;
            if (loginPhoneViewModel != null) {
                loginPhoneViewModel.E(this.requestBody, 2);
                return;
            }
            return;
        }
        LoginPhoneViewModel loginPhoneViewModel2 = this.mLoginPhoneViewModel;
        if (loginPhoneViewModel2 != null) {
            loginPhoneViewModel2.q(this.requestBody);
        }
    }

    private final IPremiumApi D0() {
        return (IPremiumApi) this.iMemberApi.getValue();
    }

    private final ILoginApi E0() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IPremiumApi G0() {
        return (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
    }

    private final void H0() {
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsnet.login.email.l
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                LoginEmailPwdActivity.I0(this.f60351a, (ActivityResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(LoginEmailPwdActivity loginEmailPwdActivity, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            loginEmailPwdActivity.setResult(-1);
            loginEmailPwdActivity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(zy.c cVar, View view) {
        AppCompatImageView appCompatImageView = cVar.f79527d;
        appCompatImageView.setSelected(!appCompatImageView.isSelected());
        cVar.f79531h.setTransformationMethod(cVar.f79527d.isSelected() ? HideReturnsTransformationMethod.getInstance() : new bz.a());
        LoginPwdEditText loginPwdEditText = cVar.f79531h;
        Editable text = loginPwdEditText.getText();
        loginPwdEditText.setSelection(text != null ? text.length() : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        if (loginEmailPwdActivity.y0()) {
            loginEmailPwdActivity.C0();
        } else {
            uh.b.f76753a.d(R$string.login_email_err);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        Intent intent = new Intent();
        intent.putExtra("KEY_LOGIN_TYPE", PermissionConstants.PHONE);
        Unit unit = Unit.f67061a;
        loginEmailPwdActivity.setResult(10086, intent);
        loginEmailPwdActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void M0(LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        String string;
        String string2;
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.login_net_err);
            return;
        }
        if (!loginEmailPwdActivity.y0()) {
            loginEmailPwdActivity.a1(loginEmailPwdActivity.getString(R$string.login_email_err));
            return;
        }
        if (!loginEmailPwdActivity.z0()) {
            loginEmailPwdActivity.a1(loginEmailPwdActivity.getString(R$string.login_account_err));
            return;
        }
        loginEmailPwdActivity.showLoading();
        Editable text = ((zy.c) loginEmailPwdActivity.getMViewBinding()).f79531h.getText();
        String str = "";
        if (text == null || (string = text.toString()) == null) {
            string = "";
        }
        LoginSmsCodeRequest loginSmsCodeRequest = loginEmailPwdActivity.requestBody;
        Editable text2 = ((zy.c) loginEmailPwdActivity.getMViewBinding()).f79530g.getText();
        if (text2 != null && (string2 = text2.toString()) != null) {
            str = string2;
        }
        loginSmsCodeRequest.setMail(str);
        loginEmailPwdActivity.requestBody.setPassword(lh.a.f68842a.d(string));
        LoginPhoneViewModel loginPhoneViewModel = loginEmailPwdActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.J(loginEmailPwdActivity.requestBody);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        loginEmailPwdActivity.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        KeyboardUtils.d(loginEmailPwdActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P0(LoginEmailPwdActivity loginEmailPwdActivity, boolean z10, String str) {
        loginEmailPwdActivity.a1(str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(zy.c cVar, LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        cVar.f79530g.setText((CharSequence) null);
        loginEmailPwdActivity.requestBody.setPhone(null);
    }

    private final void R0() {
        LoginPhoneViewModel loginPhoneViewModel = (LoginPhoneViewModel) new v0(this).a(LoginPhoneViewModel.class);
        this.mLoginPhoneViewModel = loginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.C().j(this, new b(new Function1() { // from class: com.transsnet.login.email.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.S0(this.f60352a, (String) obj);
                }
            }));
            loginPhoneViewModel.B().j(this, new b(new Function1() { // from class: com.transsnet.login.email.n
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.T0(this.f60353a, (UserInfo) obj);
                }
            }));
            loginPhoneViewModel.A().j(this, new b(new Function1() { // from class: com.transsnet.login.email.o
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.U0(this.f60354a, (String) obj);
                }
            }));
            loginPhoneViewModel.G().j(this, new b(new Function1() { // from class: com.transsnet.login.email.p
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.V0(this.f60355a, (LoginSmsCodeRequest) obj);
                }
            }));
            loginPhoneViewModel.u().j(this, new b(new Function1() { // from class: com.transsnet.login.email.q
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.W0(this.f60356a, (LoginCheckPhoneExistResult) obj);
                }
            }));
            loginPhoneViewModel.t().j(this, new b(new Function1() { // from class: com.transsnet.login.email.r
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.X0(this.f60357a, (String) obj);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S0(LoginEmailPwdActivity loginEmailPwdActivity, String str) {
        loginEmailPwdActivity.b1(str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T0(LoginEmailPwdActivity loginEmailPwdActivity, UserInfo userInfo) {
        IPremiumApi iPremiumApiD0;
        loginEmailPwdActivity.B0();
        if (userInfo != null) {
            KeyboardUtils.d(loginEmailPwdActivity);
            loginEmailPwdActivity.setResult(-1);
            loginEmailPwdActivity.finish();
        }
        String str = loginEmailPwdActivity.oldUid;
        if (str != null && str.length() != 0 && (iPremiumApiD0 = loginEmailPwdActivity.D0()) != null) {
            String str2 = loginEmailPwdActivity.oldUid;
            Intrinsics.e(str2);
            iPremiumApiD0.p(str2);
        }
        HashMap map = new HashMap();
        map.put("is_login", "true");
        String str3 = loginEmailPwdActivity.source;
        if (str3 != null) {
            map.put(EventConstants.KEY_SOURCE, str3);
        }
        hj.i.f64505a.p(loginEmailPwdActivity.getPageName(), map);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U0(LoginEmailPwdActivity loginEmailPwdActivity, String str) {
        if (str != null) {
            loginEmailPwdActivity.a1(str);
        }
        HashMap map = new HashMap();
        map.put("error_code", String.valueOf(str));
        String str2 = loginEmailPwdActivity.source;
        if (str2 != null) {
            map.put(EventConstants.KEY_SOURCE, str2);
        }
        hj.i.f64505a.p(loginEmailPwdActivity.getPageName(), map);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final Unit V0(LoginEmailPwdActivity loginEmailPwdActivity, LoginSmsCodeRequest loginSmsCodeRequest) {
        loginEmailPwdActivity.B0();
        if (loginSmsCodeRequest != null) {
            Intent intent = new Intent(loginEmailPwdActivity, (Class<?>) LoginPhoneCodeActivity.class);
            intent.putExtra("requestData", loginEmailPwdActivity.requestBody);
            LoginCheckPhoneExistResult loginCheckPhoneExistResult = new LoginCheckPhoneExistResult();
            loginCheckPhoneExistResult.setReset(true);
            intent.putExtra("checkPhoneData", loginCheckPhoneExistResult);
            intent.putExtra(EventConstants.KEY_SOURCE, loginEmailPwdActivity.source);
            androidx.activity.result.b bVar = loginEmailPwdActivity.loginLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W0(LoginEmailPwdActivity loginEmailPwdActivity, LoginCheckPhoneExistResult loginCheckPhoneExistResult) {
        if (loginCheckPhoneExistResult == null) {
            loginEmailPwdActivity.B0();
        } else if (loginCheckPhoneExistResult.getExists()) {
            loginEmailPwdActivity.existEmailNumList.add(loginEmailPwdActivity.requestBody.getCc() + loginEmailPwdActivity.requestBody.getPhone());
            LoginPhoneViewModel loginPhoneViewModel = loginEmailPwdActivity.mLoginPhoneViewModel;
            if (loginPhoneViewModel != null) {
                loginPhoneViewModel.E(loginEmailPwdActivity.requestBody, 2);
            }
        } else {
            loginEmailPwdActivity.B0();
            uh.b.f76753a.d(R$string.login_email_not_exist);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X0(LoginEmailPwdActivity loginEmailPwdActivity, String str) {
        loginEmailPwdActivity.a1(str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi Y0() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void Z0(LoginEmailPwdActivity loginEmailPwdActivity) {
        String mail = loginEmailPwdActivity.requestBody.getMail();
        View view = (mail == null || mail.length() == 0) ? ((zy.c) loginEmailPwdActivity.getMViewBinding()).f79530g : ((zy.c) loginEmailPwdActivity.getMViewBinding()).f79531h;
        view.clearFocus();
        view.requestFocus();
        KeyboardUtils.i(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a1(String msg) {
        if (msg == null) {
            A0();
        } else {
            ((zy.c) getMViewBinding()).f79535l.setText(msg);
            ((zy.c) getMViewBinding()).f79535l.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void b1(String phoneNum) {
        ((zy.c) getMViewBinding()).f79530g.setText(phoneNum);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        String mail = this.requestBody.getMail();
        if (mail != null) {
            ((zy.c) getMViewBinding()).f79530g.setText(mail);
            ((zy.c) getMViewBinding()).f79530g.setSelection(mail.length());
            this.existEmailNumList.add(mail);
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean y0() {
        Editable text = ((zy.c) getMViewBinding()).f79530g.getText();
        return text != null && com.blankj.utilcode.util.u.b(text);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean z0() {
        return ((zy.c) getMViewBinding()).f79531h.length() >= 6;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public zy.c getViewBinding() {
        zy.c cVarC = zy.c.c(getLayoutInflater());
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "email_password_login";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        String stringExtra;
        HashMap mapG;
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra(EventConstants.KEY_SOURCE)) == null) {
            stringExtra = null;
        } else {
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            }
        }
        this.source = stringExtra;
        Serializable serializableExtra = getIntent().getSerializableExtra("requestData");
        if (serializableExtra == null) {
            serializableExtra = this.requestBody;
        }
        LoginSmsCodeRequest loginSmsCodeRequest = (LoginSmsCodeRequest) serializableExtra;
        if (loginSmsCodeRequest != null) {
            this.requestBody = loginSmsCodeRequest;
        }
        this.requestBody.setAuthType(1);
        final zy.c cVar = (zy.c) getMViewBinding();
        cVar.f79528e.setSelected(true);
        cVar.f79528e.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.email.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginEmailPwdActivity.M0(this.f60359a, view);
            }
        });
        cVar.f79525b.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.email.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginEmailPwdActivity.N0(this.f60360a, view);
            }
        });
        cVar.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.email.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginEmailPwdActivity.O0(this.f60361a, view);
            }
        });
        String mail = this.requestBody.getMail();
        if (mail == null) {
            mail = "";
        }
        cVar.f79530g.setText(mail);
        cVar.f79530g.setSelection(mail.length());
        AppCompatEditText etMail = cVar.f79530g;
        Intrinsics.g(etMail, "etMail");
        etMail.addTextChangedListener(new a(cVar));
        cVar.f79531h.setEnableStatusChangeListener(new Function2() { // from class: com.transsnet.login.email.x
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return LoginEmailPwdActivity.P0(this.f60362a, ((Boolean) obj).booleanValue(), (String) obj2);
            }
        });
        cVar.f79526c.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.email.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginEmailPwdActivity.Q0(cVar, this, view);
            }
        });
        cVar.f79527d.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.email.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginEmailPwdActivity.J0(cVar, view);
            }
        });
        cVar.f79533j.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.email.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginEmailPwdActivity.K0(this.f60329a, view);
            }
        });
        AppCompatTextView btnPhoneLogin = cVar.f79529f;
        Intrinsics.g(btnPhoneLogin, "btnPhoneLogin");
        com.transsion.baseui.util.q.c(btnPhoneLogin, com.blankj.utilcode.util.i.e(8.0f));
        cVar.f79529f.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.email.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginEmailPwdActivity.L0(this.f60350a, view);
            }
        });
        com.transsnet.login.w wVar = com.transsnet.login.w.f60568a;
        AppCompatTextView tvPrivacy = ((zy.c) getMViewBinding()).f79534k;
        Intrinsics.g(tvPrivacy, "tvPrivacy");
        wVar.a(this, tvPrivacy);
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
        UserInfo userInfoI;
        super.onCreate(savedInstanceState);
        ILoginApi iLoginApiE0 = E0();
        String userId = (iLoginApiE0 == null || (userInfoI = iLoginApiE0.i()) == null) ? null : userInfoI.getUserId();
        this.oldUid = userId;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("LoginEmailPwdActivity: oldUid -> ");
        sb2.append(userId);
        H0();
        R0();
        initData();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        androidx.activity.result.b bVar = this.loginLaunch;
        if (bVar != null) {
            bVar.c();
        }
        B0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        ((zy.c) getMViewBinding()).f79530g.removeCallbacks(this.mRunnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        ((zy.c) getMViewBinding()).f79530g.postDelayed(this.mRunnable, 500L);
    }
}
