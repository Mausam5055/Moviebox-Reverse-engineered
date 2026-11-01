package com.transsion.fission;

import ak.x;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.fissionapi.IFissionProvider;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0013R\u001d\u0010\u001a\u001a\u0004\u0018\u00010\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/fission/FissionInvitationCodeActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lyk/a;", "<init>", "()V", "", "n0", "", "code", "q0", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/os/Bundle;)V", "k0", "()Lyk/a;", "", "isStatusDark", "()Z", "isTranslucent", "Lcom/transsion/fissionapi/IFissionProvider;", "a", "Lkotlin/Lazy;", "j0", "()Lcom/transsion/fissionapi/IFissionProvider;", "mFissionProvider", "Lcom/transsion/fission/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "i0", "()Lcom/transsion/fission/f;", "mFissionInvitationViewModel", "Fission_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FissionInvitationCodeActivity extends BaseActivity<yk.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy mFissionProvider = LazyKt.b(new Function0() { // from class: com.transsion.fission.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FissionInvitationCodeActivity.p0();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mFissionInvitationViewModel;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements TextWatcher {
        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AppCompatButton appCompatButton = ((yk.a) FissionInvitationCodeActivity.this.getMViewBinding()).f79025b;
            boolean z10 = false;
            if (editable != null && editable.length() == 8) {
                z10 = true;
            }
            appCompatButton.setSelected(z10);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f44137a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f44137a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f44137a;
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
            this.f44137a.invoke(obj);
        }
    }

    public FissionInvitationCodeActivity() {
        final Function0 function0 = null;
        this.mFissionInvitationViewModel = new ViewModelLazy(Reflection.b(f.class), new Function0<x0>() { // from class: com.transsion.fission.FissionInvitationCodeActivity$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() { // from class: com.transsion.fission.FissionInvitationCodeActivity$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<p1.a>() { // from class: com.transsion.fission.FissionInvitationCodeActivity$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final p1.a invoke() {
                p1.a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (p1.a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    private final f i0() {
        return (f) this.mFissionInvitationViewModel.getValue();
    }

    private final IFissionProvider j0() {
        return (IFissionProvider) this.mFissionProvider.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(FissionInvitationCodeActivity fissionInvitationCodeActivity, View view) {
        fissionInvitationCodeActivity.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void m0(FissionInvitationCodeActivity fissionInvitationCodeActivity, View view) {
        Editable text = ((yk.a) fissionInvitationCodeActivity.getMViewBinding()).f79026c.getText();
        String string = text != null ? text.toString() : null;
        if (string == null || string.length() != 8) {
            return;
        }
        fissionInvitationCodeActivity.q0(string);
    }

    private final void n0() {
        i0().e().j(this, new b(new Function1() { // from class: com.transsion.fission.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FissionInvitationCodeActivity.o0(this.f44141a, (BaseDto) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0(FissionInvitationCodeActivity fissionInvitationCodeActivity, BaseDto baseDto) {
        if (baseDto == null) {
            return Unit.f67061a;
        }
        if (Intrinsics.c(baseDto.getCode(), "0")) {
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.fission_invitation_success);
            fissionInvitationCodeActivity.setResult(-1);
            fissionInvitationCodeActivity.finish();
        } else {
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.fission_invitation_err);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IFissionProvider p0() {
        return (IFissionProvider) TheRouter.d(IFissionProvider.class, new Object[0]);
    }

    private final void q0(String code) {
        if (oh.g.f71020a.a(this)) {
            i0().g(code);
        } else {
            com.tn.lib.widget.toast.core.h.f41479a.k(com.transsion.baseui.R$string.base_net_err);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        super.initView(savedInstanceState);
        TitleLayout titleLayout = ((yk.a) getMViewBinding()).f79027d;
        String string = getString(R$string.fission_invitation_code);
        Intrinsics.g(string, "getString(...)");
        titleLayout.setTitleText(string);
        ((yk.a) getMViewBinding()).f79027d.setLeftOnclick(new View.OnClickListener() { // from class: com.transsion.fission.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FissionInvitationCodeActivity.l0(this.f44139a, view);
            }
        });
        AppCompatEditText appCompatEditText = ((yk.a) getMViewBinding()).f79026c;
        IFissionProvider iFissionProviderJ0 = j0();
        appCompatEditText.setText(iFissionProviderJ0 != null ? iFissionProviderJ0.h() : null);
        AppCompatEditText etInvitationCode = ((yk.a) getMViewBinding()).f79026c;
        Intrinsics.g(etInvitationCode, "etInvitationCode");
        al.a.a(etInvitationCode, com.blankj.utilcode.util.i.e(4.0f));
        AppCompatEditText etInvitationCode2 = ((yk.a) getMViewBinding()).f79026c;
        Intrinsics.g(etInvitationCode2, "etInvitationCode");
        etInvitationCode2.addTextChangedListener(new a());
        ((yk.a) getMViewBinding()).f79025b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.fission.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FissionInvitationCodeActivity.m0(this.f44140a, view);
            }
        });
        n0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("dark_mode_follow_sys", true) && !x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public yk.a getViewBinding() {
        yk.a aVarC = yk.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }
}
