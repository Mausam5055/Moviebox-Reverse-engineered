package com.transsion.member.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.member.R$layout;
import com.transsion.member.R$string;
import com.transsion.member.n0;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 +2\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0018\u001a\u00020\u00042\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dR\u001e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lcom/transsion/member/dialog/MemberPromoCodeDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "initView", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", TmcConstants.NAVIGATION_ON_START, "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lkotlin/Function0;", "callBack", "z0", "(Lkotlin/jvm/functions/Function0;)V", "", NotificationCompat.CATEGORY_MESSAGE, "A0", "(Ljava/lang/String;)V", "c", "Lkotlin/jvm/functions/Function0;", "callback", "Lwm/j;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lwm/j;", "bind", "Lcom/transsion/member/n0;", "e", "Lkotlin/Lazy;", "t0", "()Lcom/transsion/member/n0;", "promoCodeViewModel", "f", "a", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MemberPromoCodeDialog extends BaseDialog {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f46482g = 8;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function0 callback;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private wm.j bind;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy promoCodeViewModel;

    /* JADX INFO: renamed from: com.transsion.member.dialog.MemberPromoCodeDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MemberPromoCodeDialog a(Function0 callBack) {
            Intrinsics.h(callBack, "callBack");
            MemberPromoCodeDialog memberPromoCodeDialog = new MemberPromoCodeDialog();
            memberPromoCodeDialog.z0(callBack);
            return memberPromoCodeDialog;
        }
    }

    public static final class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s11) {
            AppCompatEditText appCompatEditText;
            AppCompatEditText appCompatEditText2;
            Intrinsics.h(s11, "s");
            String string = s11.toString();
            if (Intrinsics.c(s11.toString(), string)) {
                return;
            }
            wm.j jVar = MemberPromoCodeDialog.this.bind;
            if (jVar != null && (appCompatEditText2 = jVar.f77772f) != null) {
                appCompatEditText2.setText(string);
            }
            wm.j jVar2 = MemberPromoCodeDialog.this.bind;
            if (jVar2 == null || (appCompatEditText = jVar2.f77772f) == null) {
                return;
            }
            appCompatEditText.setSelection(string.length());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s11, int i11, int i12, int i13) {
            Intrinsics.h(s11, "s");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s11, int i11, int i12, int i13) {
            ImageView imageView;
            AppCompatEditText appCompatEditText;
            Editable text;
            ImageView imageView2;
            Intrinsics.h(s11, "s");
            MemberPromoCodeDialog.this.A0("");
            wm.j jVar = MemberPromoCodeDialog.this.bind;
            if (jVar == null || (appCompatEditText = jVar.f77772f) == null || (text = appCompatEditText.getText()) == null || text.length() == 0) {
                wm.j jVar2 = MemberPromoCodeDialog.this.bind;
                if (jVar2 == null || (imageView = jVar2.f77769c) == null) {
                    return;
                }
                jg.c.g(imageView);
                return;
            }
            wm.j jVar3 = MemberPromoCodeDialog.this.bind;
            if (jVar3 == null || (imageView2 = jVar3.f77769c) == null) {
                return;
            }
            jg.c.k(imageView2);
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f46487a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f46487a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f46487a;
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
            this.f46487a.invoke(obj);
        }
    }

    public MemberPromoCodeDialog() {
        super(R$layout.dialog_member_promo_code_layout);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.member.dialog.MemberPromoCodeDialog$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.promoCodeViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(n0.class), new Function0<x0>() { // from class: com.transsion.member.dialog.MemberPromoCodeDialog$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.member.dialog.MemberPromoCodeDialog$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }

    private final void initView() {
        TextView textView;
        ImageView imageView;
        ImageView imageView2;
        AppCompatEditText appCompatEditText;
        wm.j jVar = this.bind;
        if (jVar != null && (appCompatEditText = jVar.f77772f) != null) {
            appCompatEditText.addTextChangedListener(new b());
        }
        wm.j jVar2 = this.bind;
        if (jVar2 != null && (imageView2 = jVar2.f77768b) != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.dialog.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MemberPromoCodeDialog.u0(this.f46544a, view);
                }
            });
        }
        wm.j jVar3 = this.bind;
        if (jVar3 != null && (imageView = jVar3.f77769c) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.dialog.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MemberPromoCodeDialog.v0(this.f46545a, view);
                }
            });
        }
        wm.j jVar4 = this.bind;
        if (jVar4 != null && (textView = jVar4.f77770d) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.dialog.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MemberPromoCodeDialog.w0(this.f46546a, view);
                }
            });
        }
        t0().e().j(getViewLifecycleOwner(), new c(new Function1() { // from class: com.transsion.member.dialog.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberPromoCodeDialog.x0(this.f46547a, (com.transsion.member.y0) obj);
            }
        }));
    }

    private final n0 t0() {
        return (n0) this.promoCodeViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(MemberPromoCodeDialog memberPromoCodeDialog, View view) {
        memberPromoCodeDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(MemberPromoCodeDialog memberPromoCodeDialog, View view) {
        AppCompatEditText appCompatEditText;
        wm.j jVar = memberPromoCodeDialog.bind;
        if (jVar == null || (appCompatEditText = jVar.f77772f) == null) {
            return;
        }
        appCompatEditText.setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(MemberPromoCodeDialog memberPromoCodeDialog, View view) {
        String string;
        TextView textView;
        AppCompatEditText appCompatEditText;
        Editable text;
        String string2;
        wm.j jVar = memberPromoCodeDialog.bind;
        if (jVar == null || (appCompatEditText = jVar.f77772f) == null || (text = appCompatEditText.getText()) == null || (string2 = text.toString()) == null || (string = StringsKt.n1(string2).toString()) == null) {
            string = "";
        }
        if (string.length() == 0) {
            String string3 = memberPromoCodeDialog.getString(R$string.member_promo_code_empty_tips);
            Intrinsics.g(string3, "getString(...)");
            memberPromoCodeDialog.A0(string3);
        } else {
            wm.j jVar2 = memberPromoCodeDialog.bind;
            if (jVar2 != null && (textView = jVar2.f77770d) != null) {
                textView.setEnabled(false);
            }
            memberPromoCodeDialog.t0().h(string);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x0(MemberPromoCodeDialog memberPromoCodeDialog, com.transsion.member.y0 y0Var) {
        TextView textView;
        if (!y0Var.c()) {
            if (Intrinsics.c(y0Var.a(), "400")) {
                String string = memberPromoCodeDialog.getString(R$string.member_promo_code_error_tips);
                Intrinsics.g(string, "getString(...)");
                memberPromoCodeDialog.A0(string);
            } else {
                com.tn.lib.widget.toast.core.h.f41479a.k(com.tn.lib.widget.R$string.error_load_failed);
            }
            wm.j jVar = memberPromoCodeDialog.bind;
            if (jVar != null && (textView = jVar.f77770d) != null) {
                textView.setEnabled(true);
            }
        } else if (y0Var.b() == null) {
            String string2 = memberPromoCodeDialog.getString(R$string.member_promo_code_error_tips);
            Intrinsics.g(string2, "getString(...)");
            memberPromoCodeDialog.A0(string2);
        } else {
            Context context = memberPromoCodeDialog.getContext();
            if (context != null) {
                if (y0Var.b().getVipDurationDays() > 0) {
                    uh.b.a aVar = uh.b.f76753a;
                    int i11 = R$layout.claim_succeed_layout;
                    String string3 = context.getString(R$string.member_claimed_succeed_days, Integer.valueOf(y0Var.b().getVipDurationDays()));
                    Intrinsics.g(string3, "getString(...)");
                    aVar.g(i11, string3, (24 & 4) != 0 ? 0 : 17, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : 0);
                } else {
                    com.tn.lib.widget.toast.core.h.f41479a.k(R$string.member_enjoy_your_benefits_now);
                }
            }
            memberPromoCodeDialog.dismissAllowingStateLoss();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(AppCompatEditText appCompatEditText) {
        appCompatEditText.requestFocus();
        KeyboardUtils.i(appCompatEditText);
    }

    public final void A0(String msg) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        Intrinsics.h(msg, "msg");
        if (msg.length() <= 0) {
            wm.j jVar = this.bind;
            if (jVar == null || (textView = jVar.f77771e) == null) {
                return;
            }
            jg.c.h(textView);
            return;
        }
        wm.j jVar2 = this.bind;
        if (jVar2 != null && (textView3 = jVar2.f77771e) != null) {
            textView3.setText(msg);
        }
        wm.j jVar3 = this.bind;
        if (jVar3 == null || (textView2 = jVar3.f77771e) == null) {
            return;
        }
        jg.c.k(textView2);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomInputDialogTheme);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(requireContext(), getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setGravity(80);
        }
        cVar.k().U0(3);
        cVar.k().T0(true);
        return cVar;
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        Function0 function0 = this.callback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        final AppCompatEditText appCompatEditText;
        super.onStart();
        wm.j jVar = this.bind;
        if (jVar == null || (appCompatEditText = jVar.f77772f) == null) {
            return;
        }
        appCompatEditText.postDelayed(new Runnable() { // from class: com.transsion.member.dialog.r
            @Override // java.lang.Runnable
            public final void run() {
                MemberPromoCodeDialog.y0(appCompatEditText);
            }
        }, 200L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(true);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(false);
        }
        this.bind = wm.j.a(view);
        initView();
    }

    public final void z0(Function0 callBack) {
        Intrinsics.h(callBack, "callBack");
        this.callback = callBack;
    }
}
