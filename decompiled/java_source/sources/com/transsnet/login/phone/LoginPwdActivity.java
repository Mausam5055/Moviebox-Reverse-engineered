package com.transsnet.login.phone;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.Credentials;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.memberapi.IPremiumApi;
import com.transsnet.login.R$string;
import com.transsnet.login.country.LoginSelectCountryActivity;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.login.phone.widget.LoginPwdEditText;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.Country;
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
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u0019\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u0019\u0010\u001c\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u001c\u0010\u0011J\u000f\u0010\u001d\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u0019\u0010 \u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0014¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\"\u0010#J\u0019\u0010$\u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b$\u0010!J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0014¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0016H\u0016¢\u0006\u0004\b(\u0010\u0018J\u000f\u0010)\u001a\u00020\u0016H\u0016¢\u0006\u0004\b)\u0010\u0018J\u000f\u0010*\u001a\u00020\u000eH\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00108\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010C\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u001d\u0010I\u001a\u0004\u0018\u00010D8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR\u001d\u0010N\u001a\u0004\u0018\u00010J8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u0010F\u001a\u0004\bL\u0010MR&\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000e0Oj\b\u0012\u0004\u0012\u00020\u000e`P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0018\u0010U\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010BR\u001e\u0010Z\u001a\n\u0012\u0004\u0012\u00020W\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u001e\u0010]\u001a\n\u0012\u0004\u0012\u00020[\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010YR\u001e\u0010_\u001a\n\u0012\u0004\u0012\u00020[\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010YR\u0014\u0010c\u001a\u00020`8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010bR\u0016\u0010e\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u00107¨\u0006f"}, d2 = {"Lcom/transsnet/login/phone/LoginPwdActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lzy/g;", "<init>", "()V", "", "initData", "J0", "b1", "O0", "Lcom/transsnet/loginapi/bean/Country;", PlaceTypes.COUNTRY, "m1", "(Lcom/transsnet/loginapi/bean/Country;)V", "", "phoneNum", "n1", "(Ljava/lang/String;)V", "D0", "showLoading", "I0", "E0", "", "C0", "()Z", "F0", "G0", NotificationCompat.CATEGORY_MESSAGE, "l1", "H0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "M0", "()Lzy/g;", "initView", "onResume", "onPause", "onDestroy", "isTranslucent", "isStatusDark", "getPageName", "()Ljava/lang/String;", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "a", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "mLoginPhoneViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsnet/loginapi/bean/Country;", "mCountry", "c", "Z", "mCheckPhoneNumFinished", "Lck/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lck/h;", "mBaseLoadingDialog", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "e", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "requestBody", "f", "Ljava/lang/String;", "oldUid", "Lcom/transsion/memberapi/IPremiumApi;", "g", "Lkotlin/Lazy;", "K0", "()Lcom/transsion/memberapi/IPremiumApi;", "iMemberApi", "Lcom/transsnet/loginapi/ILoginApi;", "h", "L0", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "i", "Ljava/util/ArrayList;", "existPhoneNumList", "j", EventConstants.KEY_SOURCE, "Landroidx/activity/result/b;", "Landroidx/activity/result/IntentSenderRequest;", CampaignEx.JSON_KEY_AD_K, "Landroidx/activity/result/b;", "requestPhoneLaunch", "Landroid/content/Intent;", "l", "requestCountryLaunch", "m", "loginLaunch", "Ljava/lang/Runnable;", "n", "Ljava/lang/Runnable;", "mRunnable", "o", "isLoginEnable", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginPwdActivity extends BaseActivity<zy.g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private LoginPhoneViewModel mLoginPhoneViewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Country mCountry;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean mCheckPhoneNumFinished;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ck.h mBaseLoadingDialog;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String oldUid;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String source;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b requestPhoneLaunch;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b requestCountryLaunch;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b loginLaunch;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean isLoginEnable;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private LoginSmsCodeRequest requestBody = new LoginSmsCodeRequest();

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy iMemberApi = LazyKt.b(new Function0() { // from class: com.transsnet.login.phone.w0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LoginPwdActivity.N0();
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi = LazyKt.b(new Function0() { // from class: com.transsnet.login.phone.c0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LoginPwdActivity.j1();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private ArrayList existPhoneNumList = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final Runnable mRunnable = new Runnable() { // from class: com.transsnet.login.phone.d0
        @Override // java.lang.Runnable
        public final void run() {
            LoginPwdActivity.k1(this.f60490a);
        }
    };

    public static final class a implements TextWatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ zy.g f60470b;

        public a(zy.g gVar) {
            this.f60470b = gVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            LoginPwdActivity.this.E0();
            LoginPwdActivity.this.H0();
            this.f60470b.f79560c.setVisibility((editable == null || editable.length() == 0) ? 8 : 0);
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
        private final /* synthetic */ Function1 f60471a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f60471a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f60471a;
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
            this.f60471a.invoke(obj);
        }
    }

    private final boolean C0() {
        return this.mCountry != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void D0() {
        try {
            HintRequest hintRequestBuild = new HintRequest.Builder().setPhoneNumberIdentifierSupported(true).build();
            Intrinsics.g(hintRequestBuild, "build(...)");
            PendingIntent hintPickerIntent = Credentials.getClient((Activity) this).getHintPickerIntent(hintRequestBuild);
            Intrinsics.g(hintPickerIntent, "getHintPickerIntent(...)");
            IntentSenderRequest intentSenderRequestA = new IntentSenderRequest.a(hintPickerIntent).a();
            androidx.activity.result.b bVar = this.requestPhoneLaunch;
            if (bVar != null) {
                bVar.a(intentSenderRequestA);
            }
        } catch (Exception unused) {
            this.mCheckPhoneNumFinished = true;
            KeyboardUtils.i(((zy.g) getMViewBinding()).f79564g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E0() {
        this.isLoginEnable = C0() && F0() && G0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean F0() {
        Editable text = ((zy.g) getMViewBinding()).f79564g.getText();
        return (text != null ? text.length() : 0) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean G0() {
        return ((zy.g) getMViewBinding()).f79565h.isCanClickNext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void H0() {
        ((zy.g) getMViewBinding()).f79571n.setVisibility(8);
    }

    private final void I0() {
        ck.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void J0() {
        showLoading();
        this.requestBody.setPhone(String.valueOf(((zy.g) getMViewBinding()).f79564g.getText()));
        LoginSmsCodeRequest loginSmsCodeRequest = this.requestBody;
        Country country = this.mCountry;
        loginSmsCodeRequest.setCc(country != null ? country.getCode() : null);
        if (this.existPhoneNumList.contains(this.requestBody.getCc() + this.requestBody.getPhone())) {
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

    private final IPremiumApi K0() {
        return (IPremiumApi) this.iMemberApi.getValue();
    }

    private final ILoginApi L0() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IPremiumApi N0() {
        return (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
    }

    private final void O0() {
        this.requestCountryLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsnet.login.phone.l0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                LoginPwdActivity.P0(this.f60512a, (ActivityResult) obj);
            }
        });
        this.requestPhoneLaunch = registerForActivityResult(new f.k(), new androidx.activity.result.a() { // from class: com.transsnet.login.phone.n0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                LoginPwdActivity.Q0(this.f60517a, (ActivityResult) obj);
            }
        });
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsnet.login.phone.o0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                LoginPwdActivity.R0(this.f60519a, (ActivityResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(LoginPwdActivity loginPwdActivity, ActivityResult it) {
        Intent data;
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1 || (data = it.getData()) == null) {
            return;
        }
        Serializable serializableExtra = data.getSerializableExtra("countryCode");
        if (serializableExtra instanceof Country) {
            loginPwdActivity.m1((Country) serializableExtra);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(LoginPwdActivity loginPwdActivity, ActivityResult it) {
        Intent data;
        LoginPhoneViewModel loginPhoneViewModel;
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1 && (data = it.getData()) != null) {
            Credential credential = (Credential) data.getParcelableExtra(Credential.EXTRA_KEY);
            String id2 = credential != null ? credential.getId() : null;
            if (id2 != null && (loginPhoneViewModel = loginPwdActivity.mLoginPhoneViewModel) != null) {
                loginPhoneViewModel.r(id2);
            }
        }
        loginPwdActivity.mCheckPhoneNumFinished = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R0(LoginPwdActivity loginPwdActivity, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            loginPwdActivity.setResult(-1);
            loginPwdActivity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(zy.g gVar, View view) {
        AppCompatImageView appCompatImageView = gVar.f79562e;
        appCompatImageView.setSelected(!appCompatImageView.isSelected());
        gVar.f79565h.setTransformationMethod(gVar.f79562e.isSelected() ? HideReturnsTransformationMethod.getInstance() : new bz.a());
        LoginPwdEditText loginPwdEditText = gVar.f79565h;
        Editable text = loginPwdEditText.getText();
        loginPwdEditText.setSelection(text != null ? text.length() : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(LoginPwdActivity loginPwdActivity, View view) {
        if (!loginPwdActivity.C0()) {
            uh.b.f76753a.d(R$string.login_select_country_code_tips);
        } else if (loginPwdActivity.F0()) {
            loginPwdActivity.J0();
        } else {
            uh.b.f76753a.d(R$string.login_phone_err);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(LoginPwdActivity loginPwdActivity, View view) {
        Intent intent = new Intent();
        intent.putExtra("KEY_LOGIN_TYPE", "EMAIL");
        Unit unit = Unit.f67061a;
        loginPwdActivity.setResult(10086, intent);
        loginPwdActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void V0(LoginPwdActivity loginPwdActivity, View view) {
        String string;
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.login_net_err);
            return;
        }
        if (!loginPwdActivity.C0()) {
            loginPwdActivity.l1(loginPwdActivity.getString(R$string.login_select_country_code_tips));
            return;
        }
        if (!loginPwdActivity.F0()) {
            loginPwdActivity.l1(loginPwdActivity.getString(R$string.login_phone_err));
            return;
        }
        if (!loginPwdActivity.G0()) {
            loginPwdActivity.l1(loginPwdActivity.getString(R$string.login_account_err));
            return;
        }
        loginPwdActivity.showLoading();
        LoginSmsCodeRequest loginSmsCodeRequest = loginPwdActivity.requestBody;
        Editable text = ((zy.g) loginPwdActivity.getMViewBinding()).f79564g.getText();
        if (text == null || (string = text.toString()) == null) {
            string = "";
        }
        loginSmsCodeRequest.setPhone(string);
        LoginSmsCodeRequest loginSmsCodeRequest2 = loginPwdActivity.requestBody;
        Country country = loginPwdActivity.mCountry;
        loginSmsCodeRequest2.setCc(country != null ? country.getCode() : null);
        loginPwdActivity.requestBody.setPassword(lh.a.f68842a.d(String.valueOf(((zy.g) loginPwdActivity.getMViewBinding()).f79565h.getText())));
        LoginPhoneViewModel loginPhoneViewModel = loginPwdActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.J(loginPwdActivity.requestBody);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(LoginPwdActivity loginPwdActivity, View view) {
        loginPwdActivity.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(LoginPwdActivity loginPwdActivity, View view) {
        KeyboardUtils.d(loginPwdActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void Y0(LoginPwdActivity loginPwdActivity, View view) {
        ((zy.g) loginPwdActivity.getMViewBinding()).f79564g.clearFocus();
        androidx.activity.result.b bVar = loginPwdActivity.requestCountryLaunch;
        if (bVar != null) {
            bVar.a(new Intent(loginPwdActivity, (Class<?>) LoginSelectCountryActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z0(LoginPwdActivity loginPwdActivity, boolean z10, String str) {
        loginPwdActivity.l1(str);
        loginPwdActivity.E0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(zy.g gVar, LoginPwdActivity loginPwdActivity, View view) {
        gVar.f79564g.setText((CharSequence) null);
        loginPwdActivity.requestBody.setPhone(null);
    }

    private final void b1() {
        LoginPhoneViewModel loginPhoneViewModel = (LoginPhoneViewModel) new androidx.p009lifecycle.v0(this).a(LoginPhoneViewModel.class);
        this.mLoginPhoneViewModel = loginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.y().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.e0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.c1(this.f60493a, (Country) obj);
                }
            }));
            loginPhoneViewModel.C().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.f0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.d1(this.f60496a, (String) obj);
                }
            }));
            loginPhoneViewModel.B().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.g0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.e1(this.f60499a, (UserInfo) obj);
                }
            }));
            loginPhoneViewModel.A().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.h0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.f1(this.f60502a, (String) obj);
                }
            }));
            loginPhoneViewModel.G().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.i0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.g1(this.f60506a, (LoginSmsCodeRequest) obj);
                }
            }));
            loginPhoneViewModel.u().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.j0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.h1(this.f60508a, (LoginCheckPhoneExistResult) obj);
                }
            }));
            loginPhoneViewModel.t().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.k0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.i1(this.f60510a, (String) obj);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c1(LoginPwdActivity loginPwdActivity, Country country) {
        loginPwdActivity.m1(country);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d1(LoginPwdActivity loginPwdActivity, String str) {
        loginPwdActivity.n1(str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e1(LoginPwdActivity loginPwdActivity, UserInfo userInfo) {
        IPremiumApi iPremiumApiK0;
        loginPwdActivity.I0();
        if (userInfo != null) {
            KeyboardUtils.d(loginPwdActivity);
            loginPwdActivity.setResult(-1);
            loginPwdActivity.finish();
        }
        HashMap map = new HashMap();
        map.put("is_login", "true");
        String str = loginPwdActivity.source;
        if (str != null) {
            map.put(EventConstants.KEY_SOURCE, str);
        }
        String str2 = loginPwdActivity.oldUid;
        if (str2 != null && str2.length() != 0 && (iPremiumApiK0 = loginPwdActivity.K0()) != null) {
            String str3 = loginPwdActivity.oldUid;
            Intrinsics.e(str3);
            iPremiumApiK0.p(str3);
        }
        hj.i.f64505a.p(loginPwdActivity.getPageName(), map);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(LoginPwdActivity loginPwdActivity, String str) {
        if (str != null) {
            loginPwdActivity.l1(str);
        }
        HashMap map = new HashMap();
        map.put("error_code", String.valueOf(str));
        String str2 = loginPwdActivity.source;
        if (str2 != null) {
            map.put(EventConstants.KEY_SOURCE, str2);
        }
        hj.i.f64505a.p(loginPwdActivity.getPageName(), map);
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
    public static final Unit g1(LoginPwdActivity loginPwdActivity, LoginSmsCodeRequest loginSmsCodeRequest) {
        loginPwdActivity.I0();
        if (loginSmsCodeRequest != null) {
            Intent intent = new Intent(loginPwdActivity, (Class<?>) LoginPhoneCodeActivity.class);
            intent.putExtra("requestData", loginPwdActivity.requestBody);
            LoginCheckPhoneExistResult loginCheckPhoneExistResult = new LoginCheckPhoneExistResult();
            loginCheckPhoneExistResult.setReset(true);
            intent.putExtra("checkPhoneData", loginCheckPhoneExistResult);
            intent.putExtra(EventConstants.KEY_SOURCE, loginPwdActivity.source);
            androidx.activity.result.b bVar = loginPwdActivity.loginLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h1(LoginPwdActivity loginPwdActivity, LoginCheckPhoneExistResult loginCheckPhoneExistResult) {
        if (loginCheckPhoneExistResult == null) {
            loginPwdActivity.I0();
        } else if (loginCheckPhoneExistResult.getExists()) {
            loginPwdActivity.existPhoneNumList.add(loginPwdActivity.requestBody.getCc() + loginPwdActivity.requestBody.getPhone());
            LoginPhoneViewModel loginPhoneViewModel = loginPwdActivity.mLoginPhoneViewModel;
            if (loginPhoneViewModel != null) {
                loginPhoneViewModel.E(loginPwdActivity.requestBody, 2);
            }
        } else {
            loginPwdActivity.I0();
            uh.b.f76753a.e(loginPwdActivity.getString(R$string.login_phone_not_exist));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i1(LoginPwdActivity loginPwdActivity, String str) {
        loginPwdActivity.l1(str);
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
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
        Country country = this.mCountry;
        if (country == null) {
            LoginPhoneViewModel loginPhoneViewModel = this.mLoginPhoneViewModel;
            if (loginPhoneViewModel != null) {
                loginPhoneViewModel.w();
            }
            l1(getString(R$string.login_select_country_code_tips));
        } else {
            m1(country);
        }
        String phone = this.requestBody.getPhone();
        if (phone == null) {
            D0();
        } else {
            this.mCheckPhoneNumFinished = true;
        }
        ((zy.g) getMViewBinding()).f79564g.setText(phone);
        ((zy.g) getMViewBinding()).f79564g.setSelection(phone != null ? phone.length() : 0);
        this.existPhoneNumList.add(this.requestBody.getCc() + this.requestBody.getPhone());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi j1() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void k1(LoginPwdActivity loginPwdActivity) {
        String phone = loginPwdActivity.requestBody.getPhone();
        View view = (phone == null || phone.length() == 0) ? ((zy.g) loginPwdActivity.getMViewBinding()).f79564g : ((zy.g) loginPwdActivity.getMViewBinding()).f79565h;
        view.clearFocus();
        view.requestFocus();
        KeyboardUtils.i(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void l1(String msg) {
        if (msg == null) {
            H0();
        } else {
            ((zy.g) getMViewBinding()).f79571n.setText(msg);
            ((zy.g) getMViewBinding()).f79571n.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void m1(Country country) {
        if (country != null) {
            this.mCountry = country;
            ((zy.g) getMViewBinding()).f79569l.setText(country.getCountry_s() + " + " + country.getCode());
            CharSequence text = ((zy.g) getMViewBinding()).f79571n.getText();
            if (Intrinsics.c(text != null ? text.toString() : null, getString(R$string.login_select_country_code_tips))) {
                H0();
            }
        }
        E0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void n1(String phoneNum) {
        ((zy.g) getMViewBinding()).f79564g.setText(phoneNum);
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

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: M0, reason: merged with bridge method [inline-methods] */
    public zy.g getViewBinding() {
        zy.g gVarC = zy.g.c(getLayoutInflater());
        Intrinsics.g(gVarC, "inflate(...)");
        return gVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "password_login";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        Serializable serializableExtra = getIntent().getSerializableExtra("requestData");
        if (serializableExtra == null) {
            serializableExtra = this.requestBody;
        }
        Intrinsics.f(serializableExtra, "null cannot be cast to non-null type com.transsnet.login.phone.bean.LoginSmsCodeRequest");
        LoginSmsCodeRequest loginSmsCodeRequest = (LoginSmsCodeRequest) serializableExtra;
        this.requestBody = loginSmsCodeRequest;
        loginSmsCodeRequest.setAuthType(0);
        this.mCountry = (Country) getIntent().getSerializableExtra(PlaceTypes.COUNTRY);
        final zy.g gVar = (zy.g) getMViewBinding();
        gVar.f79563f.setSelected(true);
        gVar.f79563f.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPwdActivity.V0(this.f60484a, view);
            }
        });
        gVar.f79559b.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPwdActivity.W0(this.f60515a, view);
            }
        });
        gVar.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPwdActivity.X0(this.f60521a, view);
            }
        });
        gVar.f79569l.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPwdActivity.Y0(this.f60523a, view);
            }
        });
        AppCompatEditText etPhone = gVar.f79564g;
        Intrinsics.g(etPhone, "etPhone");
        etPhone.addTextChangedListener(new a(gVar));
        gVar.f79565h.setEnableStatusChangeListener(new Function2() { // from class: com.transsnet.login.phone.r0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return LoginPwdActivity.Z0(this.f60526a, ((Boolean) obj).booleanValue(), (String) obj2);
            }
        });
        gVar.f79560c.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPwdActivity.a1(gVar, this, view);
            }
        });
        gVar.f79562e.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPwdActivity.S0(gVar, view);
            }
        });
        gVar.f79568k.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPwdActivity.T0(this.f60534a, view);
            }
        });
        AppCompatTextView btnEmail = gVar.f79561d;
        Intrinsics.g(btnEmail, "btnEmail");
        com.transsion.baseui.util.q.c(btnEmail, com.blankj.utilcode.util.i.e(8.0f));
        gVar.f79561d.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPwdActivity.U0(this.f60536a, view);
            }
        });
        com.transsnet.login.w wVar = com.transsnet.login.w.f60568a;
        AppCompatTextView tvPrivacy = ((zy.g) getMViewBinding()).f79570m;
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
        ILoginApi iLoginApiL0 = L0();
        String userId = (iLoginApiL0 == null || (userInfoI = iLoginApiL0.i()) == null) ? null : userInfoI.getUserId();
        this.oldUid = userId;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("LoginPwdActivity: oldUid -> ");
        sb2.append(userId);
        O0();
        b1();
        initData();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        androidx.activity.result.b bVar = this.requestPhoneLaunch;
        if (bVar != null) {
            bVar.c();
        }
        androidx.activity.result.b bVar2 = this.requestCountryLaunch;
        if (bVar2 != null) {
            bVar2.c();
        }
        androidx.activity.result.b bVar3 = this.loginLaunch;
        if (bVar3 != null) {
            bVar3.c();
        }
        I0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        ((zy.g) getMViewBinding()).f79564g.removeCallbacks(this.mRunnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.mCheckPhoneNumFinished) {
            ((zy.g) getMViewBinding()).f79564g.postDelayed(this.mRunnable, 500L);
        }
    }
}
