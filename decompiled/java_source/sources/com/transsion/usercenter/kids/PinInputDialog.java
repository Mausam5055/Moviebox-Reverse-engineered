package com.transsion.usercenter.kids;

import android.R;
import android.app.Dialog;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.dialog.BaseDialog;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.baseui.util.m;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.kids.PinInputDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import hj.i;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import lg.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\n\u0018\u0000 R2\u00020\u0001:\u0002S)B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\u0003J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001e\u0010\u0003J!\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b!\u0010\"J)\u0010'\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\b2\u0006\u0010$\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00101\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010*R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00107\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00104R\u0016\u0010:\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010*R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010B\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010?R\u0018\u0010E\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u001c\u0010M\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0J8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u001c\u0010O\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0J8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010LR\u001c\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0J8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010L¨\u0006T"}, d2 = {"Lcom/transsion/usercenter/kids/PinInputDialog;", "Lcom/tn/lib/dialog/BaseDialog;", "<init>", "()V", "", "q0", "A0", "o0", "", "filledCount", "z0", "(I)V", "", "pin", "n0", "(Ljava/lang/String;)V", "k0", "m0", "r0", "y0", "l0", "x0", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", TmcConstants.NAVIGATION_ON_START, "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "a", "Ljava/lang/String;", "pageName", "Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;", "mode", "c", "kidsId", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "showForgetPin", "e", "isReset", "f", "I", "setStep", "g", "firstPin", "Lcom/tn/lib/widget/TnTextView;", "h", "Lcom/tn/lib/widget/TnTextView;", "tvTitle", "i", "tvDesc", "j", "Landroid/view/View;", "tvForgetPin", "Landroid/widget/EditText;", CampaignEx.JSON_KEY_AD_K, "Landroid/widget/EditText;", "etHiddenPin", "", "l", "[Landroid/view/View;", "pinBoxes", "m", "pinDots", "n", "pinCursors", "o", "PinMode", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PinInputDialog extends BaseDialog {

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static Function1 f56766p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static Function0 f56767q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static Function0 f56768r;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private PinMode mode;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String kidsId;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean showForgetPin;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isReset;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int setStep;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String firstPin;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private TnTextView tvTitle;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private TnTextView tvDesc;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private View tvForgetPin;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private EditText etHiddenPin;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final View[] pinBoxes;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final View[] pinDots;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final View[] pinCursors;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;", "", "<init>", "(Ljava/lang/String;I)V", "SET", "VERIFY", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum PinMode {
        SET,
        VERIFY;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<PinMode> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: renamed from: com.transsion.usercenter.kids.PinInputDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ PinInputDialog b(Companion companion, boolean z10, Function1 function1, Function0 function0, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                z10 = false;
            }
            if ((i11 & 4) != 0) {
                function0 = null;
            }
            return companion.a(z10, function1, function0);
        }

        public static /* synthetic */ PinInputDialog d(Companion companion, String str, boolean z10, Function0 function0, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                z10 = false;
            }
            return companion.c(str, z10, function0);
        }

        public final PinInputDialog a(boolean z10, Function1 onPinSet, Function0 function0) {
            Intrinsics.h(onPinSet, "onPinSet");
            PinInputDialog.f56766p = onPinSet;
            PinInputDialog.f56767q = null;
            PinInputDialog.f56768r = function0;
            PinInputDialog pinInputDialog = new PinInputDialog();
            Bundle bundle = new Bundle();
            bundle.putString("arg_mode", "SET");
            bundle.putBoolean("arg_is_reset", z10);
            pinInputDialog.setArguments(bundle);
            return pinInputDialog;
        }

        public final PinInputDialog c(String kidsId, boolean z10, Function0 onVerified) {
            Intrinsics.h(kidsId, "kidsId");
            Intrinsics.h(onVerified, "onVerified");
            PinInputDialog.f56767q = onVerified;
            PinInputDialog.f56766p = null;
            PinInputDialog.f56768r = null;
            PinInputDialog pinInputDialog = new PinInputDialog();
            Bundle bundle = new Bundle();
            bundle.putString("arg_mode", "VERIFY");
            bundle.putString("arg_kids_id", kidsId);
            bundle.putBoolean("arg_show_forget_pin", z10);
            pinInputDialog.setArguments(bundle);
            return pinInputDialog;
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56783a;

        static {
            int[] iArr = new int[PinMode.values().length];
            try {
                iArr[PinMode.VERIFY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PinMode.SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56783a = iArr;
        }
    }

    public static final class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            int length = editable != null ? editable.length() : 0;
            PinInputDialog.this.z0(length);
            if (length == 4) {
                PinInputDialog.this.n0(String.valueOf(editable));
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public PinInputDialog() {
        super(R$layout.dialog_pin_input);
        this.pageName = "";
        this.mode = PinMode.SET;
        this.kidsId = "";
        this.setStep = 1;
        this.firstPin = "";
        this.pinBoxes = new View[4];
        this.pinDots = new View[4];
        this.pinCursors = new View[4];
    }

    private final void A0() {
        if (this.mode == PinMode.VERIFY) {
            TnTextView tnTextView = this.tvTitle;
            if (tnTextView != null) {
                tnTextView.setText(R$string.kids_pin_verify_title);
            }
            if (this.showForgetPin) {
                TnTextView tnTextView2 = this.tvDesc;
                if (tnTextView2 != null) {
                    tnTextView2.setText(R$string.kids_pin_delete_verify_desc);
                    return;
                }
                return;
            }
            TnTextView tnTextView3 = this.tvDesc;
            if (tnTextView3 != null) {
                tnTextView3.setVisibility(8);
                return;
            }
            return;
        }
        int i11 = this.setStep;
        if (i11 == 1 && this.isReset) {
            TnTextView tnTextView4 = this.tvTitle;
            if (tnTextView4 != null) {
                tnTextView4.setText(R$string.kids_pin_reset_title);
            }
            TnTextView tnTextView5 = this.tvDesc;
            if (tnTextView5 != null) {
                tnTextView5.setVisibility(4);
                return;
            }
            return;
        }
        if (i11 == 1) {
            TnTextView tnTextView6 = this.tvTitle;
            if (tnTextView6 != null) {
                tnTextView6.setText(R$string.kids_pin_set_title);
            }
            TnTextView tnTextView7 = this.tvDesc;
            if (tnTextView7 != null) {
                tnTextView7.setText(R$string.kids_pin_set_desc);
                return;
            }
            return;
        }
        TnTextView tnTextView8 = this.tvTitle;
        if (tnTextView8 != null) {
            tnTextView8.setText(R$string.kids_pin_confirm_title);
        }
        TnTextView tnTextView9 = this.tvDesc;
        if (tnTextView9 != null) {
            tnTextView9.setVisibility(0);
        }
        TnTextView tnTextView10 = this.tvDesc;
        if (tnTextView10 != null) {
            tnTextView10.setText(R$string.kids_pin_confirm_desc);
        }
    }

    private final void k0() {
        EditText editText = this.etHiddenPin;
        if (editText != null) {
            editText.setText("");
        }
    }

    private final void l0() {
        EditText editText = this.etHiddenPin;
        if (editText != null) {
            KeyboardUtils.e(editText);
        }
        dismissAllowingStateLoss();
    }

    private final void m0() {
        Object systemService = requireContext().getSystemService("keyguard");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        KeyguardManager keyguardManager = (KeyguardManager) systemService;
        a.C0828a.f(a.f68839a, "PinInputDialog", "start handleForgetPin, is device secure " + keyguardManager.isDeviceSecure(), false, 4, null);
        if (keyguardManager.isDeviceSecure()) {
            startActivityForResult(keyguardManager.createConfirmDeviceCredentialIntent(getString(R$string.kids_parent_verify_title), getString(R$string.kids_parent_verify_desc)), TaErrorCode.CODE_UNINIT);
            return;
        }
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        String str = this.kidsId;
        l0();
        ParentVerificationDialog.f56757g.a(str).X(fragmentActivityRequireActivity, "ParentVerificationDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0(String pin) {
        int i11 = b.f56783a[this.mode.ordinal()];
        if (i11 == 1) {
            if (!KidsAccountManager.f43286a.q(pin)) {
                a.C0828a.f(a.f68839a, "PinInputDialog", "PIN verify failed.", false, 4, null);
                String string = getString(R$string.kids_pin_incorrect);
                Intrinsics.g(string, "getString(...)");
                m.b(string);
                k0();
                return;
            }
            a.C0828a.f(a.f68839a, "PinInputDialog", "PIN verify success.", false, 4, null);
            l0();
            Function0 function0 = f56767q;
            if (function0 != null) {
                function0.invoke();
            }
            f56767q = null;
            return;
        }
        if (i11 != 2) {
            throw new NoWhenBranchMatchedException();
        }
        if (this.setStep == 1) {
            this.firstPin = pin;
            this.setStep = 2;
            k0();
            A0();
            return;
        }
        if (!Intrinsics.c(pin, this.firstPin)) {
            a.C0828a.f(a.f68839a, "PinInputDialog", "PIN set not match.", false, 4, null);
            String string2 = getString(R$string.kids_pin_no_match);
            Intrinsics.g(string2, "getString(...)");
            m.b(string2);
            k0();
            return;
        }
        a.C0828a.f(a.f68839a, "PinInputDialog", "PIN set success.", false, 4, null);
        String string3 = getString(R$string.kids_pin_saved);
        Intrinsics.g(string3, "getString(...)");
        f56768r = null;
        l0();
        Function1 function1 = f56766p;
        if (function1 != null) {
            function1.invoke(pin);
        }
        f56766p = null;
        m.b(string3);
    }

    private final void o0() {
        EditText editText = this.etHiddenPin;
        if (editText != null) {
            editText.addTextChangedListener(new c());
        }
        EditText editText2 = this.etHiddenPin;
        if (editText2 != null) {
            editText2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: pw.g0
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z10) {
                    PinInputDialog.p0(this.f72515a, view, z10);
                }
            });
        }
        z0(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(PinInputDialog pinInputDialog, View view, boolean z10) {
        Editable text;
        EditText editText = pinInputDialog.etHiddenPin;
        pinInputDialog.z0((editText == null || (text = editText.getText()) == null) ? 0 : text.length());
    }

    private final void q0() {
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

    private final void r0() {
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        l0();
        Companion.b(INSTANCE, true, new Function1() { // from class: pw.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PinInputDialog.s0((String) obj);
            }
        }, null, 4, null).X(fragmentActivityRequireActivity, "PinInputDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s0(String pin) {
        Intrinsics.h(pin, "pin");
        KidsAccountManager.f43286a.p(pin);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(PinInputDialog pinInputDialog, View view) {
        pinInputDialog.m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(PinInputDialog pinInputDialog, View view) {
        a.C0828a.f(a.f68839a, "PinInputDialog", "close click.", false, 4, null);
        Function0 function0 = f56768r;
        f56768r = null;
        pinInputDialog.l0();
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(PinInputDialog pinInputDialog, View view) {
        pinInputDialog.y0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(PinInputDialog pinInputDialog) {
        pinInputDialog.y0();
    }

    private final void x0() {
        HashMap map = new HashMap();
        map.put("dialog_name", "pin_set");
        i.f64505a.s(this.pageName, "dialog_show", map);
    }

    private final void y0() {
        EditText editText = this.etHiddenPin;
        if (editText != null) {
            editText.setFocusableInTouchMode(true);
        }
        EditText editText2 = this.etHiddenPin;
        if (editText2 != null) {
            editText2.requestFocus();
        }
        EditText editText3 = this.etHiddenPin;
        if (editText3 != null) {
            KeyboardUtils.i(editText3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0(int filledCount) {
        Editable text;
        EditText editText = this.etHiddenPin;
        boolean z10 = editText != null && editText.hasFocus();
        EditText editText2 = this.etHiddenPin;
        String string = (editText2 == null || (text = editText2.getText()) == null) ? null : text.toString();
        if (string == null) {
            string = "";
        }
        View[] viewArr = this.pinDots;
        int length = viewArr.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            View view = viewArr[i11];
            int i13 = i12 + 1;
            TnTextView tnTextView = view instanceof TnTextView ? (TnTextView) view : null;
            if (i12 < filledCount) {
                if (tnTextView != null) {
                    tnTextView.setVisibility(0);
                }
                if (tnTextView != null) {
                    Character chV1 = StringsKt.v1(string, i12);
                    String string2 = chV1 != null ? chV1.toString() : null;
                    if (string2 == null) {
                        string2 = "";
                    }
                    tnTextView.setText(string2);
                }
            } else {
                if (tnTextView != null) {
                    tnTextView.setVisibility(8);
                }
                if (tnTextView != null) {
                    tnTextView.setText("");
                }
            }
            boolean z11 = i12 == filledCount && z10;
            View view2 = this.pinBoxes[i12];
            if (view2 != null) {
                view2.setSelected(z11);
            }
            View view3 = this.pinCursors[i12];
            if (z11) {
                if (view3 != null) {
                    view3.setVisibility(0);
                }
            } else if (view3 != null) {
                view3.setVisibility(8);
            }
            i11++;
            i12 = i13;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 9001 && resultCode == -1) {
            a.C0828a.f(a.f68839a, "PinInputDialog", "device secure verified success.", false, 4, null);
            r0();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.h(context, "context");
        super.onAttach(context);
        String simpleName = requireActivity().getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        this.pageName = simpleName;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        super.onCreate(savedInstanceState);
        setStyle(2, 0);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("arg_mode")) == null) {
            string = "SET";
        }
        this.mode = PinMode.valueOf(string);
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("arg_kids_id")) == null) {
            string2 = "";
        }
        this.kidsId = string2;
        Bundle arguments3 = getArguments();
        this.showForgetPin = arguments3 != null ? arguments3.getBoolean("arg_show_forget_pin", false) : false;
        Bundle arguments4 = getArguments();
        this.isReset = arguments4 != null ? arguments4.getBoolean("arg_is_reset", false) : false;
        a.C0828a.f(a.f68839a, "PinInputDialog", "dialog show, mode " + this.mode, false, 4, null);
        x0();
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
        this.tvTitle = (TnTextView) view.findViewById(R$id.tvTitle);
        this.tvDesc = (TnTextView) view.findViewById(R$id.tvDesc);
        this.tvForgetPin = view.findViewById(R$id.tvForgetPin);
        this.etHiddenPin = (EditText) view.findViewById(R$id.etHiddenPin);
        this.pinBoxes[0] = view.findViewById(R$id.pinBox0);
        this.pinBoxes[1] = view.findViewById(R$id.pinBox1);
        this.pinBoxes[2] = view.findViewById(R$id.pinBox2);
        this.pinBoxes[3] = view.findViewById(R$id.pinBox3);
        this.pinCursors[0] = view.findViewById(R$id.pinCursor0);
        this.pinCursors[1] = view.findViewById(R$id.pinCursor1);
        this.pinCursors[2] = view.findViewById(R$id.pinCursor2);
        this.pinCursors[3] = view.findViewById(R$id.pinCursor3);
        this.pinDots[0] = view.findViewById(R$id.pinDot0);
        this.pinDots[1] = view.findViewById(R$id.pinDot1);
        this.pinDots[2] = view.findViewById(R$id.pinDot2);
        this.pinDots[3] = view.findViewById(R$id.pinDot3);
        q0();
        A0();
        o0();
        if (this.mode == PinMode.VERIFY) {
            View view2 = this.tvForgetPin;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            View view3 = this.tvForgetPin;
            if (view3 != null) {
                view3.setOnClickListener(new View.OnClickListener() { // from class: pw.b0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        PinInputDialog.t0(this.f72503a, view4);
                    }
                });
            }
        }
        ImageView imageView = (ImageView) view.findViewById(R$id.ivClose);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: pw.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    PinInputDialog.u0(this.f72505a, view4);
                }
            });
        }
        View viewFindViewById = view.findViewById(R$id.layoutPinBoxes);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: pw.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    PinInputDialog.v0(this.f72507a, view4);
                }
            });
        }
        EditText editText = this.etHiddenPin;
        if (editText != null) {
            editText.postDelayed(new Runnable() { // from class: pw.e0
                @Override // java.lang.Runnable
                public final void run() {
                    PinInputDialog.w0(this.f72509a);
                }
            }, 200L);
        }
    }
}
