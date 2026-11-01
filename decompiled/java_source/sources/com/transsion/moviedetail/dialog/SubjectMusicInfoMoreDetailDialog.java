package com.transsion.moviedetail.dialog;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import cn.i;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetail.dialog.SubjectMusicInfoMoreDetailDialog;
import com.transsion.moviedetail.view.InfoExtendView;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.g;
import com.transsion.play.detail.fragment.BaseBottomDialogFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import g.a;
import hj.b;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import jg.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001)B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006*"}, d2 = {"Lcom/transsion/moviedetail/dialog/SubjectMusicInfoMoreDetailDialog;", "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;", "Lcn/i;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "", "u0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "movieDetailBean", "v0", "Lcom/transsion/moviedetailapi/bean/Staff;", "staff", "t0", "(Lcom/transsion/moviedetailapi/bean/Staff;)V", "Landroid/view/LayoutInflater;", "inflater", "r0", "(Landroid/view/LayoutInflater;)Lcn/i;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "", "hidden", "onHiddenChanged", "(Z)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", "c", "Ljava/lang/String;", "mSubjectId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "a", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubjectMusicInfoMoreDetailDialog extends BaseBottomDialogFragment<i> {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Subject mMovieDetailBean;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String mSubjectId;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(SubjectMusicInfoMoreDetailDialog subjectMusicInfoMoreDetailDialog, View view) {
        BaseBottomDialogFragment.m0(subjectMusicInfoMoreDetailDialog, false, 1, null);
    }

    private final void t0(Staff staff) {
        Navigator navigatorJ = TheRouter.c("/movie/staff").J("staff", staff);
        Context context = getContext();
        if (context == null) {
            return;
        }
        Navigator.x(navigatorJ, context, null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void u0(Subject subject) {
        InfoExtendView infoExtendView;
        InfoExtendView infoExtendView2;
        InfoExtendView infoExtendView3;
        String description = subject != null ? subject.getDescription() : null;
        if (description == null || description.length() == 0) {
            i iVar = (i) getMViewBinding();
            if (iVar == null || (infoExtendView = iVar.f17377b) == null) {
                return;
            }
            c.g(infoExtendView);
            return;
        }
        i iVar2 = (i) getMViewBinding();
        if (iVar2 != null && (infoExtendView3 = iVar2.f17377b) != null) {
            infoExtendView3.showData(subject);
        }
        i iVar3 = (i) getMViewBinding();
        if (iVar3 == null || (infoExtendView2 = iVar3.f17377b) == null) {
            return;
        }
        c.k(infoExtendView2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void v0(Subject movieDetailBean) {
        this.mMovieDetailBean = movieDetailBean;
        u0(movieDetailBean);
        i iVar = (i) getMViewBinding();
        if (iVar != null) {
            iVar.f17382g.setText(movieDetailBean.getTitle());
            g.a(movieDetailBean.getSubjectType());
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) " | ");
            if (!TextUtils.isEmpty(movieDetailBean.getCountryName())) {
                spannableStringBuilder.append((CharSequence) movieDetailBean.getCountryName());
            }
            if (!TextUtils.isEmpty(movieDetailBean.getGenre())) {
                if (spannableStringBuilder.length() > 2) {
                    spannableStringBuilder.append((CharSequence) " | ");
                }
                spannableStringBuilder.append((CharSequence) movieDetailBean.getGenre());
            }
            if (!TextUtils.isEmpty(movieDetailBean.getReleaseDate())) {
                if (spannableStringBuilder.length() > 2) {
                    spannableStringBuilder.append((CharSequence) " | ");
                }
                String releaseDate = movieDetailBean.getReleaseDate();
                spannableStringBuilder.append((CharSequence) (releaseDate != null ? StringsKt.y1(releaseDate, 4) : null));
            }
            Integer durationSeconds = movieDetailBean.getDurationSeconds();
            if ((durationSeconds != null ? durationSeconds.intValue() : 0) > 0) {
                spannableStringBuilder.append((CharSequence) " | ");
                Integer durationSeconds2 = movieDetailBean.getDurationSeconds();
                spannableStringBuilder.append((CharSequence) TimeUtilKt.n(((long) (durationSeconds2 != null ? durationSeconds2.intValue() : 0)) * 1000));
            }
            iVar.f17384i.setText(spannableStringBuilder);
            List<Staff> staffList = movieDetailBean.getStaffList();
            if (staffList != null) {
                if (staffList.isEmpty()) {
                    iVar.f17378c.setVisibility(8);
                    iVar.f17380e.setVisibility(8);
                    return;
                }
                final Staff staff = staffList.get(0);
                if (TextUtils.isEmpty(staff.getAvatarUrl())) {
                    iVar.f17378c.setVisibility(8);
                    iVar.f17380e.setVisibility(8);
                    return;
                }
                f.a aVar = f.f61882a;
                FragmentActivity fragmentActivityRequireActivity = requireActivity();
                Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
                f.b bVarM = aVar.m(fragmentActivityRequireActivity);
                String avatarUrl = staff.getAvatarUrl();
                if (avatarUrl == null) {
                    avatarUrl = "";
                }
                f.b bVarG = bVarM.g(avatarUrl);
                ShapeableImageView ivAvatar = iVar.f17378c;
                Intrinsics.g(ivAvatar, "ivAvatar");
                bVarG.d(ivAvatar);
                iVar.f17378c.setOnClickListener(new View.OnClickListener() { // from class: dn.e
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SubjectMusicInfoMoreDetailDialog.w0(this.f61372a, staff, view);
                    }
                });
                iVar.f17380e.setOnClickListener(new View.OnClickListener() { // from class: dn.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SubjectMusicInfoMoreDetailDialog.x0(this.f61374a, staff, view);
                    }
                });
                iVar.f17380e.setText(staff.getName());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(SubjectMusicInfoMoreDetailDialog subjectMusicInfoMoreDetailDialog, Staff staff, View view) {
        subjectMusicInfoMoreDetailDialog.t0(staff);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(SubjectMusicInfoMoreDetailDialog subjectMusicInfoMoreDetailDialog, Staff staff, View view) {
        subjectMusicInfoMoreDetailDialog.t0(staff);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        AppCompatImageView appCompatImageView;
        i iVar = (i) getMViewBinding();
        if (iVar == null || (appCompatImageView = iVar.f17379d) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: dn.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubjectMusicInfoMoreDetailDialog.s0(this.f61371a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
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
        i iVar = (i) getMViewBinding();
        if (iVar != null && (appCompatTextView2 = iVar.f17384i) != null) {
            Context context = getContext();
            appCompatTextView2.setCompoundDrawablesRelativeWithIntrinsicBounds(context != null ? a.b(context, R$drawable.ic_tag_music) : null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
        Subject subject5 = this.mMovieDetailBean;
        if (subject5 != null) {
            g.a(subject5.getSubjectType());
            i iVar2 = (i) getMViewBinding();
            if (iVar2 != null && (appCompatTextView = iVar2.f17382g) != null) {
                appCompatTextView.setText(subject5.getTitle());
            }
            v0(subject5);
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
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        i iVarC = i.c(inflater);
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
