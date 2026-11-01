package com.transsion.videodetail;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetail.dialog.SubjectInfoMoreDetailDialog;
import com.transsion.moviedetail.view.CustomTextViewGroup;
import com.transsion.moviedetail.view.HeaderExtensionFragment;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.ninegridview.ImageInfo;
import com.transsion.ninegridview.preview.ImagePreviewActivity;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u0019\u0010\r\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\u00072\b\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u001c\u0010\u001aJ\u0017\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010#\u001a\u00020\u00072\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b#\u0010$J!\u0010%\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0007H\u0016¢\u0006\u0004\b'\u0010\u0004J!\u0010(\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b(\u0010&R\u001b\u0010.\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u001b\u00103\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010+\u001a\u0004\b1\u00102R\u0018\u00106\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u00109\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010;\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00108R\u0016\u0010=\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u00108R\u0016\u0010@\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010B\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u00108R\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010H\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010ER\u0016\u0010J\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010ER\u0018\u0010N\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010M¨\u0006O"}, d2 = {"Lcom/transsion/videodetail/SubjectDetailHeaderFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Ljx/h;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "s0", "(Landroid/view/View;)V", "p0", "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "seasonsList", "k0", "(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)V", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "v0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "", "releaseDate", "g0", "(Ljava/lang/String;)Ljava/lang/String;", "", "addStatus", "t0", "(Ljava/lang/Integer;)V", "seeStatus", "u0", "Landroid/view/LayoutInflater;", "inflater", "j0", "(Landroid/view/LayoutInflater;)Ljx/h;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "initData", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "a", "Lkotlin/Lazy;", "h0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "Lcom/transsion/videodetail/VideoDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "i0", "()Lcom/transsion/videodetail/VideoDetailViewModel;", "videoDetailViewModel", "c", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "ops", "e", "mSubjectId", "f", "pageName", "g", "I", "curSeason", "h", "moduleName", "", "i", "Z", "isInterceptDetail", "j", "isOutSideVideo", CampaignEx.JSON_KEY_AD_K, "hasResource", "Lcom/transsion/moviedetail/view/HeaderExtensionFragment;", "l", "Lcom/transsion/moviedetail/view/HeaderExtensionFragment;", "headerExtensionFragment", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectDetailHeaderFragment extends BaseFragment<jx.h> {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Subject mMovieDetailBean;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mSubjectId;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String moduleName;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean isInterceptDetail;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isOutSideVideo;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean hasResource;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private HeaderExtensionFragment headerExtensionFragment;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.videodetail.SubjectDetailHeaderFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.videodetail.SubjectDetailHeaderFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy videoDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(VideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.videodetail.SubjectDetailHeaderFragment$special$$inlined$activityViewModels$default$3
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.videodetail.SubjectDetailHeaderFragment$special$$inlined$activityViewModels$default$4
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

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String pageName = "stream_detail";

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int curSeason = 1;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57611a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57611a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57611a;
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
            this.f57611a.invoke(obj);
        }
    }

    private final String g0(String releaseDate) {
        if (releaseDate.length() < 4) {
            return releaseDate;
        }
        String strSubstring = releaseDate.substring(0, 4);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    private final MovieDetailViewModel h0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final VideoDetailViewModel i0() {
        return (VideoDetailViewModel) this.videoDetailViewModel.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    private final void k0(ResourcesSeasonList seasonsList) {
        int se2;
        List<ResourcesSeason> seasons;
        List<ResourcesSeason> seasons2;
        if (seasonsList == null || (seasons2 = seasonsList.getSeasons()) == null || !seasons2.isEmpty()) {
            if (seasonsList == null || (seasons = seasonsList.getSeasons()) == null) {
                se2 = this.curSeason;
            } else {
                Iterator<T> it = seasons.iterator();
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
                Object next = it.next();
                if (it.hasNext()) {
                    int se3 = ((ResourcesSeason) next).getSe();
                    do {
                        Object next2 = it.next();
                        int se4 = ((ResourcesSeason) next2).getSe();
                        if (se3 > se4) {
                            next = next2;
                            se3 = se4;
                        }
                    } while (it.hasNext());
                }
                ResourcesSeason resourcesSeason = (ResourcesSeason) next;
                if (resourcesSeason != null) {
                    se2 = resourcesSeason.getSe();
                } else {
                    se2 = this.curSeason;
                }
            }
            if (this.curSeason < se2) {
                this.curSeason = se2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l0(SubjectDetailHeaderFragment subjectDetailHeaderFragment, Pair pair) {
        Subject subject = (Subject) pair.getSecond();
        lg.a.f68839a.c("videoDetail", "get movie detail data==" + pair, true);
        if (subject != null) {
            subjectDetailHeaderFragment.v0(subject);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m0(SubjectDetailHeaderFragment subjectDetailHeaderFragment, Integer num) {
        Intrinsics.e(num);
        subjectDetailHeaderFragment.curSeason = num.intValue();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n0(SubjectDetailHeaderFragment subjectDetailHeaderFragment, ResourcesSeasonList resourcesSeasonList) {
        subjectDetailHeaderFragment.k0(resourcesSeasonList);
        subjectDetailHeaderFragment.hideLoading();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0(SubjectDetailHeaderFragment subjectDetailHeaderFragment, Integer num) {
        Intrinsics.e(num);
        subjectDetailHeaderFragment.curSeason = num.intValue();
        return Unit.f67061a;
    }

    private final void p0() {
        final ShapeableImageView shapeableImageView;
        String url;
        Cover cover;
        String thumbnail;
        Cover cover2;
        FrameLayout frameLayout;
        Subject subject;
        if (!this.hasResource || ((subject = this.mMovieDetailBean) != null && subject.isFamilyModeIntercept())) {
            jx.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (frameLayout = mViewBinding.f66405b) != null) {
                jg.c.g(frameLayout);
            }
            jx.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (shapeableImageView = mViewBinding2.f66407d) == null) {
                return;
            }
            ej.f.a aVar = ej.f.f61882a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            ej.f.b bVarM = aVar.m(contextRequireContext);
            Subject subject2 = this.mMovieDetailBean;
            String str = "";
            if (subject2 == null || (cover2 = subject2.getCover()) == null || (url = cover2.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            Subject subject3 = this.mMovieDetailBean;
            if (subject3 != null && (cover = subject3.getCover()) != null && (thumbnail = cover.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarG.l(str).d(shapeableImageView);
            shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.i0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubjectDetailHeaderFragment.q0(this.f57704a, shapeableImageView, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(SubjectDetailHeaderFragment subjectDetailHeaderFragment, ShapeableImageView shapeableImageView, View view) {
        Cover cover;
        Subject subject = subjectDetailHeaderFragment.mMovieDetailBean;
        if (subject == null || (cover = subject.getCover()) == null) {
            return;
        }
        com.transsion.baselib.helper.a.f43262a.h("movie_poster", "preview", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
        ImageInfo imageInfo = new ImageInfo();
        imageInfo.bigImageUrl = cover.getUrl();
        imageInfo.thumbnailUrl = cover.getThumbnail();
        Integer height = cover.getHeight();
        imageInfo.imageViewHeight = height != null ? height.intValue() : 0.0f;
        Integer width = cover.getWidth();
        imageInfo.imageViewWidth = width != null ? width.intValue() : 0.0f;
        List listQ = CollectionsKt.q(imageInfo);
        ImagePreviewActivity.Companion aVar = ImagePreviewActivity.INSTANCE;
        Context context = shapeableImageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        aVar.a(context, 0, listQ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(SubjectDetailHeaderFragment subjectDetailHeaderFragment, View view) {
        Intrinsics.e(view);
        subjectDetailHeaderFragment.s0(view);
    }

    private final void s0(View view) {
        if (this.isInterceptDetail || com.transsion.baseui.util.c.f43504a.a(view.getId(), 1000L)) {
            return;
        }
        lg.a.C0828a.g(lg.a.f68839a, "Open the right to view more detail", false, 2, null);
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            SubjectInfoMoreDetailDialog subjectInfoMoreDetailDialog = new SubjectInfoMoreDetailDialog();
            subjectInfoMoreDetailDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("data_key_resource_detectors", this.mMovieDetailBean)));
            subjectInfoMoreDetailDialog.n0(parentFragment, R$id.fl_bottom_dialog_container);
        }
    }

    private final void t0(Integer addStatus) {
    }

    private final void u0(Integer seeStatus) {
    }

    private final void v0(Subject movieDetailBean) {
        Subject subject;
        CustomTextViewGroup customTextViewGroup;
        AppCompatTextView appCompatTextView;
        CustomTextViewGroup customTextViewGroup2;
        jx.h mViewBinding;
        CustomTextViewGroup customTextViewGroup3;
        jx.h mViewBinding2;
        CustomTextViewGroup customTextViewGroup4;
        jx.h mViewBinding3;
        CustomTextViewGroup customTextViewGroup5;
        FrameLayout frameLayout;
        jx.h mViewBinding4;
        CustomTextViewGroup customTextViewGroup6;
        CustomTextViewGroup customTextViewGroup7;
        jx.h mViewBinding5;
        CustomTextViewGroup customTextViewGroup8;
        AppCompatTextView appCompatTextView2;
        AppCompatImageView appCompatImageView;
        View view;
        AppCompatTextView appCompatTextView3;
        CustomTextViewGroup customTextViewGroup9;
        AppCompatTextView appCompatTextView4;
        CustomTextViewGroup customTextViewGroup10;
        Subject subject2;
        View view2;
        AppCompatTextView appCompatTextView5;
        CustomTextViewGroup customTextViewGroup11;
        CustomTextViewGroup customTextViewGroup12;
        jx.h mViewBinding6;
        LinearLayout linearLayout;
        AppCompatTextView appCompatTextView6;
        AppCompatImageView appCompatImageView2;
        HashMap mapG;
        HashMap mapG2;
        this.mMovieDetailBean = movieDetailBean;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
            String subjectId = movieDetailBean.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            mapG2.put("subject_id", subjectId);
        }
        hj.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
            mapG.put("has_resource", String.valueOf(movieDetailBean.getHasResource()));
        }
        Subject subject3 = this.mMovieDetailBean;
        String ops = subject3 != null ? subject3.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
            subject.setOps(this.ops);
        }
        int iA = com.transsion.moviedetailapi.g.a(movieDetailBean.getSubjectType());
        jx.h mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (appCompatImageView2 = mViewBinding7.f66406c) != null) {
            appCompatImageView2.setImageResource(iA);
        }
        jx.h mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (appCompatTextView6 = mViewBinding8.f66413j) != null) {
            appCompatTextView6.setText(movieDetailBean.getTitle());
        }
        if (this.isOutSideVideo && (mViewBinding6 = getMViewBinding()) != null && (linearLayout = mViewBinding6.f66410g) != null) {
            jg.c.g(linearLayout);
        }
        if (movieDetailBean.isTvType()) {
            Integer seNum = movieDetailBean.getSeNum();
            if (seNum != null) {
                int iIntValue = seNum.intValue();
                if (iIntValue <= 0) {
                    jx.h mViewBinding9 = getMViewBinding();
                    if (mViewBinding9 != null && (customTextViewGroup12 = mViewBinding9.f66416m) != null) {
                        customTextViewGroup12.setText("");
                    }
                } else {
                    if (!this.hasResource || ((subject2 = this.mMovieDetailBean) != null && subject2.isFamilyModeIntercept())) {
                        jx.h mViewBinding10 = getMViewBinding();
                        if (mViewBinding10 != null && (customTextViewGroup9 = mViewBinding10.f66416m) != null) {
                            jg.c.g(customTextViewGroup9);
                        }
                        jx.h mViewBinding11 = getMViewBinding();
                        if (mViewBinding11 != null && (appCompatTextView3 = mViewBinding11.f66417n) != null) {
                            jg.c.k(appCompatTextView3);
                        }
                        jx.h mViewBinding12 = getMViewBinding();
                        if (mViewBinding12 != null && (view = mViewBinding12.f66421r) != null) {
                            jg.c.k(view);
                        }
                    } else {
                        jx.h mViewBinding13 = getMViewBinding();
                        if (mViewBinding13 != null && (customTextViewGroup11 = mViewBinding13.f66416m) != null) {
                            jg.c.k(customTextViewGroup11);
                        }
                        jx.h mViewBinding14 = getMViewBinding();
                        if (mViewBinding14 != null && (appCompatTextView5 = mViewBinding14.f66417n) != null) {
                            jg.c.g(appCompatTextView5);
                        }
                        jx.h mViewBinding15 = getMViewBinding();
                        if (mViewBinding15 != null && (view2 = mViewBinding15.f66421r) != null) {
                            jg.c.g(view2);
                        }
                    }
                    Context context = getContext();
                    String string = context != null ? context.getString(com.transsion.moviedetail.R$string.movie_detail_seasons, Integer.valueOf(iIntValue)) : null;
                    jx.h mViewBinding16 = getMViewBinding();
                    if (mViewBinding16 != null && (customTextViewGroup10 = mViewBinding16.f66416m) != null) {
                        customTextViewGroup10.setText(string == null ? "" : string);
                    }
                    jx.h mViewBinding17 = getMViewBinding();
                    if (mViewBinding17 != null && (appCompatTextView4 = mViewBinding17.f66417n) != null) {
                        appCompatTextView4.setText(string != null ? string : "");
                    }
                }
            }
        } else {
            jx.h mViewBinding18 = getMViewBinding();
            if (mViewBinding18 != null && (customTextViewGroup = mViewBinding18.f66416m) != null) {
                jg.c.g(customTextViewGroup);
            }
        }
        if (movieDetailBean.isMusicType()) {
            jx.h mViewBinding19 = getMViewBinding();
            if (mViewBinding19 != null && (appCompatImageView = mViewBinding19.f66409f) != null) {
                jg.c.g(appCompatImageView);
            }
            jx.h mViewBinding20 = getMViewBinding();
            if (mViewBinding20 != null && (appCompatTextView2 = mViewBinding20.f66415l) != null) {
                jg.c.g(appCompatTextView2);
            }
            String countryName = movieDetailBean.getCountryName();
            if (countryName != null && (mViewBinding5 = getMViewBinding()) != null && (customTextViewGroup8 = mViewBinding5.f66411h) != null) {
                customTextViewGroup8.setText(countryName);
            }
            String genre = movieDetailBean.getGenre();
            if (genre != null) {
                String string2 = StringsKt.n1((String) StringsKt.S0(genre, new String[]{","}, false, 0, 6, null).get(0)).toString();
                jx.h mViewBinding21 = getMViewBinding();
                if (mViewBinding21 != null && (customTextViewGroup7 = mViewBinding21.f66419p) != null) {
                    customTextViewGroup7.setText(string2);
                }
            }
            String releaseDate = movieDetailBean.getReleaseDate();
            if (releaseDate != null && (mViewBinding4 = getMViewBinding()) != null && (customTextViewGroup6 = mViewBinding4.f66418o) != null) {
                customTextViewGroup6.setText(g0(releaseDate));
            }
        } else {
            String restrictLevel = movieDetailBean.getRestrictLevel();
            if (restrictLevel != null && (mViewBinding3 = getMViewBinding()) != null && (customTextViewGroup5 = mViewBinding3.f66414k) != null) {
                customTextViewGroup5.setText(restrictLevel);
            }
            String releaseDate2 = movieDetailBean.getReleaseDate();
            if (releaseDate2 != null && (mViewBinding2 = getMViewBinding()) != null && (customTextViewGroup4 = mViewBinding2.f66418o) != null) {
                customTextViewGroup4.setText(g0(releaseDate2));
            }
            String countryName2 = movieDetailBean.getCountryName();
            if (countryName2 != null && (mViewBinding = getMViewBinding()) != null && (customTextViewGroup3 = mViewBinding.f66411h) != null) {
                customTextViewGroup3.setText(countryName2);
            }
            String genre2 = movieDetailBean.getGenre();
            if (genre2 != null) {
                String string3 = StringsKt.n1((String) StringsKt.S0(genre2, new String[]{","}, false, 0, 6, null).get(0)).toString();
                jx.h mViewBinding22 = getMViewBinding();
                if (mViewBinding22 != null && (customTextViewGroup2 = mViewBinding22.f66419p) != null) {
                    customTextViewGroup2.setText(string3);
                }
            }
            jx.h mViewBinding23 = getMViewBinding();
            if (mViewBinding23 != null && (appCompatTextView = mViewBinding23.f66415l) != null) {
                appCompatTextView.setText(movieDetailBean.getImdbRate());
            }
        }
        Subject subject4 = this.mMovieDetailBean;
        u0(subject4 != null ? subject4.getSeenStatus() : null);
        Subject subject5 = this.mMovieDetailBean;
        t0(subject5 != null ? subject5.getSeenStatus() : null);
        if (this.isInterceptDetail) {
            jx.h mViewBinding24 = getMViewBinding();
            if (mViewBinding24 == null || (frameLayout = mViewBinding24.f66405b) == null) {
                return;
            }
            jg.c.g(frameLayout);
            return;
        }
        if (this.headerExtensionFragment == null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            androidx.fragment.app.w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            HeaderExtensionFragment headerExtensionFragment = new HeaderExtensionFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            bundle.putString("module_name", this.moduleName);
            bundle.putInt("season", this.curSeason);
            bundle.putString("ops", this.ops);
            bundle.putString(WebConstants.PAGE_FROM, this.pageName);
            headerExtensionFragment.setArguments(bundle);
            wVarP.s(R$id.extension_container, headerExtensionFragment);
            this.headerExtensionFragment = headerExtensionFragment;
            wVarP.j();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        String string;
        AppCompatImageView appCompatImageView;
        ShapeableImageView shapeableImageView;
        Subject subject;
        jx.h mViewBinding;
        AppCompatTextView appCompatTextView;
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("data_key_resource_detectors") : null;
        this.mMovieDetailBean = serializable instanceof Subject ? (Subject) serializable : null;
        Bundle arguments2 = getArguments();
        this.moduleName = arguments2 != null ? arguments2.getString("module_name") : null;
        Bundle arguments3 = getArguments();
        this.curSeason = arguments3 != null ? arguments3.getInt("season") : 1;
        Bundle arguments4 = getArguments();
        this.ops = arguments4 != null ? arguments4.getString("ops") : null;
        Bundle arguments5 = getArguments();
        if (arguments5 == null || (string = arguments5.getString(WebConstants.PAGE_FROM)) == null) {
            string = "stream_detail";
        }
        this.pageName = string;
        Bundle arguments6 = getArguments();
        this.mSubjectId = arguments6 != null ? arguments6.getString("id") : null;
        Bundle arguments7 = getArguments();
        this.isInterceptDetail = arguments7 != null ? arguments7.getBoolean("is_Intercept_detail") : false;
        Bundle arguments8 = getArguments();
        this.isOutSideVideo = arguments8 != null ? arguments8.getBoolean("isOutsideVideo") : false;
        Subject subject2 = this.mMovieDetailBean;
        this.hasResource = subject2 != null ? Intrinsics.c(subject2.getHasResource(), Boolean.TRUE) : false;
        Subject subject3 = this.mMovieDetailBean;
        if (subject3 != null) {
            Intrinsics.e(subject3);
            v0(subject3);
        }
        if (this.isInterceptDetail && (mViewBinding = getMViewBinding()) != null && (appCompatTextView = mViewBinding.f66412i) != null) {
            jg.c.g(appCompatTextView);
        }
        if (!this.hasResource || ((subject = this.mMovieDetailBean) != null && subject.isFamilyModeIntercept())) {
            jx.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (shapeableImageView = mViewBinding2.f66407d) != null) {
                jg.c.k(shapeableImageView);
            }
            jx.h mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (appCompatImageView = mViewBinding3.f66408e) != null) {
                jg.c.k(appCompatImageView);
            }
        }
        MovieDetailViewModel movieDetailViewModelH0 = h0();
        movieDetailViewModelH0.F().j(this, new a(new Function1() { // from class: com.transsion.videodetail.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubjectDetailHeaderFragment.l0(this.f57690a, (Pair) obj);
            }
        }));
        movieDetailViewModelH0.K().j(this, new a(new Function1() { // from class: com.transsion.videodetail.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubjectDetailHeaderFragment.m0(this.f57694a, (Integer) obj);
            }
        }));
        i0().z().j(this, new a(new Function1() { // from class: com.transsion.videodetail.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubjectDetailHeaderFragment.n0(this.f57697a, (ResourcesSeasonList) obj);
            }
        }));
        h0().K().j(this, new a(new Function1() { // from class: com.transsion.videodetail.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubjectDetailHeaderFragment.o0(this.f57700a, (Integer) obj);
            }
        }));
        p0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        jx.h mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f66420q.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.h0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubjectDetailHeaderFragment.r0(this.f57702a, view2);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public jx.h getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        jx.h hVarC = jx.h.c(inflater);
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }
}
