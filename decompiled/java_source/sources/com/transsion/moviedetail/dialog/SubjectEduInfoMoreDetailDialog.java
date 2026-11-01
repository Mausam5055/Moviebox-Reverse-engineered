package com.transsion.moviedetail.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import cn.e;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.moviedetail.R$string;
import com.transsion.moviedetail.dialog.SubjectEduInfoMoreDetailDialog;
import com.transsion.moviedetail.view.CustomTextViewGroup;
import com.transsion.moviedetail.view.InfoExtendView;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.g;
import com.transsion.play.detail.fragment.BaseBottomDialogFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import defpackage.a;
import hj.b;
import java.io.Serializable;
import java.util.HashMap;
import jg.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 $2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006&"}, d2 = {"Lcom/transsion/moviedetail/dialog/SubjectEduInfoMoreDetailDialog;", "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;", "Lcn/e;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "", "s0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "subject", "r0", "Landroid/view/LayoutInflater;", "inflater", "p0", "(Landroid/view/LayoutInflater;)Lcn/e;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "", "hidden", "onHiddenChanged", "(Z)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", "c", "Ljava/lang/String;", "mSubjectId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "a", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectEduInfoMoreDetailDialog extends BaseBottomDialogFragment<e> {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Subject mMovieDetailBean;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String mSubjectId;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(SubjectEduInfoMoreDetailDialog subjectEduInfoMoreDetailDialog, View view) {
        BaseBottomDialogFragment.m0(subjectEduInfoMoreDetailDialog, false, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void r0(Subject subject) {
        InfoExtendView infoExtendView;
        InfoExtendView infoExtendView2;
        InfoExtendView infoExtendView3;
        String description = subject != null ? subject.getDescription() : null;
        if (description == null || description.length() == 0) {
            e eVar = (e) getMViewBinding();
            if (eVar == null || (infoExtendView = eVar.f17340c) == null) {
                return;
            }
            c.g(infoExtendView);
            return;
        }
        e eVar2 = (e) getMViewBinding();
        if (eVar2 != null && (infoExtendView3 = eVar2.f17340c) != null) {
            infoExtendView3.showData(subject);
        }
        e eVar3 = (e) getMViewBinding();
        if (eVar3 == null || (infoExtendView2 = eVar3.f17340c) == null) {
            return;
        }
        c.k(infoExtendView2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void s0(Subject movieDetailBean) {
        e eVar;
        CustomTextViewGroup customTextViewGroup;
        e eVar2;
        CustomTextViewGroup customTextViewGroup2;
        e eVar3;
        CustomTextViewGroup customTextViewGroup3;
        e eVar4;
        CustomTextViewGroup customTextViewGroup4;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        this.mMovieDetailBean = movieDetailBean;
        e eVar5 = (e) getMViewBinding();
        if (eVar5 != null && (appCompatTextView = eVar5.f17348k) != null) {
            appCompatTextView.setText(movieDetailBean.getTitle());
        }
        r0(movieDetailBean);
        int iA = g.a(movieDetailBean.getSubjectType());
        e eVar6 = (e) getMViewBinding();
        if (eVar6 != null && (appCompatImageView = eVar6.f17341d) != null) {
            appCompatImageView.setImageResource(iA);
        }
        String category = movieDetailBean.getCategory();
        if (category != null && (eVar4 = (e) getMViewBinding()) != null && (customTextViewGroup4 = eVar4.f17343f) != null) {
            customTextViewGroup4.setText(category);
        }
        String genre = movieDetailBean.getGenre();
        if (genre != null && (eVar3 = (e) getMViewBinding()) != null && (customTextViewGroup3 = eVar3.f17346i) != null) {
            customTextViewGroup3.setText(genre);
        }
        String strA = a.a(this.mMovieDetailBean);
        if (strA != null && (eVar2 = (e) getMViewBinding()) != null && (customTextViewGroup2 = eVar2.f17345h) != null) {
            customTextViewGroup2.setText(strA);
        }
        Context context = getContext();
        if (context != null) {
            int i11 = R$string.movie_detail_students;
            Long viewers = movieDetailBean.getViewers();
            String string = context.getString(i11, Long.valueOf(viewers != null ? viewers.longValue() : 0L));
            if (string == null || (eVar = (e) getMViewBinding()) == null || (customTextViewGroup = eVar.f17349l) == null) {
                return;
            }
            customTextViewGroup.setText(string);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        AppCompatImageView appCompatImageView;
        e eVar = (e) getMViewBinding();
        if (eVar == null || (appCompatImageView = eVar.f17344g) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: dn.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubjectEduInfoMoreDetailDialog.q0(this.f61368a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        String subjectId;
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("data_key_resource_detectors") : null;
        Subject subject = serializable instanceof Subject ? (Subject) serializable : null;
        this.mMovieDetailBean = subject;
        this.mSubjectId = subject != null ? subject.getSubjectId() : null;
        b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG3 = logViewConfig2.g()) != null) {
            Subject subject2 = this.mMovieDetailBean;
            if (subject2 == null || (subjectId = subject2.getSubjectId()) == null) {
                subjectId = "";
            }
            mapG3.put("subject_id", subjectId);
        }
        b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG2 = logViewConfig3.g()) != null) {
            Subject subject3 = this.mMovieDetailBean;
            mapG2.put("subject_type", String.valueOf(subject3 != null ? subject3.getSubjectType() : null));
        }
        b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
            Subject subject4 = this.mMovieDetailBean;
            mapG.put("has_resource", String.valueOf(subject4 != null ? subject4.getHasResource() : null));
        }
        Subject subject5 = this.mMovieDetailBean;
        if (subject5 != null) {
            int iA = g.a(subject5.getSubjectType());
            e eVar = (e) getMViewBinding();
            if (eVar != null && (appCompatImageView = eVar.f17341d) != null) {
                appCompatImageView.setImageResource(iA);
            }
            e eVar2 = (e) getMViewBinding();
            if (eVar2 != null && (appCompatTextView = eVar2.f17348k) != null) {
                appCompatTextView.setText(subject5.getTitle());
            }
            s0(subject5);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public b newLogViewConfig() {
        return new b("detail_info", false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public e getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        e eVarC = e.c(inflater);
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
