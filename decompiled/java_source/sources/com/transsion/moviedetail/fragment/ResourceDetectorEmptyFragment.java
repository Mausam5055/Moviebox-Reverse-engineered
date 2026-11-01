package com.transsion.moviedetail.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.R$string;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.widget.DrawableCenterTextView;
import com.transsion.baseui.widget.ResourcesRequestView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.model.PostEntity;
import com.transsion.pushapi.NoticePermissionFrom;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 %2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001b\u0010 \u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lcn/k;", "<init>", "()V", "", "v0", "receiveArguments", "", "isMonitorNetworkState", "()Z", "isAudioShowNoNetworkLayout", "Landroid/view/LayoutInflater;", "inflater", "p0", "(Landroid/view/LayoutInflater;)Lcn/k;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lcom/transsion/moviedetailapi/bean/Subject;", "a", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "o0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "", "c", "Ljava/lang/Integer;", "count", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ResourceDetectorEmptyFragment extends PageStatusFragment<cn.k> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Subject mMovieDetailBean;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.moviedetail.fragment.ResourceDetectorEmptyFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.moviedetail.fragment.ResourceDetectorEmptyFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Integer count;

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f47040a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47040a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f47040a;
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
            this.f47040a.invoke(obj);
        }
    }

    private final MovieDetailViewModel o0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(ResourceDetectorEmptyFragment resourceDetectorEmptyFragment, View view) {
        List<ResourceDetectors> resourceDetectors;
        String title;
        Subject subject = resourceDetectorEmptyFragment.mMovieDetailBean;
        if (subject == null || (resourceDetectors = subject.getResourceDetectors()) == null || resourceDetectors.isEmpty()) {
            return;
        }
        ResourceDetectors resourceDetectors2 = resourceDetectors.get(0);
        ResourceDetectorDialogFragment.Companion companion = ResourceDetectorDialogFragment.INSTANCE;
        Subject subject2 = resourceDetectorEmptyFragment.mMovieDetailBean;
        if (subject2 == null || (title = subject2.getTitle()) == null) {
            title = "";
        }
        ResourceDetectorDialogFragment resourceDetectorDialogFragmentA = companion.a(title, resourceDetectors2);
        FragmentManager childFragmentManager = resourceDetectorEmptyFragment.getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        resourceDetectorDialogFragmentA.show(childFragmentManager, "ResourceDetectorEmptyFragment --> ");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(ResourceDetectorEmptyFragment resourceDetectorEmptyFragment, View view) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_DETAIL");
        Subject subject = resourceDetectorEmptyFragment.mMovieDetailBean;
        Navigator.x(navigatorK.K("subject_id", subject != null ? subject.getSubjectId() : null), resourceDetectorEmptyFragment.requireContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(ResourceDetectorEmptyFragment resourceDetectorEmptyFragment, View view) {
        tp.e.f76335a.e(resourceDetectorEmptyFragment, NoticePermissionFrom.DETAIL_NO_RES);
        resourceDetectorEmptyFragment.v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(ResourceDetectorEmptyFragment resourceDetectorEmptyFragment, View view) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_DETAIL");
        Subject subject = resourceDetectorEmptyFragment.mMovieDetailBean;
        Navigator.x(navigatorK.K("subject_id", subject != null ? subject.getSubjectId() : null), resourceDetectorEmptyFragment.requireContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u0(ResourceDetectorEmptyFragment resourceDetectorEmptyFragment, PostEntity postEntity) {
        int count;
        ResourcesRequestView resourcesRequestView;
        if (postEntity == null || !postEntity.getSuccess()) {
            lg.a.C0828a.g(lg.a.f68839a, "Submission fail", false, 2, null);
        } else {
            lg.a.C0828a.g(lg.a.f68839a, "Post request succeed " + postEntity, false, 2, null);
            if (resourceDetectorEmptyFragment.count == null) {
                if (postEntity == null || (count = postEntity.getCount()) == null) {
                    count = 0;
                }
                resourceDetectorEmptyFragment.count = count;
                cn.k mViewBinding = resourceDetectorEmptyFragment.getMViewBinding();
                if (mViewBinding != null && (resourcesRequestView = mViewBinding.f17402e) != null) {
                    Integer num = resourceDetectorEmptyFragment.count;
                    resourcesRequestView.setCount(num != null ? num.intValue() : 0, false);
                }
            }
        }
        return Unit.f67061a;
    }

    private final void v0() {
        ResourcesRequestView resourcesRequestView;
        if (!nh.m.f70474a.e()) {
            com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f41479a;
            hVar.f(16, 0, -com.blankj.utilcode.util.a0.a(20.0f));
            hVar.l(getString(R$string.base_network_fail));
            return;
        }
        if (com.transsion.baseui.util.c.f43504a.a(R$id.id_request_request, 500L)) {
            return;
        }
        MovieDetailViewModel movieDetailViewModelO0 = o0();
        Subject subject = this.mMovieDetailBean;
        MovieDetailViewModel.W(movieDetailViewModelO0, subject != null ? subject.getSubjectId() : null, false, 2, null);
        Integer num = this.count;
        if (num != null) {
            Intrinsics.e(num);
            this.count = Integer.valueOf(num.intValue() + 1);
            cn.k mViewBinding = getMViewBinding();
            if (mViewBinding == null || (resourcesRequestView = mViewBinding.f17402e) == null) {
                return;
            }
            Integer num2 = this.count;
            Intrinsics.e(num2);
            ResourcesRequestView.setCount$default(resourcesRequestView, num2.intValue(), false, 2, null);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        AppCompatImageView appCompatImageView;
        ResourcesRequestView resourcesRequestView;
        DrawableCenterTextView ivCenterView;
        AppCompatImageView appCompatImageView2;
        AppCompatTextView appCompatTextView;
        cn.k mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatTextView = mViewBinding.f17400c) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ResourceDetectorEmptyFragment.q0(this.f47187a, view);
                }
            });
        }
        cn.k mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView2 = mViewBinding2.f17399b) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.k0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ResourceDetectorEmptyFragment.r0(this.f47190a, view);
                }
            });
        }
        cn.k mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (resourcesRequestView = mViewBinding3.f17402e) != null && (ivCenterView = resourcesRequestView.getIvCenterView()) != null) {
            ivCenterView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.l0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ResourceDetectorEmptyFragment.s0(this.f47193a, view);
                }
            });
        }
        cn.k mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (appCompatImageView = mViewBinding4.f17399b) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResourceDetectorEmptyFragment.t0(this.f47197a, view);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        ResourcesRequestView resourcesRequestView;
        List<ResourceDetectors> resourceDetectors;
        AppCompatTextView appCompatTextView;
        Subject subject = this.mMovieDetailBean;
        if (subject != null && (resourceDetectors = subject.getResourceDetectors()) != null && !resourceDetectors.isEmpty()) {
            String string = getString(com.transsion.moviedetail.R$string.movie_detail_source, resourceDetectors.get(0).getSource());
            Intrinsics.g(string, "getString(...)");
            cn.k mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatTextView = mViewBinding.f17400c) != null) {
                appCompatTextView.setText(string);
            }
        }
        cn.k mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (resourcesRequestView = mViewBinding2.f17402e) != null) {
            String string2 = getString(com.transsion.moviedetail.R$string.movie_detail_coming_soon);
            Intrinsics.g(string2, "getString(...)");
            resourcesRequestView.set(string2);
        }
        MovieDetailViewModel movieDetailViewModelO0 = o0();
        Subject subject2 = this.mMovieDetailBean;
        movieDetailViewModelO0.V(subject2 != null ? subject2.getSubjectId() : null, true);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        o0().H().j(this, new b(new Function1() { // from class: com.transsion.moviedetail.fragment.i0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ResourceDetectorEmptyFragment.u0(this.f47184a, (PostEntity) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public cn.k getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        cn.k kVarC = cn.k.c(inflater);
        Intrinsics.g(kVarC, "inflate(...)");
        return kVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("data_key_resource_detectors") : null;
        this.mMovieDetailBean = serializable instanceof Subject ? (Subject) serializable : null;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
