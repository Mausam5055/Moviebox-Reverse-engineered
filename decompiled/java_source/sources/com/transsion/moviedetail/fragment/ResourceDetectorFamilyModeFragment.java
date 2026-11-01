package com.transsion.moviedetail.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/transsion/moviedetail/fragment/ResourceDetectorFamilyModeFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lcn/l;", "<init>", "()V", "", "receiveArguments", "", "isMonitorNetworkState", "()Z", "isAudioShowNoNetworkLayout", "Landroid/view/LayoutInflater;", "inflater", "k0", "(Landroid/view/LayoutInflater;)Lcn/l;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lcom/transsion/moviedetailapi/bean/Subject;", "a", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ResourceDetectorFamilyModeFragment extends PageStatusFragment<cn.l> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Subject mMovieDetailBean;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(ResourceDetectorFamilyModeFragment resourceDetectorFamilyModeFragment, View view) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_DETAIL");
        Subject subject = resourceDetectorFamilyModeFragment.mMovieDetailBean;
        Navigator.x(navigatorK.K("subject_id", subject != null ? subject.getSubjectId() : null), resourceDetectorFamilyModeFragment.requireContext(), null, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        AppCompatImageView appCompatImageView;
        cn.l mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f17404b) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResourceDetectorFamilyModeFragment.l0(this.f47200a, view);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        ResourceDetectors resourceDetectors;
        AppCompatTextView appCompatTextView3;
        lg.a.C0828a.f(lg.a.f68839a, "movie_detail", "ResourceDetectorFamilyModeFragment-----initViewData", false, 4, null);
        Subject subject = this.mMovieDetailBean;
        if (subject != null) {
            List<ResourceDetectors> resourceDetectors2 = subject.getResourceDetectors();
            if (resourceDetectors2 != null && (resourceDetectors = (ResourceDetectors) CollectionsKt.k0(resourceDetectors2)) != null) {
                cn.l mViewBinding = getMViewBinding();
                if (mViewBinding == null || (appCompatTextView3 = mViewBinding.f17406d) == null) {
                    return;
                }
                appCompatTextView3.setText(resourceDetectors.getUploadBy());
                return;
            }
            cn.l mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (appCompatTextView2 = mViewBinding2.f17406d) != null) {
                jg.c.g(appCompatTextView2);
            }
            cn.l mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (appCompatTextView = mViewBinding3.f17405c) == null) {
                return;
            }
            jg.c.g(appCompatTextView);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
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
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public cn.l getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        cn.l lVarC = cn.l.c(inflater);
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
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
