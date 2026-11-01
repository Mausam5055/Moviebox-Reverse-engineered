package com.transsion.usercenter.setting.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.bottomsheet.c;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baselib.locale.LocaleChangedHelper;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.setting.dialog.LocaleLanguageListDialog;
import com.transsion.usercenter.setting.viewmodel.LocaleLanguageViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.d0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import p6.d;
import vw.a;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000  2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u0019\u0010\r\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0010\u001a\u00020\u000f2\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "t0", "(Landroid/view/View;)V", "initAdapter", "r0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lfw/d0;", "c", "Lfw/d0;", "viewBinding", "Lcom/transsion/usercenter/setting/adapter/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/usercenter/setting/adapter/b;", "adapter", "Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;", "e", "Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;", "viewModel", "f", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LocaleLanguageListDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private d0 viewBinding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private com.transsion.usercenter.setting.adapter.b adapter;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private LocaleLanguageViewModel viewModel;

    /* JADX INFO: loaded from: classes6.dex */
    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57396a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57396a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57396a;
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
            this.f57396a.invoke(obj);
        }
    }

    public LocaleLanguageListDialog() {
        super(R$layout.dialog_locale_language);
    }

    private final void initAdapter() {
        RecyclerView recyclerView;
        final com.transsion.usercenter.setting.adapter.b bVar = new com.transsion.usercenter.setting.adapter.b(new ArrayList());
        bVar.w1(new d() { // from class: ww.c
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                LocaleLanguageListDialog.q0(bVar, this, baseQuickAdapter, view, i11);
            }
        });
        this.adapter = bVar;
        d0 d0Var = this.viewBinding;
        if (d0Var == null || (recyclerView = d0Var.f62611b) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(requireContext()));
        recyclerView.setAdapter(this.adapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(com.transsion.usercenter.setting.adapter.b bVar, LocaleLanguageListDialog localeLanguageListDialog, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (item instanceof a) {
            LocaleChangedHelper.f43290a.a(bVar.getContext(), ((a) item).b());
        }
        localeLanguageListDialog.dismissAllowingStateLoss();
    }

    private final void r0() {
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            LocaleLanguageViewModel localeLanguageViewModel = (LocaleLanguageViewModel) new v0(appCompatActivity).a(LocaleLanguageViewModel.class);
            localeLanguageViewModel.e().j(appCompatActivity, new b(new Function1() { // from class: ww.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LocaleLanguageListDialog.s0(this.f77979a, (List) obj);
                }
            }));
            localeLanguageViewModel.d();
            this.viewModel = localeLanguageViewModel;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s0(LocaleLanguageListDialog localeLanguageListDialog, List list) {
        com.transsion.usercenter.setting.adapter.b bVar = localeLanguageListDialog.adapter;
        if (bVar != null) {
            bVar.n1(list);
        }
        return Unit.f67061a;
    }

    private final void t0(View view) {
        AppCompatTextView appCompatTextView;
        d0 d0VarA = d0.a(view);
        this.viewBinding = d0VarA;
        if (d0VarA == null || (appCompatTextView = d0VarA.f62612c) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: ww.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LocaleLanguageListDialog.u0(this.f77980a, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(LocaleLanguageListDialog localeLanguageListDialog, View view) {
        localeLanguageListDialog.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        c cVar = new c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
            window.setGravity(80);
            window.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = y.e();
            window.setAttributes(attributes);
            window.setBackgroundDrawable(null);
        }
        return cVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        t0(view);
        initAdapter();
        r0();
    }
}
