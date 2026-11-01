package com.transsnet.login.phone;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.Credentials;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsnet.login.LoginActivity;
import com.transsnet.login.R$string;
import com.transsnet.login.constant.LoginType;
import com.transsnet.login.country.LoginSelectCountryActivity;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.loginapi.bean.Country;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J!\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001f\u0010\u001cJ\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\r\u0010\"\u001a\u00020\f¢\u0006\u0004\b\"\u0010#J\u000f\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b%\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010<\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u001e\u0010A\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001e\u0010D\u001a\n\u0012\u0004\u0012\u00020B\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010@R\u001e\u0010F\u001a\n\u0012\u0004\u0012\u00020B\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010@R\u0014\u0010J\u001a\u00020G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010I¨\u0006K"}, d2 = {"Lcom/transsnet/login/phone/LoginPhoneFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lzy/j;", "<init>", "()V", "", "initViewModel", "initLaunch", "Lcom/transsnet/loginapi/bean/Country;", PlaceTypes.COUNTRY, "H0", "(Lcom/transsnet/loginapi/bean/Country;)V", "", "phoneNum", "I0", "(Ljava/lang/String;)V", "p0", "showLoading", "q0", "Landroid/view/LayoutInflater;", "inflater", "r0", "(Landroid/view/LayoutInflater;)Lzy/j;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "onResume", "initView", "onPause", "onDestroy", "getPageName", "()Ljava/lang/String;", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "a", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "mLoginPhoneViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsnet/loginapi/bean/Country;", "mCountry", "", "c", "Z", "mCheckPhoneNumFinished", "Lck/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lck/h;", "mBaseLoadingDialog", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "e", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "requestBody", "f", "Ljava/lang/String;", EventConstants.KEY_SOURCE, "Landroidx/activity/result/b;", "Landroidx/activity/result/IntentSenderRequest;", "g", "Landroidx/activity/result/b;", "requestPhoneLaunch", "Landroid/content/Intent;", "h", "requestCountryLaunch", "i", "loginLaunch", "Ljava/lang/Runnable;", "j", "Ljava/lang/Runnable;", "mRunnable", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginPhoneFragment extends BaseFragment<zy.j> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private LoginPhoneViewModel mLoginPhoneViewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Country mCountry;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean mCheckPhoneNumFinished;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ck.h mBaseLoadingDialog;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String source;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b requestPhoneLaunch;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b requestCountryLaunch;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b loginLaunch;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final LoginSmsCodeRequest requestBody = new LoginSmsCodeRequest();

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Runnable mRunnable = new Runnable() { // from class: com.transsnet.login.phone.l
        @Override // java.lang.Runnable
        public final void run() {
            LoginPhoneFragment.A0(this.f60511a);
        }
    };

    public static final class a implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ zy.j f60415a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LoginPhoneFragment f60416b;

        public a(zy.j jVar, LoginPhoneFragment loginPhoneFragment) {
            this.f60415a = jVar;
            this.f60416b = loginPhoneFragment;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            zy.j mViewBinding;
            AppCompatTextView appCompatTextView;
            AppCompatTextView appCompatTextView2;
            if (editable == null || editable.length() == 0) {
                this.f60415a.f79588c.setVisibility(8);
            } else {
                this.f60415a.f79588c.setVisibility(0);
            }
            try {
                zy.j mViewBinding2 = this.f60416b.getMViewBinding();
                if (!Intrinsics.c((mViewBinding2 == null || (appCompatTextView2 = mViewBinding2.f79595j) == null) ? null : appCompatTextView2.getText(), this.f60416b.getString(R$string.login_phone_err)) || (mViewBinding = this.f60416b.getMViewBinding()) == null || (appCompatTextView = mViewBinding.f79595j) == null) {
                    return;
                }
                jg.c.g(appCompatTextView);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
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
        private final /* synthetic */ Function1 f60417a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f60417a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f60417a;
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
            this.f60417a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(LoginPhoneFragment loginPhoneFragment) {
        AppCompatEditText appCompatEditText;
        zy.j mViewBinding = loginPhoneFragment.getMViewBinding();
        if (mViewBinding == null || (appCompatEditText = mViewBinding.f79591f) == null) {
            return;
        }
        appCompatEditText.clearFocus();
        appCompatEditText.requestFocus();
        KeyboardUtils.i(appCompatEditText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(LoginPhoneFragment loginPhoneFragment, zy.j jVar, View view) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        hj.i.f64505a.p(loginPhoneFragment.getPageName(), new HashMap());
        if (loginPhoneFragment.mCountry == null) {
            zy.j mViewBinding = loginPhoneFragment.getMViewBinding();
            if (mViewBinding != null && (appCompatTextView4 = mViewBinding.f79595j) != null) {
                appCompatTextView4.setText(R$string.login_select_country_code_tips);
            }
            zy.j mViewBinding2 = loginPhoneFragment.getMViewBinding();
            if (mViewBinding2 == null || (appCompatTextView3 = mViewBinding2.f79595j) == null) {
                return;
            }
            jg.c.k(appCompatTextView3);
            return;
        }
        Editable text = jVar.f79591f.getText();
        if (text == null || text.length() == 0) {
            zy.j mViewBinding3 = loginPhoneFragment.getMViewBinding();
            if (mViewBinding3 != null && (appCompatTextView2 = mViewBinding3.f79595j) != null) {
                appCompatTextView2.setText(R$string.login_phone_err);
            }
            zy.j mViewBinding4 = loginPhoneFragment.getMViewBinding();
            if (mViewBinding4 == null || (appCompatTextView = mViewBinding4.f79595j) == null) {
                return;
            }
            jg.c.k(appCompatTextView);
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.login_net_err);
            return;
        }
        loginPhoneFragment.showLoading();
        loginPhoneFragment.requestBody.setPhone(String.valueOf(jVar.f79591f.getText()));
        LoginSmsCodeRequest loginSmsCodeRequest = loginPhoneFragment.requestBody;
        Country country = loginPhoneFragment.mCountry;
        loginSmsCodeRequest.setCc(country != null ? country.getCode() : null);
        LoginPhoneViewModel loginPhoneViewModel = loginPhoneFragment.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.q(loginPhoneFragment.requestBody);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(LoginPhoneFragment loginPhoneFragment, View view) {
        loginPhoneFragment.requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(LoginPhoneFragment loginPhoneFragment, View view) {
        KeyboardUtils.d(loginPhoneFragment.requireActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(zy.j jVar, LoginPhoneFragment loginPhoneFragment, View view) {
        jVar.f79591f.clearFocus();
        KeyboardUtils.e(jVar.f79591f);
        androidx.activity.result.b bVar = loginPhoneFragment.requestCountryLaunch;
        if (bVar != null) {
            bVar.a(new Intent(loginPhoneFragment.getContext(), (Class<?>) LoginSelectCountryActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(LoginPhoneFragment loginPhoneFragment, View view) {
        FragmentActivity activity = loginPhoneFragment.getActivity();
        if (activity == null || !(activity instanceof LoginActivity)) {
            return;
        }
        ((LoginActivity) activity).e0(LoginType.EMAIL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(zy.j jVar, View view) {
        jVar.f79591f.setText("");
        jVar.f79588c.setVisibility(8);
    }

    private final void H0(Country country) {
        zy.j mViewBinding;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        if (country != null) {
            this.mCountry = country;
            String str = country.getCountry_s() + " + " + country.getCode();
            zy.j mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (appCompatTextView3 = mViewBinding2.f79593h) != null) {
                appCompatTextView3.setText(str);
            }
            zy.j mViewBinding3 = getMViewBinding();
            if (!Intrinsics.c((mViewBinding3 == null || (appCompatTextView2 = mViewBinding3.f79595j) == null) ? null : appCompatTextView2.getText(), getString(R$string.login_select_country_code_tips)) || (mViewBinding = getMViewBinding()) == null || (appCompatTextView = mViewBinding.f79595j) == null) {
                return;
            }
            jg.c.g(appCompatTextView);
        }
    }

    private final void I0(String phoneNum) {
        AppCompatEditText appCompatEditText;
        AppCompatEditText appCompatEditText2;
        zy.j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatEditText2 = mViewBinding.f79591f) != null) {
            appCompatEditText2.setText(phoneNum);
        }
        zy.j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appCompatEditText = mViewBinding2.f79591f) == null) {
            return;
        }
        appCompatEditText.setSelection(phoneNum != null ? phoneNum.length() : 0);
    }

    private final void initLaunch() {
        this.requestCountryLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsnet.login.phone.o
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                LoginPhoneFragment.s0(this.f60518a, (ActivityResult) obj);
            }
        });
        this.requestPhoneLaunch = registerForActivityResult(new f.k(), new androidx.activity.result.a() { // from class: com.transsnet.login.phone.p
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                LoginPhoneFragment.t0(this.f60520a, (ActivityResult) obj);
            }
        });
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsnet.login.phone.q
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                LoginPhoneFragment.u0(this.f60522a, (ActivityResult) obj);
            }
        });
    }

    private final void initViewModel() {
        final LoginPhoneViewModel loginPhoneViewModel = (LoginPhoneViewModel) new androidx.p009lifecycle.v0(this).a(LoginPhoneViewModel.class);
        this.mLoginPhoneViewModel = loginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.y().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsnet.login.phone.x
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPhoneFragment.v0(this.f60544a, (Country) obj);
                }
            }));
            loginPhoneViewModel.C().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsnet.login.phone.y
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPhoneFragment.w0(this.f60546a, (String) obj);
                }
            }));
            loginPhoneViewModel.G().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsnet.login.phone.z
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPhoneFragment.x0(this.f60548a, loginPhoneViewModel, (LoginSmsCodeRequest) obj);
                }
            }));
            loginPhoneViewModel.u().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsnet.login.phone.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPhoneFragment.y0(this.f60513a, loginPhoneViewModel, (LoginCheckPhoneExistResult) obj);
                }
            }));
            loginPhoneViewModel.t().j(this, new b(new Function1() { // from class: com.transsnet.login.phone.n
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginPhoneFragment.z0(this.f60516a, (String) obj);
                }
            }));
        }
    }

    private final void p0() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            try {
                HintRequest hintRequestBuild = new HintRequest.Builder().setPhoneNumberIdentifierSupported(true).build();
                Intrinsics.g(hintRequestBuild, "build(...)");
                PendingIntent hintPickerIntent = Credentials.getClient((Activity) activity).getHintPickerIntent(hintRequestBuild);
                Intrinsics.g(hintPickerIntent, "getHintPickerIntent(...)");
                IntentSenderRequest intentSenderRequestA = new IntentSenderRequest.a(hintPickerIntent).a();
                androidx.activity.result.b bVar = this.requestPhoneLaunch;
                if (bVar != null) {
                    bVar.a(intentSenderRequestA);
                }
            } catch (Exception unused) {
                this.mCheckPhoneNumFinished = true;
                zy.j mViewBinding = getMViewBinding();
                AppCompatEditText appCompatEditText = mViewBinding != null ? mViewBinding.f79591f : null;
                Intrinsics.e(appCompatEditText);
                KeyboardUtils.i(appCompatEditText);
            }
        }
    }

    private final void q0() {
        ck.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(LoginPhoneFragment loginPhoneFragment, ActivityResult it) {
        Intent data;
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1 || (data = it.getData()) == null) {
            return;
        }
        Serializable serializableExtra = data.getSerializableExtra("countryCode");
        if (serializableExtra instanceof Country) {
            loginPhoneFragment.H0((Country) serializableExtra);
        }
    }

    private final void showLoading() {
        if (this.mBaseLoadingDialog == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            this.mBaseLoadingDialog = new ck.h(contextRequireContext);
        }
        ck.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(LoginPhoneFragment loginPhoneFragment, ActivityResult it) {
        Intent data;
        LoginPhoneViewModel loginPhoneViewModel;
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1 && (data = it.getData()) != null) {
            Credential credential = (Credential) data.getParcelableExtra(Credential.EXTRA_KEY);
            String id2 = credential != null ? credential.getId() : null;
            if (id2 != null && (loginPhoneViewModel = loginPhoneFragment.mLoginPhoneViewModel) != null) {
                loginPhoneViewModel.r(id2);
            }
        }
        loginPhoneFragment.mCheckPhoneNumFinished = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(LoginPhoneFragment loginPhoneFragment, ActivityResult it) {
        FragmentActivity activity;
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1 || (activity = loginPhoneFragment.getActivity()) == null) {
            return;
        }
        activity.setResult(-1);
        activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(LoginPhoneFragment loginPhoneFragment, Country country) {
        loginPhoneFragment.H0(country);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(LoginPhoneFragment loginPhoneFragment, String str) {
        loginPhoneFragment.I0(str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x0(LoginPhoneFragment loginPhoneFragment, LoginPhoneViewModel loginPhoneViewModel, LoginSmsCodeRequest loginSmsCodeRequest) {
        LoginCheckPhoneExistResult loginCheckPhoneExistResult;
        loginPhoneFragment.q0();
        if (loginSmsCodeRequest != null && (loginCheckPhoneExistResult = (LoginCheckPhoneExistResult) loginPhoneViewModel.u().f()) != null) {
            Intent intent = new Intent(loginPhoneFragment.requireContext(), (Class<?>) LoginPhoneCodeActivity.class);
            intent.putExtra("requestData", loginSmsCodeRequest);
            intent.putExtra("checkPhoneData", loginCheckPhoneExistResult);
            intent.putExtra(EventConstants.KEY_SOURCE, loginPhoneFragment.source);
            androidx.activity.result.b bVar = loginPhoneFragment.loginLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(LoginPhoneFragment loginPhoneFragment, LoginPhoneViewModel loginPhoneViewModel, LoginCheckPhoneExistResult loginCheckPhoneExistResult) {
        if (loginCheckPhoneExistResult == null) {
            loginPhoneFragment.q0();
        } else {
            if (!loginCheckPhoneExistResult.getExists() || !loginCheckPhoneExistResult.getHasPassword()) {
                if (!loginCheckPhoneExistResult.getExists() || loginCheckPhoneExistResult.getHasPassword()) {
                    LoginPhoneViewModel.F(loginPhoneViewModel, loginPhoneFragment.requestBody, 0, 2, null);
                } else {
                    loginPhoneViewModel.E(loginPhoneFragment.requestBody, 2);
                }
                return Unit.f67061a;
            }
            loginPhoneFragment.q0();
            Intent intent = new Intent(loginPhoneFragment.requireContext(), (Class<?>) LoginPwdActivity.class);
            intent.putExtra("requestData", loginPhoneFragment.requestBody);
            intent.putExtra(PlaceTypes.COUNTRY, loginPhoneFragment.mCountry);
            intent.putExtra(EventConstants.KEY_SOURCE, loginPhoneFragment.source);
            androidx.activity.result.b bVar = loginPhoneFragment.loginLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.login_existed);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z0(LoginPhoneFragment loginPhoneFragment, String str) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        if (str != null) {
            zy.j mViewBinding = loginPhoneFragment.getMViewBinding();
            if (mViewBinding != null && (appCompatTextView2 = mViewBinding.f79595j) != null) {
                appCompatTextView2.setText(str);
            }
            zy.j mViewBinding2 = loginPhoneFragment.getMViewBinding();
            if (mViewBinding2 != null && (appCompatTextView = mViewBinding2.f79595j) != null) {
                jg.c.k(appCompatTextView);
            }
        }
        return Unit.f67061a;
    }

    public final String getPageName() {
        return "phone_enter";
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        LoginPhoneViewModel loginPhoneViewModel = this.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.w();
        }
        p0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
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
        q0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        AppCompatEditText appCompatEditText;
        super.onPause();
        zy.j mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatEditText = mViewBinding.f79591f) == null) {
            return;
        }
        appCompatEditText.removeCallbacks(this.mRunnable);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        zy.j mViewBinding;
        AppCompatEditText appCompatEditText;
        super.onResume();
        if (!this.mCheckPhoneNumFinished || (mViewBinding = getMViewBinding()) == null || (appCompatEditText = mViewBinding.f79591f) == null) {
            return;
        }
        appCompatEditText.postDelayed(this.mRunnable, 500L);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String string;
        HashMap mapG;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString(EventConstants.KEY_SOURCE)) == null) {
            string = null;
        } else {
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            }
        }
        this.source = string;
        this.requestBody.setAuthType(0);
        final zy.j mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f79590e.setSelected(true);
            mViewBinding.f79590e.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LoginPhoneFragment.B0(this.f60524a, mViewBinding, view2);
                }
            });
            mViewBinding.f79587b.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LoginPhoneFragment.C0(this.f60527a, view2);
                }
            });
            mViewBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LoginPhoneFragment.D0(this.f60530a, view2);
                }
            });
            mViewBinding.f79593h.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LoginPhoneFragment.E0(mViewBinding, this, view2);
                }
            });
            AppCompatEditText etPhone = mViewBinding.f79591f;
            Intrinsics.g(etPhone, "etPhone");
            etPhone.addTextChangedListener(new a(mViewBinding, this));
            AppCompatButton btnEmail = mViewBinding.f79589d;
            Intrinsics.g(btnEmail, "btnEmail");
            com.transsion.baseui.util.q.c(btnEmail, com.blankj.utilcode.util.i.e(8.0f));
            mViewBinding.f79589d.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LoginPhoneFragment.F0(this.f60535a, view2);
                }
            });
            mViewBinding.f79588c.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.phone.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LoginPhoneFragment.G0(mViewBinding, view2);
                }
            });
            com.transsnet.login.w wVar = com.transsnet.login.w.f60568a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            AppCompatTextView tvPrivacy = mViewBinding.f79594i;
            Intrinsics.g(tvPrivacy, "tvPrivacy");
            wVar.a(contextRequireContext, tvPrivacy);
        }
        initLaunch();
        initViewModel();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public zy.j getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        zy.j jVarC = zy.j.c(inflater);
        Intrinsics.g(jVarC, "inflate(...)");
        return jVarC;
    }
}
