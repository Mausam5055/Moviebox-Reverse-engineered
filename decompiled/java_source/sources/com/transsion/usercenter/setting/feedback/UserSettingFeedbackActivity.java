package com.transsion.usercenter.setting.feedback;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import com.blankj.utilcode.util.KeyboardUtils;
import com.bumptech.glide.Glide;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.ui.SelectImageActivity;
import com.transsion.usercenter.R$color;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.setting.feedback.UserSettingFeedbackActivity;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.bean.Country;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fp.a;
import fw.i1;
import java.io.File;
import java.io.Serializable;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 92\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010-R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u0006:"}, d2 = {"Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lfw/i1;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "", "isStatusDark", "()Z", "isTranslucent", "m0", "()Lfw/i1;", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "initView", "t0", "w0", "l0", "n0", "Lfp/a;", "operationMenu", "v0", "(Lfp/a;)V", "a", "Lfw/i1;", "mBinding", "Lxw/c;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lxw/c;", "mUserFeedbackViewModel", "Lcom/transsion/publish/api/PhotoEntity;", "c", "Lcom/transsion/publish/api/PhotoEntity;", "photoEntity", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "feedbackFromPage", "e", "subjectId", "Lcom/transsnet/loginapi/bean/Country;", "f", "Lcom/transsnet/loginapi/bean/Country;", "mCountry", "Landroid/text/InputFilter$LengthFilter;", "g", "Landroid/text/InputFilter$LengthFilter;", "mLengthFilter", "h", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UserSettingFeedbackActivity extends BaseActivity<i1> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private i1 mBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private xw.c mUserFeedbackViewModel;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private PhotoEntity photoEntity;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Country mCountry;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String feedbackFromPage = "SETTINGS";

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final InputFilter.LengthFilter mLengthFilter = new c();

    public static final class b implements TextWatcher {
        public b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AppCompatTextView appCompatTextView;
            AppCompatButton appCompatButton;
            AppCompatTextView appCompatTextView2;
            int length = editable != null ? editable.length() : 0;
            String string = UserSettingFeedbackActivity.this.getString(R$string.user_setting_feedback_max_len, Integer.valueOf(length));
            Intrinsics.g(string, "getString(...)");
            if (length < 500) {
                i1 i1Var = UserSettingFeedbackActivity.this.mBinding;
                if (i1Var != null && (appCompatTextView2 = i1Var.f62701i) != null) {
                    appCompatTextView2.setText(string);
                }
            } else {
                ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(androidx.core.content.b.getColor(UserSettingFeedbackActivity.this, R$color.base_color_FA5546));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                spannableStringBuilder.setSpan(foregroundColorSpan, 0, 3, 33);
                i1 i1Var2 = UserSettingFeedbackActivity.this.mBinding;
                if (i1Var2 != null && (appCompatTextView = i1Var2.f62701i) != null) {
                    appCompatTextView.setText(spannableStringBuilder);
                }
            }
            i1 i1Var3 = UserSettingFeedbackActivity.this.mBinding;
            if (i1Var3 == null || (appCompatButton = i1Var3.f62694b) == null) {
                return;
            }
            appCompatButton.setEnabled(length >= 1);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public static final class c extends InputFilter.LengthFilter {
        c() {
            super(500);
        }

        @Override // android.text.InputFilter.LengthFilter, android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i11, int i12, Spanned spanned, int i13, int i14) {
            int length;
            if (charSequence != null) {
                try {
                    length = charSequence.length();
                } catch (Exception unused) {
                }
            } else {
                length = 0;
            }
            if (length + (spanned != null ? spanned.length() : 0) > getMax()) {
                uh.b.f76753a.d(R$string.user_setting_feedback_max_len_tips);
            }
            return charSequence;
        }
    }

    static final class d implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57407a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57407a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57407a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f57407a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        i1 i1Var = (i1) getMViewBinding();
        this.mBinding = i1Var;
        if (i1Var != null) {
            AppCompatEditText etDesc = i1Var.f62695c;
            Intrinsics.g(etDesc, "etDesc");
            etDesc.addTextChangedListener(new b());
            InputFilter[] filters = i1Var.f62695c.getFilters();
            Intrinsics.g(filters, "getFilters(...)");
            List listO0 = ArraysKt.O0(filters);
            listO0.add(0, this.mLengthFilter);
            i1Var.f62695c.setFilters((InputFilter[]) listO0.toArray(new InputFilter[0]));
            TitleLayout titleLayout = i1Var.f62700h;
            String string = getString(R$string.user_setting_feedback);
            Intrinsics.g(string, "getString(...)");
            titleLayout.setTitleText(string);
            i1Var.f62694b.setOnClickListener(new View.OnClickListener() { // from class: xw.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserSettingFeedbackActivity.p0(this.f78452a, view);
                }
            });
            i1Var.getRoot().setOnClickListener(new View.OnClickListener() { // from class: xw.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserSettingFeedbackActivity.q0(this.f78453a, view);
                }
            });
            i1Var.f62697e.setOnClickListener(new View.OnClickListener() { // from class: xw.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserSettingFeedbackActivity.r0(this.f78454a, view);
                }
            });
            i1Var.f62702j.setOnClickListener(new View.OnClickListener() { // from class: xw.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserSettingFeedbackActivity.s0(this.f78455a, view);
                }
            });
        }
    }

    private final void l0() {
    }

    private final void n0() {
        Function1 function1 = new Function1() { // from class: xw.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserSettingFeedbackActivity.o0(this.f78451a, (fp.a) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0(UserSettingFeedbackActivity userSettingFeedbackActivity, a it) {
        Intrinsics.h(it, "it");
        Integer numE = it.e();
        if (numE != null && numE.intValue() == 0) {
            userSettingFeedbackActivity.v0(it);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(UserSettingFeedbackActivity userSettingFeedbackActivity, View view) {
        Navigator.x(TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SETTINGS").I("TV_DATA", new FbTvData("1", 1, 1)), userSettingFeedbackActivity, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(UserSettingFeedbackActivity userSettingFeedbackActivity, View view) {
        KeyboardUtils.d(userSettingFeedbackActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(UserSettingFeedbackActivity userSettingFeedbackActivity, View view) {
        SelectImageActivity.INSTANCE.a(userSettingFeedbackActivity, 0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(UserSettingFeedbackActivity userSettingFeedbackActivity, View view) {
        Navigator.w(TheRouter.c("/loginapi/select_country"), userSettingFeedbackActivity, 100, null, 4, null);
    }

    private final void t0() {
        xw.c cVar = (xw.c) new v0(this).a(xw.c.class);
        cVar.f().j(this, new d(new Function1() { // from class: xw.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserSettingFeedbackActivity.u0(this.f78450a, (String) obj);
            }
        }));
        this.mUserFeedbackViewModel = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u0(UserSettingFeedbackActivity userSettingFeedbackActivity, String str) {
        if (TextUtils.isEmpty(str)) {
            userSettingFeedbackActivity.w0();
            return Unit.f67061a;
        }
        userSettingFeedbackActivity.getClass();
        uh.b.f76753a.d(R$string.upload_success);
        userSettingFeedbackActivity.l0();
        userSettingFeedbackActivity.finish();
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void v0(a operationMenu) {
        String localPath;
        List listH = operationMenu.h();
        if (listH == null || listH.isEmpty()) {
            return;
        }
        this.photoEntity = (PhotoEntity) listH.get(0);
        i1 i1Var = (i1) getMViewBinding();
        AppCompatImageView ivAddImage = i1Var.f62698f;
        Intrinsics.g(ivAddImage, "ivAddImage");
        jg.c.g(ivAddImage);
        PhotoEntity photoEntity = this.photoEntity;
        if (photoEntity == null || (localPath = photoEntity.getLocalPath()) == null) {
            return;
        }
        Glide.with((FragmentActivity) this).load2(new File(localPath)).into(i1Var.f62697e);
    }

    private final void w0() {
        l0();
        uh.b.f76753a.d(R$string.upload_failed);
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public i1 getViewBinding() {
        i1 i1VarC = i1.c(getLayoutInflater());
        Intrinsics.g(i1VarC, "inflate(...)");
        return i1VarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Serializable serializableExtra;
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 100 && resultCode == -1 && data != null && (serializableExtra = data.getSerializableExtra("countryCode")) != null && (serializableExtra instanceof Country)) {
            Country country = (Country) serializableExtra;
            this.mCountry = country;
            ((i1) getMViewBinding()).f62702j.setText(country.getCountry_s() + " + " + country.getCode());
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String stringExtra = getIntent().getStringExtra("feedback_from_page");
        if (stringExtra == null) {
            stringExtra = "SETTINGS";
        }
        this.feedbackFromPage = stringExtra;
        this.subjectId = getIntent().getStringExtra("subject_id");
        initView();
        t0();
        n0();
    }
}
