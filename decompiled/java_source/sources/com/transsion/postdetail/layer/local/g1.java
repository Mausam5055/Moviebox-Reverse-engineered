package com.transsion.postdetail.layer.local;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment;
import com.transsion.postdetail.ui.view.ImmSpeedView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g1 extends a0 {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private final Fragment f49034b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private so.d0 f49035c0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g1(Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f49034b0 = fragment;
    }

    private final void p3() {
        F(LayerFlag.LOCAL_UI_CHANGED, LocalUiType.MIDDLE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q3(g1 g1Var) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String strM1 = g1Var.m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, strM1, "portrait onBackPressed", false, 4, null);
        g1Var.p3();
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View A0() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75486u;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public boolean C0() {
        return false;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewGroup D0() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75487v;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewGroup E0() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View F0() {
        so.p0 p0Var;
        so.d0 d0Var = this.f49035c0;
        if (d0Var == null || (p0Var = d0Var.f75485t) == null) {
            return null;
        }
        return p0Var.f75675d;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView G0() {
        so.p0 p0Var;
        so.d0 d0Var = this.f49035c0;
        if (d0Var == null || (p0Var = d0Var.f75485t) == null) {
            return null;
        }
        return p0Var.f75674c;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView H0() {
        so.p0 p0Var;
        so.d0 d0Var = this.f49035c0;
        if (d0Var == null || (p0Var = d0Var.f75485t) == null) {
            return null;
        }
        return p0Var.f75673b;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView I0() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75488w;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewGroup N2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75467b;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ImageView O0() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75469d;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ImageView O2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View P1() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ProgressBar P2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View Q0() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75482q;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView Q2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView R2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75476k;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public SimpleSubtitleView S2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public SimpleSubtitleView T2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75483r;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewGroup U2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75467b;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public void V1() {
        p3();
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public SimpleSubtitleView V2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75484s;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView W2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.A;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView X2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75480o;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public void Y1() {
        F(LayerFlag.LOCAL_UI_CHANGED, LocalUiType.MIDDLE);
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView Y2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75481p;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public Group Z2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75489x;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void a(LocalUiType uiType) {
        Intrinsics.h(uiType, "uiType");
        LocalUiType localUiType = LocalUiType.PORTRAIT;
        if (uiType == localUiType) {
            z0();
        }
        T1(uiType == localUiType);
        super.a(uiType);
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public LocalUiType a3() {
        return LocalUiType.PORTRAIT;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ImageView f2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75490y;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewGroup g2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView h2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView h3() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.B;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View i2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View j1() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75479n;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public FrameLayout j3() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.D;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View k2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75478m;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView k3() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.C;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void m(LocalUiType newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.m(newConfig);
        if (newConfig == LocalUiType.LAND) {
            Y1();
        }
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewStub m3() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.E;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ConstraintLayout n2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75474i;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewStub n3() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.F;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void o(float f11) {
        ImmSpeedView immSpeedView;
        super.o(f11);
        so.d0 d0Var = this.f49035c0;
        if (d0Var == null || (immSpeedView = d0Var.f75477l) == null) {
            return;
        }
        ImmSpeedView.updateSpeed$default(immSpeedView, f11, false, 2, null);
    }

    @Override // vo.d
    public void onBackPressed() {
        ConstraintLayout constraintLayout;
        so.d0 d0Var = this.f49035c0;
        if (d0Var == null || (constraintLayout = d0Var.f75474i) == null) {
            return;
        }
        constraintLayout.postDelayed(new Runnable() { // from class: com.transsion.postdetail.layer.local.f1
            @Override // java.lang.Runnable
            public final void run() {
                g1.q3(this.f49032a);
            }
        }, 30L);
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void p(String resourceId, String subjectId, String postId, boolean z10, boolean z11) {
        String strF;
        ImmSpeedView immSpeedView;
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(postId, "postId");
        super.p(resourceId, subjectId, postId, z10, z11);
        Fragment fragment = this.f49034b0;
        Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment");
        hj.b logViewConfig = ((LocalVideoDetailFragment) fragment).getLogViewConfig();
        if (logViewConfig == null || (strF = logViewConfig.f()) == null) {
            strF = "";
        }
        so.d0 d0Var = this.f49035c0;
        if (d0Var == null || (immSpeedView = d0Var.f75477l) == null) {
            return;
        }
        immSpeedView.setPageParams(strF, subjectId);
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View p2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View q1() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75471f;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public SecondariesSeekBar q2() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75491z;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void r(View rootView, LocalUiType uiType) {
        String strF;
        ImmSpeedView immSpeedView;
        ConstraintLayout root;
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(uiType, "uiType");
        if (uiType != LocalUiType.PORTRAIT) {
            return;
        }
        so.d0 d0VarA = so.d0.a(rootView);
        this.f49035c0 = d0VarA;
        ViewGroup.LayoutParams layoutParams = (d0VarA == null || (root = d0VarA.getRoot()) == null) ? null : root.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = com.blankj.utilcode.util.d.c();
        super.r(rootView, uiType);
        Fragment fragment = this.f49034b0;
        Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment");
        hj.b logViewConfig = ((LocalVideoDetailFragment) fragment).getLogViewConfig();
        if (logViewConfig == null || (strF = logViewConfig.f()) == null) {
            strF = "";
        }
        so.d0 d0Var = this.f49035c0;
        if (d0Var == null || (immSpeedView = d0Var.f75477l) == null) {
            return;
        }
        immSpeedView.setPageParams(strF, k1());
        immSpeedView.updateSpeed(com.transsion.baselib.helper.d.f43265a.d(), true);
        immSpeedView.setPortrait(true);
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View r1() {
        so.d0 d0Var = this.f49035c0;
        if (d0Var != null) {
            return d0Var.f75470e;
        }
        return null;
    }
}
