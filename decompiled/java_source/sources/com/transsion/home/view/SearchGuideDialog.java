package com.transsion.home.view;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.RoundedArrowImageView;
import com.transsion.baseui.dialog.BaseDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.h;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 %2\u00020\u0001:\u0001&B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0003J!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR \u0010 \u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lcom/transsion/home/view/SearchGuideDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "initView", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onResume", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "", "d0", "()Ljava/lang/String;", "Lgl/h;", "c", "Lgl/h;", "mViewBinding", "Lkotlin/Function0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function0;", "mCallback", "Landroidx/constraintlayout/widget/ConstraintLayout$b;", "e", "Landroidx/constraintlayout/widget/ConstraintLayout$b;", "searchLayoutParam", "f", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SearchGuideDialog extends BaseDialog {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f45708g = 8;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f45709h;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private h mViewBinding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Function0 mCallback;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private ConstraintLayout.b searchLayoutParam;

    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            RoundedArrowImageView roundedArrowImageView;
            ConstraintLayout constraintLayout;
            AppCompatImageView appCompatImageView;
            AppCompatImageView appCompatImageView2;
            ViewTreeObserver viewTreeObserver;
            h hVar = SearchGuideDialog.this.mViewBinding;
            if (hVar != null && (appCompatImageView2 = hVar.f63709c) != null && (viewTreeObserver = appCompatImageView2.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            h hVar2 = SearchGuideDialog.this.mViewBinding;
            ViewGroup.LayoutParams layoutParams = (hVar2 == null || (appCompatImageView = hVar2.f63709c) == null) ? null : appCompatImageView.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            h hVar3 = SearchGuideDialog.this.mViewBinding;
            ViewGroup.LayoutParams layoutParams2 = (hVar3 == null || (constraintLayout = hVar3.f63711e) == null) ? null : constraintLayout.getLayoutParams();
            Intrinsics.f(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            int marginEnd = (((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams2)).width - bVar.getMarginEnd()) - a0.a(40.0f);
            h hVar4 = SearchGuideDialog.this.mViewBinding;
            if (hVar4 == null || (roundedArrowImageView = hVar4.f63710d) == null) {
                return;
            }
            int iA = a0.a(20.0f) + marginEnd;
            lg.a.C0828a.g(lg.a.f68839a, "the bubbleArrowPosition is " + iA + ", the marginStart is " + marginEnd, false, 2, null);
            roundedArrowImageView.setArrowPosition((float) iA);
        }
    }

    private final void initView() {
        ConstraintLayout constraintLayout;
        AppCompatImageView appCompatImageView;
        ViewTreeObserver viewTreeObserver;
        ConstraintLayout constraintLayout2;
        Window window;
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawable(null);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes != null) {
                attributes.gravity = 17;
            }
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (attributes2 != null) {
                attributes2.width = y.e();
            }
            WindowManager.LayoutParams attributes3 = window.getAttributes();
            if (attributes3 != null) {
                attributes3.height = y.c();
            }
            window.setDimAmount(0.5f);
        }
        h hVar = this.mViewBinding;
        if (hVar != null && (constraintLayout2 = hVar.f63711e) != null) {
            ViewGroup.LayoutParams layoutParams = constraintLayout2.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ConstraintLayout.b bVar2 = this.searchLayoutParam;
            if (bVar2 != null) {
                Intrinsics.e(bVar2);
                ((ViewGroup.MarginLayoutParams) bVar).topMargin = ((ViewGroup.MarginLayoutParams) bVar2).topMargin - com.blankj.utilcode.util.d.c();
                ConstraintLayout.b bVar3 = this.searchLayoutParam;
                Intrinsics.e(bVar3);
                ((ViewGroup.MarginLayoutParams) bVar).width = ((ViewGroup.MarginLayoutParams) bVar3).width;
                ConstraintLayout.b bVar4 = this.searchLayoutParam;
                Intrinsics.e(bVar4);
                ((ViewGroup.MarginLayoutParams) bVar).height = ((ViewGroup.MarginLayoutParams) bVar4).height;
                ConstraintLayout.b bVar5 = this.searchLayoutParam;
                Intrinsics.e(bVar5);
                bVar.setMarginStart(bVar5.getMarginStart());
                lg.a.C0828a c0828a = lg.a.f68839a;
                ConstraintLayout.b bVar6 = this.searchLayoutParam;
                Intrinsics.e(bVar6);
                lg.a.C0828a.g(c0828a, "the searchLayoutParam.marginStart is " + bVar6.getMarginStart(), false, 2, null);
            }
            constraintLayout2.setLayoutParams(bVar);
        }
        h hVar2 = this.mViewBinding;
        if (hVar2 != null && (appCompatImageView = hVar2.f63709c) != null && (viewTreeObserver = appCompatImageView.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new b());
        }
        h hVar3 = this.mViewBinding;
        if (hVar3 == null || (constraintLayout = hVar3.f63711e) == null) {
            return;
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.view.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchGuideDialog.p0(this.f45728a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(SearchGuideDialog searchGuideDialog, View view) {
        lg.a.C0828a.g(lg.a.f68839a, "the search button is clicked", false, 2, null);
        Function0 function0 = searchGuideDialog.mCallback;
        if (function0 != null) {
        }
        searchGuideDialog.dismiss();
    }

    @Override // com.transsion.baseui.dialog.BaseDialog
    public String d0() {
        return "POSITION_SEARCH";
    }

    @Override // com.transsion.baseui.dialog.BaseDialog
    public hj.b newLogViewConfig() {
        return new hj.b("OneClickToDownloadDialog", false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        h hVarC = h.c(inflater);
        this.mViewBinding = hVarC;
        f45709h = true;
        if (hVarC != null) {
            return hVarC.getRoot();
        }
        return null;
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initView();
        lg.a.C0828a.g(lg.a.f68839a, getClassTag() + " --> onCreate()", false, 2, null);
        if (savedInstanceState != null) {
            dismissAllowingStateLoss();
        }
    }
}
