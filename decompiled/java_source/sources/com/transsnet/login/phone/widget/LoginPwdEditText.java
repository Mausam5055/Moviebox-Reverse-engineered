package com.transsnet.login.phone.widget;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatEditText;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsnet.login.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0012\u0010\u000eJ\u0019\u0010\u0015\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u001c\u0010\u001dJG\u0010\"\u001a\u00020\f28\u0010!\u001a4\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u001a\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\f0\u001e¢\u0006\u0004\b\"\u0010#J\r\u0010$\u001a\u00020\u0017¢\u0006\u0004\b$\u0010\u0019J\r\u0010%\u001a\u00020\u0017¢\u0006\u0004\b%\u0010\u0019RV\u0010*\u001a6\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u001a\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\f\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010#R\u001c\u0010.\u001a\n ,*\u0004\u0018\u00010+0+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010-R\u001c\u0010/\u001a\n ,*\u0004\u0018\u00010+0+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010-R\u001c\u00100\u001a\n ,*\u0004\u0018\u00010+0+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010-¨\u00061"}, d2 = {"Lcom/transsnet/login/phone/widget/LoginPwdEditText;", "Landroidx/appcompat/widget/AppCompatEditText;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "c", "()V", "g", "e", "f", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "pwd", "a", "(Ljava/lang/String;)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Z", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "tips", "enableStatusChange", "(ZLjava/lang/String;)V", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setEnableStatusChangeListener", "(Lkotlin/jvm/functions/Function2;)V", "isCanClickNext", "isCharNumRuleLength", "Lkotlin/jvm/functions/Function2;", "getMListener", "()Lkotlin/jvm/functions/Function2;", "setMListener", "mListener", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "Ljava/util/regex/Pattern;", "pRule", "clickRule", "charNumRuleLength", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginPwdEditText extends AppCompatEditText {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Function2 mListener;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Pattern pRule;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Pattern clickRule;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Pattern charNumRuleLength;

    public static final class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            LoginPwdEditText.this.a(editable != null ? editable.toString() : null);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public static final class b extends InputFilter.LengthFilter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LoginPwdEditText f60543a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Ref.IntRef intRef, LoginPwdEditText loginPwdEditText) {
            super(intRef.element);
            this.f60543a = loginPwdEditText;
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
                this.f60543a.e();
            }
            return charSequence;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginPwdEditText(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.pRule = Pattern.compile("^[0-9a-zA-Z]*$");
        this.clickRule = Pattern.compile("^[0-9a-zA-Z]{6,18}$");
        this.charNumRuleLength = Pattern.compile("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,18}$");
        c();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginPwdEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.pRule = Pattern.compile("^[0-9a-zA-Z]*$");
        this.clickRule = Pattern.compile("^[0-9a-zA-Z]{6,18}$");
        this.charNumRuleLength = Pattern.compile("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,18}$");
        c();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginPwdEditText(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.pRule = Pattern.compile("^[0-9a-zA-Z]*$");
        this.clickRule = Pattern.compile("^[0-9a-zA-Z]{6,18}$");
        this.charNumRuleLength = Pattern.compile("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,18}$");
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String pwd) {
        if (pwd == null) {
            return;
        }
        if (!b()) {
            f();
        } else if (pwd.length() > 18) {
            e();
        } else {
            d();
        }
    }

    private final boolean b() {
        Editable text = getText();
        if (text != null) {
            return this.pRule.matcher(text).matches();
        }
        return false;
    }

    private final void c() {
        g();
        addTextChangedListener(new a());
        setTransformationMethod(new bz.a());
    }

    private final void d() {
        enableStatusChange(true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        enableStatusChange(false, getContext().getString(R$string.login_pwd_max_len_tips));
    }

    private final void f() {
        enableStatusChange(false, getContext().getString(R$string.login_pwd_rule));
    }

    private final void g() {
        InputFilter[] filters = getFilters();
        Intrinsics.g(filters, "getFilters(...)");
        List<InputFilter> listO0 = ArraysKt.O0(filters);
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = 18;
        for (InputFilter inputFilter : listO0) {
            if (inputFilter instanceof InputFilter.LengthFilter) {
                intRef.element = ((InputFilter.LengthFilter) inputFilter).getMax();
                break;
            }
        }
        listO0.add(0, new b(intRef, this));
        setFilters((InputFilter[]) listO0.toArray(new InputFilter[0]));
    }

    public final void enableStatusChange(boolean enable, String tips) {
        Function2 function2 = this.mListener;
        if (function2 != null) {
            function2.invoke(Boolean.valueOf(enable), tips);
        }
    }

    public final Function2<Boolean, String, Unit> getMListener() {
        return this.mListener;
    }

    public final boolean isCanClickNext() {
        Editable text = getText();
        if (text != null) {
            return this.clickRule.matcher(text).matches();
        }
        return false;
    }

    public final boolean isCharNumRuleLength() {
        Editable text = getText();
        if (text != null) {
            return this.charNumRuleLength.matcher(text).matches();
        }
        return false;
    }

    public final void setEnableStatusChangeListener(Function2<? super Boolean, ? super String, Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.mListener = listener;
    }

    public final void setMListener(Function2<? super Boolean, ? super String, Unit> function2) {
        this.mListener = function2;
    }
}
