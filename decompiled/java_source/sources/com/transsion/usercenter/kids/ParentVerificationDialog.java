package com.transsion.usercenter.kids;

import android.R;
import android.app.Dialog;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.dialog.BaseDialog;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.baseui.util.m;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.kids.ParentVerificationDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import lg.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 +2\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u0019\u0010\u0010\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J!\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006,"}, d2 = {"Lcom/transsion/usercenter/kids/ParentVerificationDialog;", "Lcom/tn/lib/dialog/BaseDialog;", "<init>", "()V", "", "h0", "f0", "g0", "", "input", "m0", "(Ljava/lang/String;)V", "l0", "e0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", TmcConstants.NAVIGATION_ON_START, "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "a", "Ljava/lang/String;", "kidsId", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "multiplier1", "c", "multiplier2", "Lcom/tn/lib/widget/TnTextView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/tn/lib/widget/TnTextView;", "tvMathProblem", "Landroid/widget/EditText;", "e", "Landroid/widget/EditText;", "etAnswer", "f", "Landroid/view/View;", "btnVerify", "g", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ParentVerificationDialog extends BaseDialog {

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String kidsId;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int multiplier1;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int multiplier2;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private TnTextView tvMathProblem;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private EditText etAnswer;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private View btnVerify;

    /* JADX INFO: renamed from: com.transsion.usercenter.kids.ParentVerificationDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ParentVerificationDialog a(String kidsId) {
            Intrinsics.h(kidsId, "kidsId");
            ParentVerificationDialog parentVerificationDialog = new ParentVerificationDialog();
            Bundle bundle = new Bundle();
            bundle.putString("arg_kids_id", kidsId);
            parentVerificationDialog.setArguments(bundle);
            return parentVerificationDialog;
        }
    }

    public static final class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            View view = ParentVerificationDialog.this.btnVerify;
            if (view != null) {
                view.setAlpha((editable == null || editable.length() == 0) ? 0.5f : 1.0f);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public ParentVerificationDialog() {
        super(R$layout.dialog_parent_verification);
        this.kidsId = "";
    }

    private final void e0() {
        EditText editText = this.etAnswer;
        if (editText != null) {
            KeyboardUtils.e(editText);
        }
        dismissAllowingStateLoss();
    }

    private final void f0() {
        IntRange intRange = new IntRange(10, 20);
        Random.Companion companion = Random.INSTANCE;
        this.multiplier1 = RangesKt.q(intRange, companion);
        int iQ = RangesKt.q(new IntRange(2, 5), companion);
        this.multiplier2 = iQ;
        TnTextView tnTextView = this.tvMathProblem;
        if (tnTextView != null) {
            tnTextView.setText(this.multiplier1 + " × " + iQ + " = ?");
        }
        EditText editText = this.etAnswer;
        if (editText != null) {
            editText.setText("");
        }
        View view = this.btnVerify;
        if (view != null) {
            view.setAlpha(0.5f);
        }
    }

    private final void g0() {
        EditText editText = this.etAnswer;
        if (editText != null) {
            editText.addTextChangedListener(new b());
        }
    }

    private final void h0() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        window.setAttributes(attributes);
        window.setGravity(80);
        window.setSoftInputMode(20);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(ParentVerificationDialog parentVerificationDialog, View view) {
        parentVerificationDialog.e0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(ParentVerificationDialog parentVerificationDialog, View view) {
        Editable text;
        String string;
        EditText editText = parentVerificationDialog.etAnswer;
        String string2 = (editText == null || (text = editText.getText()) == null || (string = text.toString()) == null) ? null : StringsKt.n1(string).toString();
        if (string2 == null) {
            string2 = "";
        }
        parentVerificationDialog.m0(string2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(ParentVerificationDialog parentVerificationDialog) {
        parentVerificationDialog.l0();
    }

    private final void l0() {
        EditText editText = this.etAnswer;
        if (editText != null) {
            editText.requestFocus();
        }
        EditText editText2 = this.etAnswer;
        if (editText2 != null) {
            KeyboardUtils.i(editText2);
        }
    }

    private final void m0(String input) {
        Integer numV = StringsKt.v(input);
        a.C0828a.f(a.f68839a, "ParentVerificationDialog", "multiplication problem verified result " + (numV != null && numV.intValue() == this.multiplier1 * this.multiplier2) + ".", false, 4, null);
        int i11 = this.multiplier1 * this.multiplier2;
        if (numV != null && numV.intValue() == i11) {
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            e0();
            PinInputDialog.Companion.b(PinInputDialog.INSTANCE, true, new Function1() { // from class: pw.a0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ParentVerificationDialog.n0((String) obj);
                }
            }, null, 4, null).X(fragmentActivityRequireActivity, "PinInputDialog");
            return;
        }
        String string = getString(R$string.kids_verify_wrong_answer);
        Intrinsics.g(string, "getString(...)");
        m.b(string);
        f0();
        l0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n0(String pin) {
        Intrinsics.h(pin, "pin");
        KidsAccountManager.f43286a.p(pin);
        return Unit.f67061a;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        super.onCreate(savedInstanceState);
        setStyle(2, 0);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("arg_kids_id")) == null) {
            string = "";
        }
        this.kidsId = string;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setBackgroundDrawableResource(R.color.transparent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.tvMathProblem = (TnTextView) view.findViewById(R$id.tvMathProblem);
        this.etAnswer = (EditText) view.findViewById(R$id.etAnswer);
        this.btnVerify = view.findViewById(R$id.btnVerify);
        h0();
        f0();
        g0();
        View viewFindViewById = view.findViewById(R$id.ivClose);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: pw.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ParentVerificationDialog.i0(this.f72539a, view2);
                }
            });
        }
        View view2 = this.btnVerify;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: pw.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    ParentVerificationDialog.j0(this.f72540a, view3);
                }
            });
        }
        EditText editText = this.etAnswer;
        if (editText != null) {
            editText.post(new Runnable() { // from class: pw.z
                @Override // java.lang.Runnable
                public final void run() {
                    ParentVerificationDialog.k0(this.f72541a);
                }
            });
        }
    }
}
