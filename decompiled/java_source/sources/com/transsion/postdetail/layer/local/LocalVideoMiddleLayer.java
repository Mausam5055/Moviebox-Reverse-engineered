package com.transsion.postdetail.layer.local;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.widget.ViewPager2;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.tn.lib.view.SecondariesSeekBar;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$string;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.fragment.LocalVideoMiddleSeriesListFragment;
import com.transsion.postdetail.ui.view.LocalVideoMiddleHeaderView;
import com.transsion.publish.view.PublishStateView;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsnet.downloader.manager.DownloadEsHelper;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes6.dex */
public final class LocalVideoMiddleLayer extends a0 {

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final a f48941k0 = new a(null);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private final Fragment f48942b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private so.b0 f48943c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private w0 f48944d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private long f48945e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private LocalVideoMiddleSeriesListFragment f48946f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private tn.e f48947g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private boolean f48948h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private boolean f48949i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private LocalBackAdHelper f48950j0;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements androidx.p009lifecycle.f {
        b() {
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onCreate(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.a(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public void onDestroy(androidx.p009lifecycle.u owner) {
            LocalVideoMiddleHeaderView localVideoMiddleHeaderView;
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.b(this, owner);
            LocalBackAdHelper localBackAdHelper = LocalVideoMiddleLayer.this.f48950j0;
            if (localBackAdHelper != null) {
                localBackAdHelper.o();
            }
            so.b0 b0Var = LocalVideoMiddleLayer.this.f48943c0;
            if (b0Var == null || (localVideoMiddleHeaderView = b0Var.f75447v) == null) {
                return;
            }
            localVideoMiddleHeaderView.destroy();
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onPause(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.c(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onResume(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.d(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onStart(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.e(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onStop(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.f(this, uVar);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalVideoMiddleLayer(Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f48942b0 = fragment;
    }

    private final w0 A3() {
        so.b0 b0Var;
        ViewStub viewStub;
        View viewInflate;
        if (this.f48944d0 == null && (b0Var = this.f48943c0) != null && (viewStub = b0Var.U) != null && (viewInflate = viewStub.inflate()) != null) {
            so.a0 a0VarA = so.a0.a(viewInflate);
            Intrinsics.g(a0VarA, "bind(...)");
            this.f48944d0 = new w0(a0VarA);
        }
        return this.f48944d0;
    }

    private final LocalBackAdHelper B3() {
        LocalBackAdHelper localBackAdHelper = this.f48950j0;
        if (localBackAdHelper != null) {
            return localBackAdHelper;
        }
        LocalBackAdHelper localBackAdHelper2 = new LocalBackAdHelper("LocalVideoBackInterstitialV2Scene", androidx.p009lifecycle.v.a(this.f48942b0), new Function0() { // from class: com.transsion.postdetail.layer.local.b1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoMiddleLayer.C3(this.f48990a);
            }
        }, new Function0() { // from class: com.transsion.postdetail.layer.local.c1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoMiddleLayer.D3(this.f49025a);
            }
        }, false, 16, null);
        this.f48950j0 = localBackAdHelper2;
        return localBackAdHelper2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Activity C3(LocalVideoMiddleLayer localVideoMiddleLayer) {
        FragmentActivity activity = localVideoMiddleLayer.f48942b0.getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return null;
        }
        return activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D3(final LocalVideoMiddleLayer localVideoMiddleLayer) {
        ConstraintLayout root;
        so.b0 b0Var = localVideoMiddleLayer.f48943c0;
        if (b0Var != null && (root = b0Var.getRoot()) != null) {
            root.postDelayed(new Runnable() { // from class: com.transsion.postdetail.layer.local.d1
                @Override // java.lang.Runnable
                public final void run() {
                    LocalVideoMiddleLayer.E3(this.f49026a);
                }
            }, 200L);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E3(LocalVideoMiddleLayer localVideoMiddleLayer) {
        J3(localVideoMiddleLayer, false, 1, null);
    }

    private final void F3() {
        TextView textView;
        so.b0 b0Var = this.f48943c0;
        if (b0Var == null || (textView = b0Var.f75450y) == null) {
            return;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LocalVideoMiddleLayer.G3(this.f49138a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G3(LocalVideoMiddleLayer localVideoMiddleLayer, View view) {
        if (view.isSelected()) {
            view.setSelected(false);
            localVideoMiddleLayer.M3(false);
            DownloadBean downloadBeanS0 = localVideoMiddleLayer.S0();
            if (downloadBeanS0 != null) {
                localVideoMiddleLayer.T0().G(downloadBeanS0);
                return;
            }
            return;
        }
        if (!nh.m.f70474a.e()) {
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.base_network_fail);
            return;
        }
        view.setSelected(true);
        localVideoMiddleLayer.M3(true);
        DownloadBean downloadBeanS1 = localVideoMiddleLayer.S0();
        if (downloadBeanS1 != null) {
            localVideoMiddleLayer.T0().k(downloadBeanS1);
        }
    }

    private final void H3() {
        Fragment fragmentK0 = this.f48942b0.getChildFragmentManager().k0("LocalVideoMiddleSeriesList");
        if (fragmentK0 instanceof LocalVideoMiddleSeriesListFragment) {
            ((LocalVideoMiddleSeriesListFragment) fragmentK0).n0(true);
        }
    }

    private final void I3(boolean z10) {
        LocalVideoMiddleHeaderView localVideoMiddleHeaderView;
        FragmentActivity activity;
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f48942b0.getLifecycle().a(new b());
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (z10) {
            if (e(FloatActionType.BACK) || (activity = this.f48942b0.getActivity()) == null) {
                return;
            }
            activity.finish();
            return;
        }
        so.b0 b0Var = this.f48943c0;
        if (b0Var == null || (localVideoMiddleHeaderView = b0Var.f75447v) == null) {
            return;
        }
        localVideoMiddleHeaderView.destroy();
    }

    static /* synthetic */ void J3(LocalVideoMiddleLayer localVideoMiddleLayer, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        localVideoMiddleLayer.I3(z10);
    }

    private final void K3() {
        LocalBackAdHelper localBackAdHelperB3 = B3();
        DownloadBean downloadBeanS0 = S0();
        localBackAdHelperB3.q(downloadBeanS0 != null ? downloadBeanS0.getGenre() : null);
    }

    private final void L3(DownloadBean downloadBean) {
        if (downloadBean == null) {
            return;
        }
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            downloadBean = downloadBeanQ;
        }
        r2(downloadBean, true);
    }

    private final void M3(boolean z10) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        if (z10) {
            so.b0 b0Var = this.f48943c0;
            if (b0Var != null && (textView4 = b0Var.f75451z) != null) {
                textView4.setText(this.f48942b0.getString(com.transsion.postdetail.R$string.download_playing_downloading_tips));
            }
            so.b0 b0Var2 = this.f48943c0;
            if (b0Var2 == null || (textView3 = b0Var2.f75450y) == null) {
                return;
            }
            textView3.setText(this.f48942b0.getString(com.transsion.postdetail.R$string.download_playing_pause));
            return;
        }
        so.b0 b0Var3 = this.f48943c0;
        if (b0Var3 != null && (textView2 = b0Var3.f75451z) != null) {
            textView2.setText(this.f48942b0.getString(com.transsion.postdetail.R$string.download_playing_pause_tips));
        }
        so.b0 b0Var4 = this.f48943c0;
        if (b0Var4 == null || (textView = b0Var4.f75450y) == null) {
            return;
        }
        textView.setText(this.f48942b0.getString(com.transsion.postdetail.R$string.download_playing_resume));
    }

    private final void N3() {
        so.b0 b0Var;
        PublishStateView publishStateView;
        DownloadBean downloadBeanS0 = S0();
        if (downloadBeanS0 == null || (b0Var = this.f48943c0) == null || (publishStateView = b0Var.f75438m) == null) {
            return;
        }
        String groupId = downloadBeanS0.getGroupId();
        String str = groupId == null ? "" : groupId;
        String cover = downloadBeanS0.getCover();
        String str2 = cover == null ? "" : cover;
        String name = downloadBeanS0.getName();
        publishStateView.publishSource(4, (30 & 2) != 0 ? "" : null, (30 & 4) != 0 ? "" : null, (30 & 8) != 0 ? "" : null, (30 & 16) != 0 ? "" : null, (30 & 32) != 0 ? "" : str, (30 & 64) != 0 ? "" : name == null ? "" : name, (30 & 128) == 0 ? str2 : "", (30 & 256) != 0 ? false : true);
    }

    private final void O3(String str) {
        ConstraintLayout root;
        if (System.currentTimeMillis() - com.transsion.baselib.report.launch.b.f43370a.b().getLong("show_LocalVideoBackInterstitialV2Scene_timestamp", 0L) >= com.transsion.ad.scene.a.f42201a.k("LocalVideoBackInterstitialV2Scene") * 60000) {
            R3();
            return;
        }
        ii.b.d(ii.b.f65248a, "LocalVideoBackInterstitialV2Scene", false, 2, null);
        so.b0 b0Var = this.f48943c0;
        if (b0Var == null || (root = b0Var.getRoot()) == null) {
            return;
        }
        root.postDelayed(new Runnable() { // from class: com.transsion.postdetail.layer.local.a1
            @Override // java.lang.Runnable
            public final void run() {
                LocalVideoMiddleLayer.P3(this.f48988a);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P3(LocalVideoMiddleLayer localVideoMiddleLayer) {
        J3(localVideoMiddleLayer, false, 1, null);
    }

    private final void Q3(boolean z10) {
        FrameLayout frameLayout;
        so.b0 b0Var = this.f48943c0;
        if (b0Var == null || (frameLayout = b0Var.f75429d) == null) {
            return;
        }
        frameLayout.setVisibility(z10 ? 0 : 8);
    }

    private final void R3() {
        LocalBackAdHelper localBackAdHelperB3 = B3();
        DownloadBean downloadBeanS0 = S0();
        localBackAdHelperB3.r(downloadBeanS0 != null ? downloadBeanS0.getGenre() : null);
    }

    private final void S3() {
        LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragmentA = LocalVideoMiddleSeriesListFragment.INSTANCE.a();
        localVideoMiddleSeriesListFragmentA.r0(S0(), e1());
        localVideoMiddleSeriesListFragmentA.s0(new Function2() { // from class: com.transsion.postdetail.layer.local.e1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return LocalVideoMiddleLayer.T3(this.f49030a, (DownloadBean) obj, ((Integer) obj2).intValue());
            }
        });
        localVideoMiddleSeriesListFragmentA.t0(this.f48942b0, R$id.fl_series_list_container);
        this.f48946f0 = localVideoMiddleSeriesListFragmentA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T3(LocalVideoMiddleLayer localVideoMiddleLayer, DownloadBean bean, int i11) {
        Intrinsics.h(bean, "bean");
        localVideoMiddleLayer.L3(bean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U3(LocalVideoMiddleLayer localVideoMiddleLayer, DownloadBean downloadBean) {
        localVideoMiddleLayer.L3(downloadBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V3(LocalVideoMiddleLayer localVideoMiddleLayer) {
        localVideoMiddleLayer.S3();
        return Unit.f67061a;
    }

    private final void y3(boolean z10, boolean z11) {
        w0 w0VarA3;
        if (z11 && (w0VarA3 = A3()) != null) {
            w0VarA3.d(z10);
        }
        long j11 = z10 ? RangesKt.j(this.f48945e0 + ((long) 10000), n1()) : RangesKt.g(this.f48945e0 - ((long) 10000), 0L);
        this.f48945e0 = j11;
        com.transsion.player.orplayer.g gVarH = H();
        if (gVarH != null) {
            gVarH.seekTo(j11);
        }
    }

    static /* synthetic */ void z3(LocalVideoMiddleLayer localVideoMiddleLayer, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z11 = true;
        }
        localVideoMiddleLayer.y3(z10, z11);
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View A0() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.L;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    protected void B0(Subject subject) {
        super.B0(subject);
        if (this.f48948h0) {
            return;
        }
        this.f48948h0 = true;
        if (subject != null) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new LocalVideoMiddleLayer$bindMovieDetail$1(this, subject, null), 3, null);
            String ops = subject.getOps();
            if (ops == null || ops.length() == 0) {
                DownloadBean downloadBeanS0 = S0();
                subject.setOps(downloadBeanS0 != null ? downloadBeanS0.getOps() : null);
            }
        }
        if (subject == null) {
            subject = xn.a.a(S0());
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String strM1 = m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        DownloadBean downloadBeanS1 = S0();
        lg.a.C0828a.f(c0828a, strM1, "bindMovieDetail, isInnerVideo:" + (downloadBeanS1 != null ? Boolean.valueOf(downloadBeanS1.isInnerSubjectRes()) : null), false, 4, null);
        Fragment fragment = this.f48942b0;
        so.b0 b0Var = this.f48943c0;
        MagicIndicator magicIndicator = b0Var != null ? b0Var.f75443r : null;
        ViewPager2 viewPager2 = b0Var != null ? b0Var.f75446u : null;
        DownloadBean downloadBeanS2 = S0();
        this.f48947g0 = new tn.e(fragment, subject, magicIndicator, viewPager2, "local_video_detail", true, !(downloadBeanS2 != null ? downloadBeanS2.isInnerSubjectRes() : true), null, 128, null);
        Fragment fragment2 = this.f48942b0;
        int i11 = R$id.subjectDetailLayout;
        DownloadBean downloadBeanS3 = S0();
        new tn.g(fragment2, i11, subject, "local_video_detail", "download_subject", true, !(downloadBeanS3 != null ? downloadBeanS3.isInnerSubjectRes() : true));
        Q3(false);
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public boolean C0() {
        return false;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewGroup D0() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.J;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void E(DownloadBean bean) {
        so.b0 b0Var;
        TextView textView;
        TextView textView2;
        so.b0 b0Var2;
        FrameLayout frameLayout;
        Intrinsics.h(bean, "bean");
        super.E(bean);
        int status = bean.getStatus();
        if (status != 1 && status != 2 && status != 3) {
            if (status != 5) {
                return;
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            String strM1 = m1();
            Intrinsics.g(strM1, "<get-TAG>(...)");
            String resourceId = bean.getResourceId();
            DownloadBean downloadBeanS0 = S0();
            lg.a.C0828a.v(c0828a, strM1, "onDownloadCallback, success  resourceId = " + resourceId + ", cur resourceId = " + (downloadBeanS0 != null ? downloadBeanS0.getResourceId() : null), false, 4, null);
            String resourceId2 = bean.getResourceId();
            DownloadBean downloadBeanS1 = S0();
            if (!Intrinsics.c(resourceId2, downloadBeanS1 != null ? downloadBeanS1.getResourceId() : null) || (b0Var2 = this.f48943c0) == null || (frameLayout = b0Var2.f75430e) == null) {
                return;
            }
            jg.c.g(frameLayout);
            return;
        }
        if (!this.f48949i0) {
            DownloadBean downloadBeanS2 = S0();
            if (Intrinsics.c(downloadBeanS2 != null ? downloadBeanS2.getSubjectId() : null, bean.getSubjectId())) {
                lg.a.C0828a c0828a2 = lg.a.f68839a;
                String strM2 = m1();
                Intrinsics.g(strM2, "<get-TAG>(...)");
                lg.a.C0828a.v(c0828a2, strM2, "onDownloadCallback, refresh  epse = " + bean.getEpse(), false, 4, null);
                this.f48949i0 = true;
                o1().h(S0());
            }
        }
        String resourceId3 = bean.getResourceId();
        DownloadBean downloadBeanS3 = S0();
        if (!Intrinsics.c(resourceId3, downloadBeanS3 != null ? downloadBeanS3.getResourceId() : null) || (b0Var = this.f48943c0) == null || (textView = b0Var.f75450y) == null || textView.isSelected()) {
            return;
        }
        so.b0 b0Var3 = this.f48943c0;
        if (b0Var3 != null && (textView2 = b0Var3.f75450y) != null) {
            textView2.setSelected(true);
        }
        M3(true);
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewGroup E0() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View F0() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.Q;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView G0() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.D;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView H0() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.B;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView I0() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.K;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewGroup N2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.f75432g;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ImageView O0() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.f75436k;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ImageView O2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View P1() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.f75437l;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ProgressBar P2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View Q0() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.G;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView Q2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView R2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public SimpleSubtitleView S2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public SimpleSubtitleView T2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.H;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewGroup U2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.f75434i;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public void V1() {
        O3("onBackClick");
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public SimpleSubtitleView V2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.I;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView W2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView X2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.E;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView Y2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.F;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public Group Z2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.M;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void a(LocalUiType uiType) {
        Window window;
        Intrinsics.h(uiType, "uiType");
        j(false);
        tn.e eVar = this.f48947g0;
        if (eVar != null) {
            eVar.x(uiType != LocalUiType.MIDDLE);
        }
        LocalUiType localUiType = LocalUiType.MIDDLE;
        if (uiType == localUiType) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String strM1 = m1();
            Intrinsics.g(strM1, "<get-TAG>(...)");
            lg.a.C0828a.f(c0828a, strM1, "onLocalUiChanged 2 middle", false, 4, null);
            com.transsion.player.orplayer.g gVarH = H();
            if (gVarH != null) {
                gVarH.setScaleMode(ScaleMode.SCALE_ASPECT_FIT);
            }
            FragmentActivity activity = this.f48942b0.getActivity();
            if (activity != null && (window = activity.getWindow()) != null) {
                WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
                Intrinsics.g(insetsController, "getInsetsController(...)");
                insetsController.show(WindowInsetsCompat.Type.navigationBars());
            }
            z0();
        }
        lg.a.f68839a.c("long_video_play", "middle, onLocalUiChanged uiType = " + uiType, true);
        T1(uiType == localUiType);
        super.a(uiType);
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public LocalUiType a3() {
        return LocalUiType.MIDDLE;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void c() {
        super.c();
        I3(false);
        this.f48943c0 = null;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void f(boolean z10, String requestKey) {
        Intrinsics.h(requestKey, "requestKey");
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ImageView f2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.N;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewGroup g2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void h(String subjectId, String resourceId) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(resourceId, "resourceId");
        super.h(subjectId, resourceId);
        lg.a.C0828a c0828a = lg.a.f68839a;
        String strM1 = m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        lg.a.C0828a.v(c0828a, strM1, "initSeries", false, 4, null);
        o1().h(S0());
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView h2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView h3() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View i2() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public boolean isVisible() {
        ConstraintLayout constraintLayout;
        so.b0 b0Var = this.f48943c0;
        return (b0Var == null || (constraintLayout = b0Var.f75444s) == null || constraintLayout.getVisibility() != 0) ? false : true;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void j(boolean z10) {
        View view;
        so.b0 b0Var = this.f48943c0;
        if (b0Var == null || (view = b0Var.T) == null) {
            return;
        }
        view.setVisibility(z10 ? 0 : 8);
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View j1() {
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public FrameLayout j3() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.S;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void k(DownloadBean downloadBean, String pageFrom, boolean z10) {
        TextView textView;
        FrameLayout frameLayout;
        so.b0 b0Var;
        LocalVideoMiddleHeaderView localVideoMiddleHeaderView;
        LocalVideoMiddleHeaderView localVideoMiddleHeaderView2;
        String path;
        FrameLayout frameLayout2;
        Intrinsics.h(pageFrom, "pageFrom");
        super.k(downloadBean, pageFrom, z10);
        if ((downloadBean == null || downloadBean.getStatus() != 5) && downloadBean != null && downloadBean.isInnerRes()) {
            so.b0 b0Var2 = this.f48943c0;
            if (b0Var2 != null && (frameLayout = b0Var2.f75430e) != null) {
                jg.c.k(frameLayout);
            }
            boolean zA = T0().A(downloadBean);
            so.b0 b0Var3 = this.f48943c0;
            if (b0Var3 != null && (textView = b0Var3.f75450y) != null) {
                textView.setSelected(zA);
            }
            M3(zA);
        } else {
            so.b0 b0Var4 = this.f48943c0;
            if (b0Var4 != null && (frameLayout2 = b0Var4.f75430e) != null) {
                jg.c.g(frameLayout2);
            }
        }
        if (downloadBean != null && downloadBean.getType() == 6 && (path = downloadBean.getPath()) != null && StringsKt.c0(path, ".mp3", false, 2, null)) {
            s2(downloadBean.getCover());
        }
        N3();
        so.b0 b0Var5 = this.f48943c0;
        if (b0Var5 != null && (localVideoMiddleHeaderView2 = b0Var5.f75447v) != null) {
            localVideoMiddleHeaderView2.updateDownloadBean(downloadBean);
        }
        o1().d(downloadBean != null ? downloadBean.getSubjectId() : null);
        if (!z10 || (b0Var = this.f48943c0) == null || (localVideoMiddleHeaderView = b0Var.f75447v) == null) {
            return;
        }
        localVideoMiddleHeaderView.init(downloadBean, b0Var != null ? b0Var.f75445t : null, androidx.p009lifecycle.v.a(this.f48942b0));
        localVideoMiddleHeaderView.setItemClickCallback(new Function1() { // from class: com.transsion.postdetail.layer.local.y0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocalVideoMiddleLayer.U3(this.f49139a, (DownloadBean) obj);
            }
        });
        localVideoMiddleHeaderView.setAllListClickCallback(new Function0() { // from class: com.transsion.postdetail.layer.local.z0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoMiddleLayer.V3(this.f49140a);
            }
        });
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View k2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.C;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public TextView k3() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.R;
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
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.V;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ConstraintLayout n2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.f75444s;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public ViewStub n3() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.W;
        }
        return null;
    }

    @Override // vo.d
    public void onBackPressed() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String strM1 = m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, strM1, "middle onBackPressed", false, 4, null);
        LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragment = this.f48946f0;
        if (localVideoMiddleSeriesListFragment == null || localVideoMiddleSeriesListFragment.getIsRemoved()) {
            O3("onBackPressed");
            return;
        }
        LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragment2 = this.f48946f0;
        if (localVideoMiddleSeriesListFragment2 != null) {
            LocalVideoMiddleSeriesListFragment.o0(localVideoMiddleSeriesListFragment2, false, 1, null);
        }
    }

    @Override // com.transsion.postdetail.layer.local.a0, com.transsion.player.orplayer.f
    public void onProgress(long j11, ao.e eVar) {
        super.onProgress(j11, eVar);
        if (isVisible()) {
            this.f48945e0 = j11;
            i0.f49039v.a().t(j11, n1());
        }
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View p2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.O;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View q1() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.f75440o;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public SecondariesSeekBar q2() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.P;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void r(View rootView, LocalUiType uiType) {
        PublishStateView publishStateView;
        View view;
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(uiType, "uiType");
        if (uiType != LocalUiType.MIDDLE) {
            return;
        }
        this.f48943c0 = so.b0.a(rootView);
        super.r(rootView, uiType);
        so.b0 b0Var = this.f48943c0;
        ViewGroup.LayoutParams layoutParams = (b0Var == null || (view = b0Var.f75435j) == null) ? null : view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams)).topMargin = com.blankj.utilcode.util.d.c();
        Q3(true);
        F3();
        H3();
        K3();
        so.b0 b0Var2 = this.f48943c0;
        if (b0Var2 != null && (publishStateView = b0Var2.f75438m) != null) {
            publishStateView.setImageResource(R$mipmap.libui_ic_base_whit_publish);
        }
        b3(false);
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public View r1() {
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null) {
            return b0Var.f75439n;
        }
        return null;
    }

    @Override // com.transsion.postdetail.layer.local.a0
    public void s1(MotionEvent motionEvent, boolean z10) {
        View view;
        so.b0 b0Var = this.f48943c0;
        if (b0Var != null && (view = b0Var.T) != null) {
            jg.c.g(view);
        }
        if (!z10 || motionEvent == null) {
            super.s1(motionEvent, false);
            return;
        }
        int iE = com.blankj.utilcode.util.y.e() / 3;
        int rawX = (int) motionEvent.getRawX();
        if (rawX >= 0 && rawX <= iE) {
            z3(this, false, false, 2, null);
        } else if (rawX > iE * 2) {
            z3(this, true, false, 2, null);
        } else {
            super.s1(motionEvent, false);
        }
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void u(String subjectId, String resourceId) {
        LocalVideoMiddleHeaderView localVideoMiddleHeaderView;
        DownloadBean downloadBean;
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(resourceId, "resourceId");
        so.b0 b0Var = this.f48943c0;
        if (b0Var == null || (localVideoMiddleHeaderView = b0Var.f75447v) == null || (downloadBean = localVideoMiddleHeaderView.getDownloadBean(resourceId)) == null) {
            return;
        }
        r2(downloadBean, true);
    }

    @Override // com.transsion.postdetail.layer.local.a0, vo.d
    public void v(boolean z10) {
        super.v(z10);
    }
}
