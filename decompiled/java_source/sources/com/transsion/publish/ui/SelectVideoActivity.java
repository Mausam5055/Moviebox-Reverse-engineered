package com.transsion.publish.ui;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.PermissionUtils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.R$id;
import com.transsion.publish.R$string;
import com.transsion.publish.api.VsMediaInfo;
import com.transsion.publish.bean.PreviewMediaConfirmEvent;
import com.transsion.publish.bean.PreviewVideoBean;
import com.transsion.publish.view.CustomHeader;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u0019\u0010\u0018\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00101\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010.R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00108\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0017\u0010<\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b9\u00107\u001a\u0004\b:\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010C¨\u0006E"}, d2 = {"Lcom/transsion/publish/ui/SelectVideoActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lhp/k;", "<init>", "()V", "", "initData", "D0", "initView", "t0", "B0", "showLoading", "v0", "", "size", "s0", "(I)V", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "u0", "()Lhp/k;", "onDestroy", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Landroidx/recyclerview/widget/RecyclerView;", "a", "Landroidx/recyclerview/widget/RecyclerView;", "videoRecycler", "Lcom/transsion/publish/adapter/k0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/publish/adapter/k0;", "videoAdapter", "Ljp/c;", "c", "Ljp/c;", "selectVideoManager", "Landroid/widget/LinearLayout;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/widget/LinearLayout;", "noContentView", "e", "lockView", "Landroid/widget/ProgressBar;", "f", "Landroid/widget/ProgressBar;", "selectVideoLoading", "g", "I", "maxLimit", "h", "getScreenWidth", "()I", "screenWidth", "Lio/reactivex/rxjava3/disposables/c;", "i", "Lio/reactivex/rxjava3/disposables/c;", "disposable", "", "j", "J", "showDuration", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SelectVideoActivity extends BaseActivity<hp.k> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private RecyclerView videoRecycler;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private com.transsion.publish.adapter.k0 videoAdapter;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private jp.c selectVideoManager;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private LinearLayout noContentView;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private LinearLayout lockView;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ProgressBar selectVideoLoading;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int maxLimit = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final int screenWidth = com.blankj.utilcode.util.y.e();

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private io.reactivex.rxjava3.disposables.c disposable;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private long showDuration;

    public static final class a implements io.reactivex.rxjava3.core.o {
        a() {
        }

        @Override // io.reactivex.rxjava3.core.o
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(List t11) {
            Intrinsics.h(t11, "t");
            if (t11.isEmpty()) {
                LinearLayout linearLayout = SelectVideoActivity.this.noContentView;
                if (linearLayout != null) {
                    linearLayout.setVisibility(0);
                }
            } else {
                com.transsion.publish.adapter.k0 k0Var = SelectVideoActivity.this.videoAdapter;
                if (k0Var != null) {
                    k0Var.addData(t11);
                }
            }
            SelectVideoActivity.this.v0();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            LinearLayout linearLayout;
            com.transsion.publish.adapter.k0 k0Var;
            io.reactivex.rxjava3.disposables.c cVar = SelectVideoActivity.this.disposable;
            if (cVar != null) {
                cVar.dispose();
            }
            SelectVideoActivity.this.v0();
            if ((SelectVideoActivity.this.videoAdapter == null || ((k0Var = SelectVideoActivity.this.videoAdapter) != null && k0Var.getItemCount() == 0)) && (linearLayout = SelectVideoActivity.this.noContentView) != null) {
                linearLayout.setVisibility(0);
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable e11) {
            Intrinsics.h(e11, "e");
            lg.a.C0828a.f(lg.a.f68839a, "SelectVideoManager", "onError e:" + e11, false, 4, null);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d11) {
            Intrinsics.h(d11, "d");
            SelectVideoActivity.this.disposable = d11;
        }
    }

    public static final class b implements PermissionUtils.b {
        b() {
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onDenied() {
            LinearLayout linearLayout = SelectVideoActivity.this.lockView;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onGranted() {
            LinearLayout linearLayout = SelectVideoActivity.this.lockView;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            SelectVideoActivity.this.B0();
        }
    }

    /* JADX INFO: renamed from: com.transsion.publish.ui.SelectVideoActivity$initView$4, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    /* synthetic */ class AnonymousClass4 extends FunctionReferenceImpl implements Function1<Integer, Unit> {
        AnonymousClass4(Object obj) {
            super(1, obj, SelectVideoActivity.class, "checkSelect", "checkSelect(I)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Number) obj).intValue());
            return Unit.f67061a;
        }

        public final void invoke(int i11) {
            ((SelectVideoActivity) this.receiver).s0(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(SelectVideoActivity selectVideoActivity, PreviewVideoBean it) {
        Intrinsics.h(it, "it");
        VsMediaInfo select = it.getSelect();
        if (select == null) {
            return Unit.f67061a;
        }
        com.transsion.publish.adapter.k0 k0Var = selectVideoActivity.videoAdapter;
        if (k0Var != null) {
            k0Var.x(select);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B0() {
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        showLoading();
        this.selectVideoManager = new jp.c(this);
        io.reactivex.rxjava3.core.j.g(new io.reactivex.rxjava3.core.l() { // from class: com.transsion.publish.ui.f1
            @Override // io.reactivex.rxjava3.core.l
            public final void a(io.reactivex.rxjava3.core.k kVar) throws Throwable {
                SelectVideoActivity.C0(this.f50573a, kVar);
            }
        }).b(12).v(io.reactivex.rxjava3.android.schedulers.b.c()).E(qz.a.c()).subscribe(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(SelectVideoActivity selectVideoActivity, io.reactivex.rxjava3.core.k emitter) throws Throwable {
        Intrinsics.h(emitter, "emitter");
        lg.a.C0828a.f(lg.a.f68839a, "SelectVideoManager", "loadLocalVideo success", false, 4, null);
        jp.c cVar = selectVideoActivity.selectVideoManager;
        if (cVar != null) {
            cVar.a(emitter);
        }
        if (emitter.isDisposed()) {
            return;
        }
        emitter.onComplete();
    }

    private final void D0() {
        if (PermissionUtils.s("android.permission.READ_EXTERNAL_STORAGE")) {
            B0();
        } else {
            PermissionUtils.x("android.permission.READ_EXTERNAL_STORAGE").m(new b()).y();
        }
    }

    private final void initData() {
        Function1 function1 = new Function1() { // from class: com.transsion.publish.ui.e1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectVideoActivity.w0(this.f50570a, (PreviewMediaConfirmEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PreviewMediaConfirmEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        ((CustomHeader) findViewById(R$id.sv_title_bar)).setOnBackClick(new View.OnClickListener() { // from class: com.transsion.publish.ui.g1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectVideoActivity.x0(this.f50576a, view);
            }
        });
        s0(0);
        TextView confirmTV = ((hp.k) getMViewBinding()).f64811b;
        Intrinsics.g(confirmTV, "confirmTV");
        jg.c.c(confirmTV, 0L, new Function1() { // from class: com.transsion.publish.ui.h1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectVideoActivity.y0(this.f50578a, (View) obj);
            }
        }, 1, null);
        this.selectVideoLoading = (ProgressBar) findViewById(R$id.select_video_loading);
        this.noContentView = (LinearLayout) findViewById(R$id.sv_no_content_view);
        this.lockView = (LinearLayout) findViewById(R$id.sv_lock_view);
        TextView textView = (TextView) findViewById(R$id.sv_tv_grant);
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.i1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelectVideoActivity.z0(view);
                }
            });
        }
        this.videoRecycler = (RecyclerView) findViewById(R$id.select_video_recycler);
        this.videoAdapter = new com.transsion.publish.adapter.k0(new AnonymousClass4(this));
        RecyclerView recyclerView = this.videoRecycler;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new GridLayoutManager((Context) this, 4, 1, false));
        }
        RecyclerView recyclerView2 = this.videoRecycler;
        if (recyclerView2 != null) {
            recyclerView2.addItemDecoration(new mp.f(com.blankj.utilcode.util.a0.a(2.0f)));
        }
        RecyclerView recyclerView3 = this.videoRecycler;
        if (recyclerView3 != null) {
            recyclerView3.setAdapter(this.videoAdapter);
        }
        Function1 function1 = new Function1() { // from class: com.transsion.publish.ui.j1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectVideoActivity.A0(this.f50582a, (PreviewVideoBean) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PreviewVideoBean.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void s0(int size) {
        int iF = RangesKt.f(size, 0);
        TextView selectNumTV = ((hp.k) getMViewBinding()).f64812c;
        Intrinsics.g(selectNumTV, "selectNumTV");
        selectNumTV.setVisibility(iF > 0 ? 0 : 8);
        ((hp.k) getMViewBinding()).f64812c.setText(getString(R$string.video_select_num_tips, Integer.valueOf(iF), Integer.valueOf(this.maxLimit)));
    }

    private final void showLoading() {
        ProgressBar progressBar = this.selectVideoLoading;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
    }

    private final void t0() {
        List listM;
        com.transsion.publish.adapter.k0 k0Var = this.videoAdapter;
        VsMediaInfo vsMediaInfo = (k0Var == null || (listM = k0Var.m()) == null) ? null : (VsMediaInfo) CollectionsKt.k0(listM);
        if (vsMediaInfo != null) {
            fp.a aVar = new fp.a();
            aVar.o(1);
            aVar.n(1);
            aVar.u(vsMediaInfo);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = fp.a.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, aVar, 0L);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0() {
        ProgressBar progressBar = this.selectVideoLoading;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(SelectVideoActivity selectVideoActivity, PreviewMediaConfirmEvent it) {
        Intrinsics.h(it, "it");
        selectVideoActivity.t0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(SelectVideoActivity selectVideoActivity, View view) {
        selectVideoActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(SelectVideoActivity selectVideoActivity, View it) {
        Intrinsics.h(it, "it");
        selectVideoActivity.t0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(View view) {
        PermissionUtils.v();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public hj.b newLogViewConfig() {
        return new hj.b("select_video", false, 2, null);
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.showDuration = System.currentTimeMillis();
        initView();
        initData();
        D0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        io.reactivex.rxjava3.disposables.c cVar = this.disposable;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: u0, reason: merged with bridge method [inline-methods] */
    public hp.k getViewBinding() {
        hp.k kVarC = hp.k.c(getLayoutInflater());
        Intrinsics.g(kVarC, "inflate(...)");
        return kVarC;
    }
}
