package com.transsion.videodetail;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetail.activity.MoviePosterActivity;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J!\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001d\u0010\u001bR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010(¨\u0006,"}, d2 = {"Lcom/transsion/videodetail/SubjectDetailInfoFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Ljx/g;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "", "k0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "", "seconds", "", "d0", "(I)Ljava/lang/String;", "subtitles", "i0", "(Ljava/lang/String;)V", "Landroid/view/LayoutInflater;", "inflater", "f0", "(Landroid/view/LayoutInflater;)Ljx/g;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "initData", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "a", "Lkotlin/Lazy;", "e0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", "c", "Ljava/lang/String;", "ops", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "mSubjectId", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectDetailInfoFragment extends BaseFragment<jx.g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.videodetail.SubjectDetailInfoFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.videodetail.SubjectDetailInfoFragment$special$$inlined$activityViewModels$default$2
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
    private Subject mMovieDetailBean;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String mSubjectId;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57616a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57616a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57616a;
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
            this.f57616a.invoke(obj);
        }
    }

    private final String d0(int seconds) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format("%02dh%02dm", Arrays.copyOf(new Object[]{Integer.valueOf(seconds / 3600), Integer.valueOf((seconds % 3600) / 60)}, 2));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    private final MovieDetailViewModel e0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g0(SubjectDetailInfoFragment subjectDetailInfoFragment, Pair pair) {
        HashMap mapG;
        HashMap mapG2;
        Subject subject = (Subject) pair.getSecond();
        lg.a.f68839a.c("videoDetail", "get movie detail data==" + pair, true);
        if (subject != null) {
            subjectDetailInfoFragment.k0(subject);
            hj.b logViewConfig = subjectDetailInfoFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            hj.b logViewConfig2 = subjectDetailInfoFragment.getLogViewConfig();
            if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
                String subjectId = subject.getSubjectId();
                if (subjectId == null) {
                    subjectId = "";
                }
                mapG2.put("subject_id", subjectId);
            }
            hj.b logViewConfig3 = subjectDetailInfoFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
                mapG.put("has_resource", String.valueOf(subject.getHasResource()));
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(SubjectDetailInfoFragment subjectDetailInfoFragment, View view) {
        an.j jVar = new an.j(subjectDetailInfoFragment.mMovieDetailBean);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = an.j.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, jVar, 0L);
        com.transsion.baselib.helper.a.f43262a.h("subjectdetail", "movie_poster", (60 & 4) != 0 ? "" : "", (60 & 8) != 0 ? "" : subjectDetailInfoFragment.mSubjectId, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : subjectDetailInfoFragment.ops);
        subjectDetailInfoFragment.startActivity(new Intent(subjectDetailInfoFragment.requireContext(), (Class<?>) MoviePosterActivity.class));
    }

    private final void i0(String subtitles) {
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        AppCompatTextView appCompatTextView7;
        AppCompatImageView appCompatImageView2;
        CharSequence charSequenceV = e0().v(subtitles);
        if (charSequenceV == null || charSequenceV.length() == 0) {
            jx.g mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatTextView2 = mViewBinding.f66402n) != null) {
                jg.c.g(appCompatTextView2);
            }
            jx.g mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f66395g) != null) {
                jg.c.g(appCompatImageView);
            }
            jx.g mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (appCompatTextView = mViewBinding3.f66401m) == null) {
                return;
            }
            jg.c.g(appCompatTextView);
            return;
        }
        jx.g mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatImageView2 = mViewBinding4.f66395g) != null) {
            jg.c.k(appCompatImageView2);
        }
        jx.g mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (appCompatTextView7 = mViewBinding5.f66402n) != null) {
            jg.c.k(appCompatTextView7);
        }
        jx.g mViewBinding6 = getMViewBinding();
        if (mViewBinding6 == null || (appCompatTextView3 = mViewBinding6.f66402n) == null) {
            return;
        }
        appCompatTextView3.setText(charSequenceV);
        TextPaint paint = appCompatTextView3.getPaint();
        Intrinsics.g(paint, "getPaint(...)");
        int iF = com.transsion.core.utils.e.f() - com.blankj.utilcode.util.i.e(130.0f);
        StaticLayout staticLayoutBuild = Build.VERSION.SDK_INT > 23 ? StaticLayout.Builder.obtain(charSequenceV, 0, charSequenceV.length(), paint, iF).build() : new StaticLayout(charSequenceV, paint, iF, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        Intrinsics.e(staticLayoutBuild);
        if (staticLayoutBuild.getLineCount() <= 1) {
            jx.g mViewBinding7 = getMViewBinding();
            if (mViewBinding7 == null || (appCompatTextView4 = mViewBinding7.f66401m) == null) {
                return;
            }
            jg.c.g(appCompatTextView4);
            return;
        }
        jx.g mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (appCompatTextView6 = mViewBinding8.f66401m) != null) {
            jg.c.k(appCompatTextView6);
        }
        jx.g mViewBinding9 = getMViewBinding();
        if (mViewBinding9 == null || (appCompatTextView5 = mViewBinding9.f66401m) == null) {
            return;
        }
        appCompatTextView5.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubjectDetailInfoFragment.j0(this.f57716a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(SubjectDetailInfoFragment subjectDetailInfoFragment, View view) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        jx.g mViewBinding = subjectDetailInfoFragment.getMViewBinding();
        if (mViewBinding != null && (appCompatTextView2 = mViewBinding.f66401m) != null) {
            jg.c.g(appCompatTextView2);
        }
        jx.g mViewBinding2 = subjectDetailInfoFragment.getMViewBinding();
        if (mViewBinding2 == null || (appCompatTextView = mViewBinding2.f66402n) == null) {
            return;
        }
        appCompatTextView.setMaxLines(5);
    }

    private final void k0(Subject movieDetailBean) {
        Subject subject;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        ShapeableImageView shapeableImageView;
        String url;
        String thumbnail;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView6;
        AppCompatImageView appCompatImageView2;
        ShapeableImageView shapeableImageView2;
        AppCompatTextView appCompatTextView7;
        AppCompatImageView appCompatImageView3;
        this.mMovieDetailBean = movieDetailBean;
        String ops = movieDetailBean != null ? movieDetailBean.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
            subject.setOps(this.ops);
        }
        int iA = com.transsion.moviedetailapi.g.a(movieDetailBean.getSubjectType());
        jx.g mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView3 = mViewBinding.f66391c) != null) {
            appCompatImageView3.setImageResource(iA);
        }
        jx.g mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatTextView7 = mViewBinding2.f66399k) != null) {
            appCompatTextView7.setText(movieDetailBean.getTitle());
        }
        Subject subject2 = this.mMovieDetailBean;
        i0(subject2 != null ? subject2.getSubtitles() : null);
        if (movieDetailBean.isMusicType()) {
            jx.g mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (shapeableImageView2 = mViewBinding3.f66392d) != null) {
                jg.c.g(shapeableImageView2);
            }
            jx.g mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (appCompatImageView2 = mViewBinding4.f66394f) != null) {
                jg.c.g(appCompatImageView2);
            }
            jx.g mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (appCompatTextView6 = mViewBinding5.f66400l) != null) {
                jg.c.g(appCompatTextView6);
            }
            jx.g mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (appCompatImageView = mViewBinding6.f66395g) != null) {
                jg.c.g(appCompatImageView);
            }
            jx.g mViewBinding7 = getMViewBinding();
            if (mViewBinding7 != null && (appCompatTextView5 = mViewBinding7.f66402n) != null) {
                jg.c.g(appCompatTextView5);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (TextUtils.isEmpty(movieDetailBean.getCountryName())) {
                spannableStringBuilder.append((CharSequence) movieDetailBean.getLanguage());
            } else {
                spannableStringBuilder.append((CharSequence) movieDetailBean.getCountryName());
            }
            if (!TextUtils.isEmpty(movieDetailBean.getGenre())) {
                if (spannableStringBuilder.length() > 2) {
                    spannableStringBuilder.append((CharSequence) " / ");
                }
                spannableStringBuilder.append((CharSequence) movieDetailBean.getGenre());
            }
            String releaseDate = movieDetailBean.getReleaseDate();
            if (releaseDate != null && releaseDate.length() > 0) {
                spannableStringBuilder.append((CharSequence) " / ");
                spannableStringBuilder.append((CharSequence) releaseDate);
            }
            String duration = movieDetailBean.getDuration();
            if (duration != null) {
                if (duration.length() > 0) {
                    if (spannableStringBuilder.length() > 0) {
                        spannableStringBuilder.append((CharSequence) " / ");
                    }
                    spannableStringBuilder.append((CharSequence) duration);
                } else {
                    Integer durationSeconds = movieDetailBean.getDurationSeconds();
                    if ((durationSeconds != null ? durationSeconds.intValue() : 0) > 0) {
                        spannableStringBuilder.append((CharSequence) " / ");
                        Integer durationSeconds2 = movieDetailBean.getDurationSeconds();
                        spannableStringBuilder.append((CharSequence) d0(durationSeconds2 != null ? durationSeconds2.intValue() : 0));
                    }
                }
            }
            jx.g mViewBinding8 = getMViewBinding();
            if (mViewBinding8 == null || (appCompatTextView4 = mViewBinding8.f66398j) == null) {
                return;
            }
            appCompatTextView4.setText(spannableStringBuilder);
            return;
        }
        jx.g mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (shapeableImageView = mViewBinding9.f66392d) != null) {
            ej.f.a aVar = ej.f.f61882a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            ej.f.b bVarM = aVar.m(contextRequireContext);
            Cover cover = movieDetailBean.getCover();
            String str = "";
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            Cover cover2 = movieDetailBean.getCover();
            if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarG.l(str).d(shapeableImageView);
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        String restrictLevel = movieDetailBean.getRestrictLevel();
        if (restrictLevel != null) {
            if (restrictLevel.length() > 0) {
                spannableStringBuilder2.append((CharSequence) " / ");
                spannableStringBuilder2.append((CharSequence) restrictLevel);
            }
        }
        String releaseDate2 = movieDetailBean.getReleaseDate();
        if (releaseDate2 != null) {
            if (releaseDate2.length() > 0) {
                spannableStringBuilder2.append((CharSequence) " / ");
                spannableStringBuilder2.append((CharSequence) releaseDate2);
            }
        }
        String duration2 = movieDetailBean.getDuration();
        if (duration2 != null) {
            if (duration2.length() > 0) {
                if ((spannableStringBuilder2.length() > 0 ? 1 : 0) != 0) {
                    spannableStringBuilder2.append((CharSequence) " / ");
                }
                spannableStringBuilder2.append((CharSequence) duration2);
            } else {
                Integer durationSeconds3 = movieDetailBean.getDurationSeconds();
                if ((durationSeconds3 != null ? durationSeconds3.intValue() : 0) > 0) {
                    spannableStringBuilder2.append((CharSequence) " / ");
                    Integer durationSeconds4 = movieDetailBean.getDurationSeconds();
                    spannableStringBuilder2.append((CharSequence) d0(durationSeconds4 != null ? durationSeconds4.intValue() : 0));
                }
            }
        }
        jx.g mViewBinding10 = getMViewBinding();
        if (mViewBinding10 != null && (appCompatTextView3 = mViewBinding10.f66403o) != null) {
            appCompatTextView3.setText(spannableStringBuilder2);
        }
        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
        if (!TextUtils.isEmpty(movieDetailBean.getCountryName())) {
            spannableStringBuilder3.append((CharSequence) movieDetailBean.getCountryName());
        }
        if (!TextUtils.isEmpty(movieDetailBean.getGenre())) {
            if (spannableStringBuilder3.length() > 2) {
                spannableStringBuilder3.append((CharSequence) " / ");
            }
            spannableStringBuilder3.append((CharSequence) movieDetailBean.getGenre());
        }
        jx.g mViewBinding11 = getMViewBinding();
        if (mViewBinding11 != null && (appCompatTextView2 = mViewBinding11.f66398j) != null) {
            appCompatTextView2.setText(spannableStringBuilder3);
        }
        jx.g mViewBinding12 = getMViewBinding();
        if (mViewBinding12 == null || (appCompatTextView = mViewBinding12.f66400l) == null) {
            return;
        }
        appCompatTextView.setText(movieDetailBean.getImdbRate());
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public jx.g getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        jx.g gVarC = jx.g.c(inflater);
        Intrinsics.g(gVarC, "inflate(...)");
        return gVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        Bundle arguments = getArguments();
        this.ops = arguments != null ? arguments.getString("ops") : null;
        Bundle arguments2 = getArguments();
        this.mSubjectId = arguments2 != null ? arguments2.getString("id") : null;
        e0().F().j(this, new a(new Function1() { // from class: com.transsion.videodetail.k0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubjectDetailInfoFragment.g0(this.f57712a, (Pair) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        ShapeableImageView shapeableImageView;
        Intrinsics.h(view, "view");
        jx.g mViewBinding = getMViewBinding();
        if (mViewBinding == null || (shapeableImageView = mViewBinding.f66392d) == null) {
            return;
        }
        shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SubjectDetailInfoFragment.h0(this.f57709a, view2);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }
}
