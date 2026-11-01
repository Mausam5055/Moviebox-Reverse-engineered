package com.transsnet.downloader.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.fragment.app.Fragment;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.commercializationapi.ITaskCenterApi;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.transsnet.downloader.widget.DownloadPathEntranceView;
import com.transsnet.downloader.widget.DownloadView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000  2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;", "Lpy/g0;", "<init>", "()V", "", "Z0", "h1", "initViewData", "onResume", "v0", "x0", "w0", "y0", "Landroid/view/LayoutInflater;", "inflater", "a1", "(Landroid/view/LayoutInflater;)Lpy/g0;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "initViewModel", "initListener", "retryLoadData", "Lcom/transsion/baselib/db/download/DownloadBean;", WebConstants.FIELD_ITEM, "Q0", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", TtmlNode.TAG_P, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadReDetectorSingleResFragment extends DownloadReDetectorSingleResBaseFragment<py.g0> {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.DownloadReDetectorSingleResFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadReDetectorSingleResFragment a(String str) {
            DownloadReDetectorSingleResFragment downloadReDetectorSingleResFragment = new DownloadReDetectorSingleResFragment();
            downloadReDetectorSingleResFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_module_name", str)));
            return downloadReDetectorSingleResFragment;
        }
    }

    public static final class b implements ok.b {
        b() {
        }

        @Override // ok.b
        public void a(boolean z10) {
            ok.b.a.a(this, z10);
        }

        @Override // ok.b
        public void onFail() {
            ok.c.f71034a.a(DownloadReDetectorSingleResFragment.this.getClassTag() + " --> interception() --> onFail() --> 失败了");
        }

        @Override // ok.b
        public void onSuccess() {
            DownloadReDetectorSingleResFragment.this.R0();
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59007a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59007a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59007a;
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
            this.f59007a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void Z0() {
        DownloadPathEntranceView downloadPathEntranceView;
        DownloadPathEntranceView downloadPathEntranceView2;
        if (G0()) {
            py.g0 g0Var = (py.g0) getMViewBinding();
            if (g0Var == null || (downloadPathEntranceView2 = g0Var.f72734i) == null) {
                return;
            }
            downloadPathEntranceView2.onPermissionDenied();
            return;
        }
        py.g0 g0Var2 = (py.g0) getMViewBinding();
        if (g0Var2 == null || (downloadPathEntranceView = g0Var2.f72734i) == null) {
            return;
        }
        downloadPathEntranceView.onPermissionRefresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(DownloadReDetectorSingleResFragment downloadReDetectorSingleResFragment, View view) {
        downloadReDetectorSingleResFragment.m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:15:0x0032  */
    public static final void c1(DownloadReDetectorSingleResFragment downloadReDetectorSingleResFragment, View view) {
        boolean z10;
        String subjectId;
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            return;
        }
        DownloadManagerApi.a aVar = DownloadManagerApi.f58398j;
        DownloadManagerApi downloadManagerApiA = aVar.a();
        DownloadBean downloadBean = downloadReDetectorSingleResFragment.getDownloadBean();
        String resourceId = downloadBean != null ? downloadBean.getResourceId() : null;
        DownloadBean downloadBean2 = downloadReDetectorSingleResFragment.getDownloadBean();
        if (downloadBean2 != null) {
            z10 = downloadBean2.isMultiresolution();
        }
        if (!downloadManagerApiA.w0(null, resourceId, false, z10)) {
            ITaskCenterApi iTaskCenterApi = (ITaskCenterApi) TheRouter.d(ITaskCenterApi.class, new Object[0]);
            if (iTaskCenterApi != null) {
                DownloadBean downloadBean3 = downloadReDetectorSingleResFragment.getDownloadBean();
                Integer numValueOf = downloadBean3 != null ? Integer.valueOf(downloadBean3.getResolution()) : null;
                DownloadBean downloadBean4 = downloadReDetectorSingleResFragment.getDownloadBean();
                iTaskCenterApi.f(numValueOf, downloadBean4 != null ? downloadBean4.getGenre() : null, downloadReDetectorSingleResFragment.new b(), MemberSceneType.SCENE_HDDL);
                return;
            }
            return;
        }
        DownloadBean downloadBean5 = downloadReDetectorSingleResFragment.getDownloadBean();
        if (downloadBean5 == null || (subjectId = downloadBean5.getSubjectId()) == null) {
            return;
        }
        DownloadManagerApi downloadManagerApiA2 = aVar.a();
        Context context = downloadReDetectorSingleResFragment.getContext();
        Intrinsics.e(context);
        DownloadManagerApi.z0(downloadManagerApiA2, subjectId, context, "Download_Dialog", null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d1(DownloadReDetectorSingleResFragment downloadReDetectorSingleResFragment, View it) {
        androidx.p009lifecycle.b0 b0VarP;
        Intrinsics.h(it, "it");
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorSingleResFragment.getViewModel();
        if (viewModel != null && (b0VarP = viewModel.p()) != null) {
            b0VarP.q(4);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e1(DownloadReDetectorSingleResFragment downloadReDetectorSingleResFragment, View it) {
        Intrinsics.h(it, "it");
        DownloadUtil downloadUtil = DownloadUtil.f59900a;
        if (downloadUtil.D()) {
            if (downloadReDetectorSingleResFragment.G0()) {
                downloadReDetectorSingleResFragment.F0();
            }
            return Unit.f67061a;
        }
        if (downloadReDetectorSingleResFragment.getIsRequestPermissionFirst()) {
            downloadReDetectorSingleResFragment.C0(false);
            com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("download_root_path_permission_first", false);
            downloadReDetectorSingleResFragment.getRequestStoragePermission().a(downloadUtil.v());
            return Unit.f67061a;
        }
        if (downloadUtil.F(downloadReDetectorSingleResFragment)) {
            downloadReDetectorSingleResFragment.D0(true);
            com.transsnet.downloader.viewmodel.a0.f60085a.x();
        } else {
            downloadReDetectorSingleResFragment.getRequestStoragePermission().a(downloadUtil.v());
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit f1(DownloadReDetectorSingleResFragment downloadReDetectorSingleResFragment, my.b bVar) {
        DownloadPathEntranceView downloadPathEntranceView;
        if (bVar == null) {
            return Unit.f67061a;
        }
        downloadReDetectorSingleResFragment.B0(bVar);
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = downloadReDetectorSingleResFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "path select path = " + bVar.d() + " ", false, 4, null);
        py.g0 g0Var = (py.g0) downloadReDetectorSingleResFragment.getMViewBinding();
        if (g0Var != null && (downloadPathEntranceView = g0Var.f72734i) != null) {
            downloadPathEntranceView.updatePathName(bVar.d(), bVar.a());
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit g1(DownloadReDetectorSingleResFragment downloadReDetectorSingleResFragment, List list) {
        DownloadPathEntranceView downloadPathEntranceView;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            my.b bVar = (my.b) it.next();
            if (bVar.f()) {
                downloadReDetectorSingleResFragment.B0(bVar);
                lg.a.C0828a c0828a = lg.a.f68839a;
                String tag = downloadReDetectorSingleResFragment.getTAG();
                Intrinsics.g(tag, "<get-TAG>(...)");
                lg.a.C0828a.f(c0828a, tag, "cur download path = " + bVar.d() + " ", false, 4, null);
                com.transsion.baselib.report.launch.b bVar2 = com.transsion.baselib.report.launch.b.f43370a;
                bVar2.b().putString("download_root_path", bVar.b());
                bVar2.b().putString("download_root_path_name", bVar.d());
                bVar2.b().putInt("download_root_path_type", bVar.e());
                py.g0 g0Var = (py.g0) downloadReDetectorSingleResFragment.getMViewBinding();
                if (g0Var != null && (downloadPathEntranceView = g0Var.f72734i) != null) {
                    downloadPathEntranceView.updatePathName(bVar.d(), bVar.a());
                    break;
                }
                break;
                break;
            }
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void h1() {
        DownloadView downloadView;
        py.g0 g0Var = (py.g0) getMViewBinding();
        if (g0Var == null || (downloadView = g0Var.f72731f) == null) {
            return;
        }
        DownloadBean downloadBean = getDownloadBean();
        DownloadView.setShowType$default(downloadView, null, downloadBean != null ? downloadBean.getResourceId() : null, Boolean.FALSE, false, 0, 24, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsnet.downloader.fragment.DownloadReDetectorSingleResBaseFragment
    public void Q0(DownloadBean item) {
        String sizeFormat;
        py.s0 s0Var;
        AppCompatImageView appCompatImageView;
        Integer requireMemberType;
        py.s0 s0Var2;
        AppCompatImageView appCompatImageView2;
        py.s0 s0Var3;
        AppCompatImageView appCompatImageView3;
        py.s0 s0Var4;
        AppCompatTextView appCompatTextView;
        py.s0 s0Var5;
        AppCompatTextView appCompatTextView2;
        py.s0 s0Var6;
        AppCompatTextView appCompatTextView3;
        Intrinsics.h(item, "item");
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        py.g0 g0Var = (py.g0) getMViewBinding();
        if (g0Var != null && (s0Var6 = g0Var.f72727b) != null && (appCompatTextView3 = s0Var6.f72916g) != null) {
            appCompatTextView3.setText(item.getTotalTitleName());
        }
        py.g0 g0Var2 = (py.g0) getMViewBinding();
        if (g0Var2 != null && (s0Var5 = g0Var2.f72727b) != null && (appCompatTextView2 = s0Var5.f72913d) != null) {
            jg.c.g(appCompatTextView2);
        }
        if (TextUtils.isEmpty(item.getSizeFormat())) {
            Long size = item.getSize();
            sizeFormat = size != null ? oh.b.a(size.longValue(), 1) : null;
        } else {
            sizeFormat = item.getSizeFormat();
        }
        Long duration = item.getDuration();
        String str = sizeFormat + " · " + TimeUtilKt.n((duration != null ? duration.longValue() : 0L) * ((long) 1000));
        py.g0 g0Var3 = (py.g0) getMViewBinding();
        if (g0Var3 != null && (s0Var4 = g0Var3.f72727b) != null && (appCompatTextView = s0Var4.f72914e) != null) {
            appCompatTextView.setText(str);
        }
        py.g0 g0Var4 = (py.g0) getMViewBinding();
        if (g0Var4 != null && (s0Var3 = g0Var4.f72727b) != null && (appCompatImageView3 = s0Var3.f72911b) != null) {
            appCompatImageView3.setSelected(true);
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if ((iMemberApi != null ? iMemberApi.B() : false) && (requireMemberType = item.getRequireMemberType()) != null && requireMemberType.intValue() == 1) {
            py.g0 g0Var5 = (py.g0) getMViewBinding();
            if (g0Var5 != null && (s0Var2 = g0Var5.f72727b) != null && (appCompatImageView2 = s0Var2.f72912c) != null) {
                jg.c.k(appCompatImageView2);
            }
        } else {
            py.g0 g0Var6 = (py.g0) getMViewBinding();
            if (g0Var6 != null && (s0Var = g0Var6.f72727b) != null && (appCompatImageView = s0Var.f72912c) != null) {
                jg.c.g(appCompatImageView);
            }
        }
        h1();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: a1, reason: merged with bridge method [inline-methods] */
    public py.g0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.g0 g0VarC = py.g0.c(inflater);
        Intrinsics.g(g0VarC, "inflate(...)");
        return g0VarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        DownloadView downloadView;
        ImageView imageView;
        py.g0 g0Var = (py.g0) getMViewBinding();
        if (g0Var != null && (imageView = g0Var.f72728c) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.v4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorSingleResFragment.b1(this.f59346a, view);
                }
            });
        }
        py.g0 g0Var2 = (py.g0) getMViewBinding();
        if (g0Var2 == null || (downloadView = g0Var2.f72731f) == null) {
            return;
        }
        downloadView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.w4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadReDetectorSingleResFragment.c1(this.f59354a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        String string;
        DownloadPathEntranceView downloadPathEntranceView;
        LinearLayoutCompat linearLayoutCompat;
        ViewGroup.LayoutParams layoutParams;
        HashMap mapG;
        lg.a.C0828a.f(lg.a.f68839a, "premium_d", "DownloadReDetectorSingleResFragment --> initViewData()", false, 4, null);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("extra_module_name")) == null) {
            string = "";
        }
        P0(string);
        O0(true);
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "1");
        }
        py.g0 g0Var = (py.g0) getMViewBinding();
        if (g0Var != null && (linearLayoutCompat = g0Var.f72730e) != null && (layoutParams = linearLayoutCompat.getLayoutParams()) != null) {
            layoutParams.height = q0();
        }
        py.g0 g0Var2 = (py.g0) getMViewBinding();
        if (g0Var2 != null && (downloadPathEntranceView = g0Var2.f72734i) != null) {
            downloadPathEntranceView.setChangeClickCallback(new Function1() { // from class: com.transsnet.downloader.fragment.x4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DownloadReDetectorSingleResFragment.d1(this.f59363a, (View) obj);
                }
            });
            downloadPathEntranceView.setPermissionClickCallback(new Function1() { // from class: com.transsnet.downloader.fragment.y4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DownloadReDetectorSingleResFragment.e1(this.f59371a, (View) obj);
                }
            });
        }
        Z0();
    }

    @Override // com.transsnet.downloader.fragment.DownloadReDetectorSingleResBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarR;
        androidx.p009lifecycle.b0 b0VarB;
        super.initViewModel();
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "single， initViewModel  ", false, 4, null);
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            DownloadResourcesDetectorViewModel viewModel = getViewModel();
            if (viewModel != null && (b0VarB = viewModel.B()) != null) {
                b0VarB.j(parentFragment, new c(new Function1() { // from class: com.transsnet.downloader.fragment.t4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return DownloadReDetectorSingleResFragment.f1(this.f59325a, (my.b) obj);
                    }
                }));
            }
            DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
            if (viewModel2 != null && (b0VarR = viewModel2.r()) != null) {
                b0VarR.j(parentFragment, new c(new Function1() { // from class: com.transsnet.downloader.fragment.u4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return DownloadReDetectorSingleResFragment.g1(this.f59334a, (List) obj);
                    }
                }));
            }
        }
        DownloadResourcesDetectorViewModel viewModel3 = getViewModel();
        if (viewModel3 != null) {
            viewModel3.v();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Z0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment
    public void v0() {
        DownloadPathEntranceView downloadPathEntranceView;
        super.v0();
        py.g0 g0Var = (py.g0) getMViewBinding();
        if (g0Var == null || (downloadPathEntranceView = g0Var.f72734i) == null) {
            return;
        }
        downloadPathEntranceView.onPermissionGranted();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment
    public void w0() {
        DownloadPathEntranceView downloadPathEntranceView;
        super.w0();
        py.g0 g0Var = (py.g0) getMViewBinding();
        if (g0Var == null || (downloadPathEntranceView = g0Var.f72734i) == null) {
            return;
        }
        downloadPathEntranceView.onPermissionDenied();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment
    public void x0() {
        DownloadPathEntranceView downloadPathEntranceView;
        super.x0();
        if (G0()) {
            F0();
            return;
        }
        py.g0 g0Var = (py.g0) getMViewBinding();
        if (g0Var == null || (downloadPathEntranceView = g0Var.f72734i) == null) {
            return;
        }
        downloadPathEntranceView.onPermissionGranted();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment
    public void y0() {
        DownloadPathEntranceView downloadPathEntranceView;
        super.y0();
        py.g0 g0Var = (py.g0) getMViewBinding();
        if (g0Var == null || (downloadPathEntranceView = g0Var.f72734i) == null) {
            return;
        }
        downloadPathEntranceView.onPermissionRefresh();
    }
}
