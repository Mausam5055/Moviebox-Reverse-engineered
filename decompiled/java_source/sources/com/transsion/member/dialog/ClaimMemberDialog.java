package com.transsion.member.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.p009lifecycle.Lifecycle;
import com.bumptech.glide.Glide;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.member.R$layout;
import com.transsion.member.R$mipmap;
import com.transsion.member.R$string;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberTaskItem;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u0019\u0010\f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0003J\r\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0003R$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082D¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010)¨\u0006-"}, d2 = {"Lcom/transsion/member/dialog/ClaimMemberDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "t0", "(Landroid/view/View;)V", "x0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", TmcConstants.NAVIGATION_ON_START, "r0", "Lcom/transsion/memberapi/MemberTaskItem;", "c", "Lcom/transsion/memberapi/MemberTaskItem;", "s0", "()Lcom/transsion/memberapi/MemberTaskItem;", "y0", "(Lcom/transsion/memberapi/MemberTaskItem;)V", "info", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "getMBottomMargin", "()I", "z0", "(I)V", "mBottomMargin", "", "e", "J", "showTime", "Lkotlinx/coroutines/t1;", "f", "Lkotlinx/coroutines/t1;", "dismissJob", "g", "infoJob", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ClaimMemberDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private MemberTaskItem info;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int mBottomMargin;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final long showTime;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private t1 dismissJob;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private t1 infoJob;

    /* JADX INFO: renamed from: com.transsion.member.dialog.ClaimMemberDialog$onStart$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.member.dialog.ClaimMemberDialog$onStart$1", f = "ClaimMemberDialog.kt", l = {107}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ClaimMemberDialog.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                if (ClaimMemberDialog.this.getInfo() != null) {
                    long j11 = ClaimMemberDialog.this.showTime;
                    this.label = 1;
                    if (u0.a(j11, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            ClaimMemberDialog.this.r0();
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.member.dialog.ClaimMemberDialog$onStart$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.member.dialog.ClaimMemberDialog$onStart$2", f = "ClaimMemberDialog.kt", l = {Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ i1 $dataFlow;
        int label;
        final /* synthetic */ ClaimMemberDialog this$0;

        /* JADX INFO: renamed from: com.transsion.member.dialog.ClaimMemberDialog$onStart$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        @DebugMetadata(c = "com.transsion.member.dialog.ClaimMemberDialog$onStart$2$1", f = "ClaimMemberDialog.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
            final /* synthetic */ i1 $dataFlow;
            /* synthetic */ boolean Z$0;
            int label;
            final /* synthetic */ ClaimMemberDialog this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(ClaimMemberDialog claimMemberDialog, i1 i1Var, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = claimMemberDialog;
                this.$dataFlow = i1Var;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$dataFlow, continuation);
                anonymousClass1.Z$0 = ((Boolean) obj).booleanValue();
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke(((Boolean) obj).booleanValue(), (Continuation<? super Unit>) obj2);
            }

            public final Object invoke(boolean z10, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(Boolean.valueOf(z10), continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                if (!this.Z$0) {
                    this.this$0.r0();
                }
                com.transsion.member.a.f46406a.a("ClaimMemberDialog hasMemberShip:" + this.$dataFlow.getValue());
                return Unit.f67061a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(i1 i1Var, ClaimMemberDialog claimMemberDialog, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$dataFlow = i1Var;
            this.this$0 = claimMemberDialog;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$dataFlow, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                i1 i1Var = this.$dataFlow;
                if (i1Var != null) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, i1Var, null);
                    this.label = 1;
                    if (kotlinx.coroutines.flow.d.i(i1Var, anonymousClass1, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    public ClaimMemberDialog() {
        super(R$layout.dialog_member_claim_layout);
        this.mBottomMargin = com.blankj.utilcode.util.a0.a(50.0f);
        this.showTime = ToastStrategy.LONG_DURATION_TIMEOUT;
    }

    private final void t0(View view) {
        wm.h hVarA = wm.h.a(view);
        Intrinsics.g(hVarA, "bind(...)");
        hVarA.f77758d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ClaimMemberDialog.u0(this.f46523a, view2);
            }
        });
        hVarA.f77756b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.dialog.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ClaimMemberDialog.v0(this.f46525a, view2);
            }
        });
        MemberTaskItem memberTaskItem = this.info;
        if (memberTaskItem != null) {
            TextView textView = hVarA.f77761g;
            String title = memberTaskItem.getTitle();
            if (title == null) {
                title = "";
            }
            textView.setText(title);
            TextView textView2 = hVarA.f77760f;
            String subTitle = memberTaskItem.getSubTitle();
            textView2.setText(subTitle != null ? subTitle : "");
            TextView textView3 = hVarA.f77756b;
            String buttonName = memberTaskItem.getButtonName();
            if (buttonName == null) {
                buttonName = getString(R$string.member_claim_now);
                Intrinsics.g(buttonName, "getString(...)");
            }
            textView3.setText(buttonName);
            Glide.with(requireContext()).load2(memberTaskItem.getIcon()).placeholder(R$mipmap.ic_premium_mask).error(R$mipmap.ic_premium_mask).into(hVarA.f77759e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(ClaimMemberDialog claimMemberDialog, View view) {
        claimMemberDialog.r0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(final ClaimMemberDialog claimMemberDialog, View view) {
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            IMemberApi.a.b(iMemberApi, null, new Function0() { // from class: com.transsion.member.dialog.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ClaimMemberDialog.w0(this.f46527a);
                }
            }, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(ClaimMemberDialog claimMemberDialog) {
        claimMemberDialog.r0();
        return Unit.f67061a;
    }

    private final void x0() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(true);
        }
        window.setDimAmount(0.0f);
        window.setLayout(-1, -2);
        window.setGravity(48);
        WindowManager.LayoutParams attributes = window.getAttributes();
        Intrinsics.g(attributes, "getAttributes(...)");
        attributes.flags |= 32;
        window.setAttributes(attributes);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        t1 t1Var = this.dismissJob;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.dismissJob = null;
        t1 t1Var2 = this.infoJob;
        if (t1Var2 != null) {
            t1.a.b(t1Var2, null, 1, null);
        }
        this.infoJob = null;
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        try {
            super.onStart();
        } catch (Exception unused) {
            dismiss();
        }
        this.dismissJob = kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), y0.c(), null, new AnonymousClass1(null), 2, null);
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        this.infoJob = kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), y0.c(), null, new AnonymousClass2(iMemberApi != null ? iMemberApi.d() : null, this, null), 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        x0();
        t0(view);
    }

    public final void r0() {
        com.transsion.member.a.f46406a.a("ClaimMemberDialog lifecycle:" + getLifecycle().b());
        t1 t1Var = this.dismissJob;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        t1 t1Var2 = this.infoJob;
        if (t1Var2 != null) {
            t1.a.b(t1Var2, null, 1, null);
        }
        if (getLifecycle().b().isAtLeast(Lifecycle.State.RESUMED)) {
            try {
                dismiss();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: renamed from: s0, reason: from getter */
    public final MemberTaskItem getInfo() {
        return this.info;
    }

    public final void y0(MemberTaskItem memberTaskItem) {
        this.info = memberTaskItem;
    }

    public final void z0(int i11) {
        this.mBottomMargin = i11;
    }
}
