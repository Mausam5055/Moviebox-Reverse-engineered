package com.transsion.usercenter;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u0003J!\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR3\u0010&\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/transsion/usercenter/ProfileEditNicknameDialog;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "e0", "(Landroid/view/View;)V", "", "nickName", "d0", "(Ljava/lang/String;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", TmcConstants.NAVIGATION_ON_START, "onResume", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "tvCount", "Landroid/widget/EditText;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/EditText;", "etNickname", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "c", "Lkotlin/jvm/functions/Function1;", "callback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProfileEditNicknameDialog extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private TextView tvCount;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private EditText etNickname;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function1 callback = new Function1() { // from class: com.transsion.usercenter.r
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return ProfileEditNicknameDialog.c0((String) obj);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String nickName = "";

    public static final class a implements t.a {
        a() {
        }

        @Override // com.transsion.usercenter.t.a
        public void a() {
            com.tn.lib.widget.toast.core.h.f41479a.a(ProfileEditNicknameDialog.this.getString(R$string.profile_edit_nickname_tip));
        }
    }

    public static final class b extends com.transsion.usercenter.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ EditText f56661b;

        b(EditText editText) {
            this.f56661b = editText;
        }

        @Override // com.transsion.usercenter.a, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextView textView = ProfileEditNicknameDialog.this.tvCount;
            if (textView != null) {
                textView.setText(this.f56661b.getText().length() + "/30");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c0(String it) {
        Intrinsics.h(it, "it");
        return Unit.f67061a;
    }

    private final void d0(String nickName) {
        if (TextUtils.isEmpty(nickName)) {
            return;
        }
        this.callback.invoke(StringsKt.n1(nickName).toString());
    }

    private final void e0(View view) {
        EditText editText = (EditText) view.findViewById(R$id.etNickname);
        editText.setText(this.nickName);
        t tVar = new t(30);
        tVar.a(new a());
        editText.setFilters(new t[]{tVar});
        editText.addTextChangedListener(new b(editText));
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.transsion.usercenter.s
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i11, KeyEvent keyEvent) {
                return ProfileEditNicknameDialog.f0(this.f57329a, textView, i11, keyEvent);
            }
        });
        editText.setSelection(editText.getText().length());
        this.etNickname = editText;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f0(ProfileEditNicknameDialog profileEditNicknameDialog, TextView textView, int i11, KeyEvent keyEvent) {
        if (i11 != 6) {
            return false;
        }
        profileEditNicknameDialog.dismissAllowingStateLoss();
        EditText editText = profileEditNicknameDialog.etNickname;
        profileEditNicknameDialog.d0(String.valueOf(editText != null ? editText.getText() : null));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(ProfileEditNicknameDialog profileEditNicknameDialog) {
        FragmentActivity activity = profileEditNicknameDialog.getActivity();
        InputMethodManager inputMethodManager = (InputMethodManager) (activity != null ? activity.getSystemService("input_method") : null);
        EditText editText = profileEditNicknameDialog.etNickname;
        if (editText != null) {
            editText.requestFocus();
        }
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(profileEditNicknameDialog.etNickname, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(ProfileEditNicknameDialog profileEditNicknameDialog, View view) {
        EditText editText = profileEditNicknameDialog.etNickname;
        if (editText != null) {
            editText.setText("");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        return inflater.inflate(R$layout.profile_edit_nickname_dialog, container, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.transsion.usercenter.p
            @Override // java.lang.Runnable
            public final void run() {
                ProfileEditNicknameDialog.g0(this.f57040a);
            }
        }, 100L);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        Intrinsics.g(attributes, "getAttributes(...)");
        attributes.gravity = 80;
        attributes.width = -1;
        window.setAttributes(attributes);
        window.setBackgroundDrawable(new ColorDrawable(0));
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        TextView textView;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.tvCount = (TextView) view.findViewById(R$id.tvCount);
        if (!TextUtils.isEmpty(this.nickName) && (textView = this.tvCount) != null) {
            textView.setText(this.nickName.length() + "/30");
        }
        ((ImageView) view.findViewById(R$id.ivClear)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ProfileEditNicknameDialog.h0(this.f57328a, view2);
            }
        });
        e0(view);
    }
}
