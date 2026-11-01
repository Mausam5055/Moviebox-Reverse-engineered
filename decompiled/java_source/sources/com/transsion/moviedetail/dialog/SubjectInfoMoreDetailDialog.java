package com.transsion.moviedetail.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import cn.p;
import com.blankj.utilcode.util.Utils;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baselib.helper.a;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$string;
import com.transsion.moviedetail.dialog.SubjectInfoMoreDetailDialog;
import com.transsion.moviedetail.fragment.StarringFragment;
import com.transsion.moviedetail.view.CustomTextViewGroup;
import com.transsion.moviedetail.view.InfoExtendView;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.g;
import com.transsion.ninegridview.ImageInfo;
import com.transsion.ninegridview.preview.ImagePreviewActivity;
import com.transsion.play.detail.fragment.BaseBottomDialogFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import hj.b;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import jg.c;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 &2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001'B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\tJ\u0017\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006("}, d2 = {"Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;", "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;", "Lcn/p;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "", "u0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "mMovieDetailBean", "v0", "", "releaseDate", "q0", "(Ljava/lang/String;)Ljava/lang/String;", "Landroid/view/LayoutInflater;", "inflater", "r0", "(Landroid/view/LayoutInflater;)Lcn/p;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "retryLoadData", "initListener", "", "hidden", "onHiddenChanged", "(Z)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/moviedetailapi/bean/Subject;", "c", "Ljava/lang/String;", "mSubjectId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "a", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectInfoMoreDetailDialog extends BaseBottomDialogFragment<p> {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Subject mMovieDetailBean;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String mSubjectId;

    private final String q0(String releaseDate) {
        if (releaseDate.length() < 4) {
            return releaseDate;
        }
        String strSubstring = releaseDate.substring(0, 4);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(SubjectInfoMoreDetailDialog subjectInfoMoreDetailDialog, View view) {
        Cover cover;
        Subject subject = subjectInfoMoreDetailDialog.mMovieDetailBean;
        if (subject == null || (cover = subject.getCover()) == null) {
            return;
        }
        a.f43262a.h("detail_info", "preview", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
        ImageInfo imageInfo = new ImageInfo();
        imageInfo.bigImageUrl = cover.getUrl();
        imageInfo.thumbnailUrl = cover.getThumbnail();
        Integer height = cover.getHeight();
        imageInfo.imageViewHeight = height != null ? height.intValue() : 0.0f;
        Integer width = cover.getWidth();
        imageInfo.imageViewWidth = width != null ? width.intValue() : 0.0f;
        List listQ = CollectionsKt.q(imageInfo);
        ImagePreviewActivity.Companion companion = ImagePreviewActivity.INSTANCE;
        Context context = view.getContext();
        Intrinsics.g(context, "getContext(...)");
        companion.a(context, 0, listQ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(SubjectInfoMoreDetailDialog subjectInfoMoreDetailDialog, View view) {
        BaseBottomDialogFragment.m0(subjectInfoMoreDetailDialog, false, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void u0(Subject subject) {
        InfoExtendView infoExtendView;
        InfoExtendView infoExtendView2;
        InfoExtendView infoExtendView3;
        String description = subject != null ? subject.getDescription() : null;
        if (description == null || description.length() == 0) {
            p pVar = (p) getMViewBinding();
            if (pVar == null || (infoExtendView = pVar.f17433d) == null) {
                return;
            }
            c.g(infoExtendView);
            return;
        }
        p pVar2 = (p) getMViewBinding();
        if (pVar2 != null && (infoExtendView3 = pVar2.f17433d) != null) {
            infoExtendView3.showData(subject);
        }
        p pVar3 = (p) getMViewBinding();
        if (pVar3 == null || (infoExtendView2 = pVar3.f17433d) == null) {
            return;
        }
        c.k(infoExtendView2);
    }

    private final void v0(Subject mMovieDetailBean) {
        Integer subjectType;
        if (mMovieDetailBean != null && (subjectType = mMovieDetailBean.getSubjectType()) != null) {
            int iIntValue = subjectType.intValue();
            int value = SubjectType.AUDIO.getValue();
            if (iIntValue <= SubjectType.MUSIC.getValue() && value <= iIntValue) {
                return;
            }
        }
        List<Staff> staffList = mMovieDetailBean != null ? mMovieDetailBean.getStaffList() : null;
        if (staffList == null || staffList.isEmpty()) {
            return;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        w wVarP = childFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        wVarP.s(R$id.fl_starring, new StarringFragment());
        wVarP.j();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        AppCompatImageView appCompatImageView;
        ShapeableImageView shapeableImageView;
        p pVar = (p) getMViewBinding();
        if (pVar != null && (shapeableImageView = pVar.f17435f) != null) {
            shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: dn.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubjectInfoMoreDetailDialog.s0(this.f61369a, view);
                }
            });
        }
        p pVar2 = (p) getMViewBinding();
        if (pVar2 == null || (appCompatImageView = pVar2.f17439j) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: dn.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubjectInfoMoreDetailDialog.t0(this.f61370a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        AppCompatTextView appCompatTextView;
        CustomTextViewGroup customTextViewGroup;
        p pVar;
        CustomTextViewGroup customTextViewGroup2;
        p pVar2;
        CustomTextViewGroup customTextViewGroup3;
        p pVar3;
        CustomTextViewGroup customTextViewGroup4;
        p pVar4;
        CustomTextViewGroup customTextViewGroup5;
        CustomTextViewGroup customTextViewGroup6;
        p pVar5;
        CustomTextViewGroup customTextViewGroup7;
        AppCompatTextView appCompatTextView2;
        AppCompatImageView appCompatImageView;
        View view;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        List listS0;
        AppCompatTextView appCompatTextView6;
        AppCompatTextView appCompatTextView7;
        AppCompatImageView appCompatImageView2;
        ShapeableImageView shapeableImageView;
        String url;
        String thumbnail;
        Cover cover;
        Cover cover2;
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
        p pVar6 = (p) getMViewBinding();
        if (pVar6 != null && (shapeableImageView = pVar6.f17435f) != null) {
            f.a aVar = f.f61882a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            f.b bVarM = aVar.m(contextRequireContext);
            Subject subject5 = this.mMovieDetailBean;
            if (subject5 == null || (cover2 = subject5.getCover()) == null || (url = cover2.getUrl()) == null) {
                url = "";
            }
            f.b bVarG = bVarM.g(url);
            Subject subject6 = this.mMovieDetailBean;
            if (subject6 == null || (cover = subject6.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarG.l(thumbnail).d(shapeableImageView);
        }
        Subject subject7 = this.mMovieDetailBean;
        if (subject7 != null) {
            int iA = g.a(subject7.getSubjectType());
            p pVar7 = (p) getMViewBinding();
            if (pVar7 != null && (appCompatImageView2 = pVar7.f17434e) != null) {
                appCompatImageView2.setImageResource(iA);
            }
            p pVar8 = (p) getMViewBinding();
            if (pVar8 != null && (appCompatTextView7 = pVar8.f17442m) != null) {
                appCompatTextView7.setText(subject7.getTitle());
            }
            Integer seNum = subject7.getSeNum();
            if (seNum != null) {
                int iIntValue = seNum.intValue();
                if (iIntValue > 1) {
                    Context context = getContext();
                    String string = context != null ? context.getString(R$string.movie_detail_seasons, Integer.valueOf(iIntValue)) : null;
                    p pVar9 = (p) getMViewBinding();
                    if (pVar9 != null && (appCompatTextView6 = pVar9.f17445p) != null) {
                        appCompatTextView6.setText(string != null ? string : "");
                    }
                } else {
                    String subtitles = subject7.getSubtitles();
                    int size = (subtitles == null || (listS0 = StringsKt.S0(subtitles, new String[]{","}, false, 0, 6, null)) == null) ? 0 : listS0.size();
                    if (size > 10) {
                        p pVar10 = (p) getMViewBinding();
                        if (pVar10 != null && (appCompatTextView5 = pVar10.f17445p) != null) {
                            appCompatTextView5.setText(Utils.a().getString(R$string.movie_detail_subtitles_count, "10+"));
                        }
                    } else if (size > 1) {
                        p pVar11 = (p) getMViewBinding();
                        if (pVar11 != null && (appCompatTextView4 = pVar11.f17445p) != null) {
                            appCompatTextView4.setText(Utils.a().getString(R$string.movie_detail_subtitles_count, String.valueOf(size)));
                        }
                    } else {
                        p pVar12 = (p) getMViewBinding();
                        if (pVar12 != null && (appCompatTextView3 = pVar12.f17445p) != null) {
                            c.g(appCompatTextView3);
                        }
                        p pVar13 = (p) getMViewBinding();
                        if (pVar13 != null && (view = pVar13.f17448s) != null) {
                            c.g(view);
                        }
                    }
                }
            }
            if (subject7.isMusicType()) {
                p pVar14 = (p) getMViewBinding();
                if (pVar14 != null && (appCompatImageView = pVar14.f17437h) != null) {
                    c.g(appCompatImageView);
                }
                p pVar15 = (p) getMViewBinding();
                if (pVar15 != null && (appCompatTextView2 = pVar15.f17444o) != null) {
                    c.g(appCompatTextView2);
                }
                String countryName = subject7.getCountryName();
                if (countryName != null && (pVar5 = (p) getMViewBinding()) != null && (customTextViewGroup7 = pVar5.f17440k) != null) {
                    customTextViewGroup7.setText(countryName);
                }
                String genre = subject7.getGenre();
                if (genre != null) {
                    String string2 = StringsKt.n1((String) StringsKt.S0(genre, new String[]{","}, false, 0, 6, null).get(0)).toString();
                    p pVar16 = (p) getMViewBinding();
                    if (pVar16 != null && (customTextViewGroup6 = pVar16.f17447r) != null) {
                        customTextViewGroup6.setText(string2);
                    }
                }
                String releaseDate = subject7.getReleaseDate();
                if (releaseDate != null && (pVar4 = (p) getMViewBinding()) != null && (customTextViewGroup5 = pVar4.f17446q) != null) {
                    customTextViewGroup5.setText(q0(releaseDate));
                }
            } else {
                String restrictLevel = subject7.getRestrictLevel();
                if (restrictLevel != null && (pVar3 = (p) getMViewBinding()) != null && (customTextViewGroup4 = pVar3.f17443n) != null) {
                    customTextViewGroup4.setText(restrictLevel);
                }
                String releaseDate2 = subject7.getReleaseDate();
                if (releaseDate2 != null && (pVar2 = (p) getMViewBinding()) != null && (customTextViewGroup3 = pVar2.f17446q) != null) {
                    customTextViewGroup3.setText(q0(releaseDate2));
                }
                String countryName2 = subject7.getCountryName();
                if (countryName2 != null && (pVar = (p) getMViewBinding()) != null && (customTextViewGroup2 = pVar.f17440k) != null) {
                    customTextViewGroup2.setText(countryName2);
                }
                String genre2 = subject7.getGenre();
                if (genre2 != null) {
                    String string3 = StringsKt.n1((String) StringsKt.S0(genre2, new String[]{","}, false, 0, 6, null).get(0)).toString();
                    p pVar17 = (p) getMViewBinding();
                    if (pVar17 != null && (customTextViewGroup = pVar17.f17447r) != null) {
                        customTextViewGroup.setText(string3);
                    }
                }
                p pVar18 = (p) getMViewBinding();
                if (pVar18 != null && (appCompatTextView = pVar18.f17444o) != null) {
                    appCompatTextView.setText(subject7.getImdbRate());
                }
            }
            u0(this.mMovieDetailBean);
            v0(this.mMovieDetailBean);
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
    public p getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        p pVarC = p.c(inflater);
        Intrinsics.g(pVarC, "inflate(...)");
        return pVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
