package com.transsion.usercenter.edit.dialog;

import android.app.Dialog;
import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.KeyboardUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.widget.dialog.TRBaseDialog;
import com.transsion.usercenter.R$drawable;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.edit.dialog.EditNameDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import oh.h;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002:\u00010B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\r\u0010\u0004J\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\tJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\tJ%\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010#R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010\u000e¨\u00061"}, d2 = {"Lcom/transsion/usercenter/edit/dialog/EditNameDialog;", "Lcom/tn/lib/widget/dialog/TRBaseDialog;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "k0", "(Landroid/view/View;)V", "", "Y", "()I", "onResume", "Z", "", "isCancelable", "()Z", "onPause", "onStop", "onClick", "Landroid/content/Context;", "context", "Lcom/transsion/usercenter/edit/dialog/EditNameDialog$a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", MimeTypes.BASE_TYPE_TEXT, "m0", "(Landroid/content/Context;Lcom/transsion/usercenter/edit/dialog/EditNameDialog$a;Ljava/lang/String;)V", "Landroid/widget/EditText;", "f", "Landroid/widget/EditText;", "edMsg", "Landroid/widget/TextView;", "g", "Landroid/widget/TextView;", "tvLeft", "h", "tvRight", "i", "Lcom/transsion/usercenter/edit/dialog/EditNameDialog$a;", "j", "Ljava/lang/String;", CampaignEx.JSON_KEY_AD_K, "I", "textLimit", "l", "autoText", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class EditNameDialog extends TRBaseDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private EditText edMsg;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private TextView tvLeft;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private TextView tvRight;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private a listener;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String text = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int textLimit = 50;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean autoText;

    public interface a {
        void onDialogConfirm(String str);
    }

    public static final class b implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private CharSequence f56702a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f56703b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f56704c;

        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable) || (editable != null && editable.length() == 0)) {
                TextView textView = EditNameDialog.this.tvRight;
                if (textView != null) {
                    textView.setBackgroundResource(R$drawable.bg_selector_edit_btn);
                }
            } else {
                TextView textView2 = EditNameDialog.this.tvRight;
                if (textView2 != null) {
                    textView2.setBackgroundResource(R$drawable.bg_btn_right_selector);
                }
            }
            EditText editText = EditNameDialog.this.edMsg;
            Integer numValueOf = editText != null ? Integer.valueOf(editText.getSelectionStart()) : null;
            Intrinsics.e(numValueOf);
            this.f56703b = numValueOf.intValue();
            EditText editText2 = EditNameDialog.this.edMsg;
            Integer numValueOf2 = editText2 != null ? Integer.valueOf(editText2.getSelectionEnd()) : null;
            Intrinsics.e(numValueOf2);
            this.f56704c = numValueOf2.intValue();
            CharSequence charSequence = this.f56702a;
            Integer numValueOf3 = charSequence != null ? Integer.valueOf(charSequence.length()) : null;
            Intrinsics.e(numValueOf3);
            if (numValueOf3.intValue() < EditNameDialog.this.textLimit) {
                EditNameDialog.this.autoText = false;
                return;
            }
            if (EditNameDialog.this.autoText) {
                EditNameDialog.this.autoText = false;
                return;
            }
            uh.b.f76753a.d(R$string.profile_entre_limit);
            CharSequence charSequence2 = this.f56702a;
            Integer numValueOf4 = charSequence2 != null ? Integer.valueOf(charSequence2.length()) : null;
            Intrinsics.e(numValueOf4);
            if (numValueOf4.intValue() > EditNameDialog.this.textLimit) {
                if (editable != null) {
                    editable.delete(this.f56703b - 1, this.f56704c);
                }
                int i11 = this.f56704c;
                EditText editText3 = EditNameDialog.this.edMsg;
                if (editText3 != null) {
                    editText3.setText(editable);
                }
                EditText editText4 = EditNameDialog.this.edMsg;
                if (editText4 != null) {
                    editText4.setSelection(i11);
                }
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            this.f56702a = charSequence;
        }
    }

    private final void k0(View view) {
        EditText editText = this.edMsg;
        String string = StringsKt.n1(String.valueOf(editText != null ? editText.getText() : null)).toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        if (TextUtils.equals(this.text, string)) {
            X();
            return;
        }
        String strQ = StringsKt.Q(StringsKt.Q(string, "\\n", "", false, 4, null), "\\t", "", false, 4, null);
        this.text = strQ;
        a aVar = this.listener;
        if (aVar != null) {
            aVar.onDialogConfirm(strQ);
        }
        X();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(EditNameDialog editNameDialog) {
        editNameDialog.autoText = true;
        EditText editText = editNameDialog.edMsg;
        if (editText != null) {
            editText.setText(editNameDialog.text);
        }
        EditText editText2 = editNameDialog.edMsg;
        if (editText2 != null) {
            editText2.setSelection(editNameDialog.text.length());
        }
    }

    @Override // com.tn.lib.widget.dialog.TRBaseDialog
    public int Y() {
        return R$layout.dialog_edit_nickname_layout;
    }

    @Override // com.tn.lib.widget.dialog.TRBaseDialog
    public void Z(View view) {
        EditText editText;
        Intrinsics.h(view, "view");
        this.edMsg = (EditText) view.findViewById(R$id.ed_msg);
        this.tvLeft = (TextView) view.findViewById(R$id.tv_left);
        this.tvRight = (TextView) view.findViewById(R$id.tv_right);
        TextView textView = this.tvLeft;
        if (textView != null) {
            textView.setOnClickListener(this);
        }
        TextView textView2 = this.tvRight;
        if (textView2 != null) {
            textView2.setOnClickListener(this);
        }
        EditText editText2 = this.edMsg;
        if (editText2 != null) {
            editText2.requestFocus();
        }
        EditText editText3 = this.edMsg;
        if (editText3 != null) {
            editText3.addTextChangedListener(new b());
        }
        if (!TextUtils.isEmpty(this.text) && (editText = this.edMsg) != null) {
            editText.postDelayed(new Runnable() { // from class: nw.a
                @Override // java.lang.Runnable
                public final void run() {
                    EditNameDialog.l0(this.f70583a);
                }
            }, 200L);
        }
        KeyboardUtils.h();
    }

    @Override // androidx.fragment.app.DialogFragment
    public boolean isCancelable() {
        return true;
    }

    public final void m0(Context context, a listener, String text) {
        Intrinsics.h(context, "context");
        Intrinsics.h(listener, "listener");
        Intrinsics.h(text, "text");
        this.listener = listener;
        this.text = text;
        c0(context, "");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Editable text;
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i11 = R$id.tv_left;
        if (numValueOf == null || numValueOf.intValue() != i11) {
            int i12 = R$id.tv_right;
            if (numValueOf != null && numValueOf.intValue() == i12) {
                k0(view);
                return;
            }
            return;
        }
        EditText editText = this.edMsg;
        if (editText != null && (text = editText.getText()) != null) {
            text.clear();
        }
        KeyboardUtils.e(view);
        X();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        Dialog dialog;
        Window window;
        Context context = getContext();
        if (context != null && (dialog = getDialog()) != null && (window = dialog.getWindow()) != null) {
            window.setLayout(h.f71021a.a(context, 280.0f), -2);
        }
        super.onResume();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        TextView textView = this.tvLeft;
        Intrinsics.e(textView);
        KeyboardUtils.e(textView);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            KeyboardUtils.d(activity);
        }
        a aVar = this.listener;
        if (aVar != null) {
            aVar.onDialogConfirm("");
        }
    }
}
