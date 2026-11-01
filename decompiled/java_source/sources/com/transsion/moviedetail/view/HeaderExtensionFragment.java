package com.transsion.moviedetail.view;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.edcation.CourseManager;
import com.transsion.moviedetail.R$drawable;
import com.transsion.moviedetail.R$string;
import com.transsion.moviedetail.p005enum.SeenStatus;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.pushapi.NoticePermissionFrom;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
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

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u00020\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u0017\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010/\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00101\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010+R\u0016\u00103\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010+R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u001b\u0010=\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<¨\u0006>"}, d2 = {"Lcom/transsion/moviedetail/view/HeaderExtensionFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lcn/w;", "<init>", "()V", "", "x0", "P0", "Lcom/transsion/moviedetailapi/bean/Staff;", "staff", "M0", "(Lcom/transsion/moviedetailapi/bean/Staff;)V", "I0", "", "L0", "()Z", "T0", "", "subjectId", "N0", "(Ljava/lang/String;)V", "", "addStatus", "O0", "(Ljava/lang/Integer;)V", "seeStatus", "S0", "Landroid/view/LayoutInflater;", "inflater", "K0", "(Landroid/view/LayoutInflater;)Lcn/w;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "receiveArguments", "Lcom/transsion/moviedetailapi/bean/Subject;", "a", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "moduleName", "c", "I", "curSeason", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "ops", "e", "pageName", "Lcom/transsion/share/share/ShareDialogFragment;", "f", "Lcom/transsion/share/share/ShareDialogFragment;", "mShareDialog", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "g", "Lkotlin/Lazy;", "J0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class HeaderExtensionFragment extends PageStatusFragment<cn.w> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Subject subject;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String moduleName;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ShareDialogFragment mShareDialog;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int curSeason = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String pageName = "subjectdetail";

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<x0>() { // from class: com.transsion.moviedetail.view.HeaderExtensionFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() { // from class: com.transsion.moviedetail.view.HeaderExtensionFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final v0.c invoke() {
            v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    static final class a implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f47380a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47380a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f47380a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f47380a.invoke(obj);
        }
    }

    public static final class b implements com.transsion.share.share.a {
        b() {
        }

        @Override // com.transsion.share.share.a
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
        }

        @Override // com.transsion.share.share.a
        public void b(String str) {
            com.transsion.share.share.a.C0656a.b(this, str);
        }

        @Override // com.transsion.share.share.a
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
        }

        @Override // com.transsion.share.share.a
        public void d(String id2) {
            Intrinsics.h(id2, "id");
        }

        @Override // com.transsion.share.share.a
        public void e(String str) {
            com.transsion.share.share.a.C0656a.c(this, str);
            com.transsion.mbwidget.d.t(com.transsion.mbwidget.d.f46239a, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(HeaderExtensionFragment headerExtensionFragment, BaseDto baseDto) {
        String subjectId;
        String subjectId2;
        Long wantToSeeCount;
        if (baseDto != null && Intrinsics.c(baseDto.getCode(), "0")) {
            Subject subject = headerExtensionFragment.subject;
            long jLongValue = (subject == null || (wantToSeeCount = subject.getWantToSeeCount()) == null) ? 0L : wantToSeeCount.longValue();
            if (headerExtensionFragment.L0()) {
                Subject subject2 = headerExtensionFragment.subject;
                if (subject2 != null) {
                    subject2.setSeenStatus(Integer.valueOf(SeenStatus.NOT_SEEN.ordinal()));
                }
                headerExtensionFragment.S0(Integer.valueOf(SeenStatus.NOT_SEEN.ordinal()));
                Subject subject3 = headerExtensionFragment.subject;
                if (subject3 != null) {
                    subject3.setWantToSeeCount(Long.valueOf(jLongValue - 1));
                }
                Subject subject4 = headerExtensionFragment.subject;
                if (subject4 != null && (subjectId2 = subject4.getSubjectId()) != null) {
                    ty.b.f76417a.a().i(0, subjectId2);
                }
            } else {
                com.transsion.mbwidget.d.t(com.transsion.mbwidget.d.f46239a, null, 1, null);
                Subject subject5 = headerExtensionFragment.subject;
                if (subject5 != null) {
                    subject5.setSeenStatus(Integer.valueOf(SeenStatus.WANT_TO_SEE.ordinal()));
                }
                headerExtensionFragment.S0(Integer.valueOf(SeenStatus.WANT_TO_SEE.ordinal()));
                Subject subject6 = headerExtensionFragment.subject;
                if (subject6 != null) {
                    subject6.setWantToSeeCount(Long.valueOf(jLongValue + 1));
                }
                Subject subject7 = headerExtensionFragment.subject;
                if (subject7 != null && (subjectId = subject7.getSubjectId()) != null) {
                    ty.b.f76417a.a().i(1, subjectId);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(final HeaderExtensionFragment headerExtensionFragment, View view) {
        com.transsion.baseui.util.d.b(0L, new Function0() { // from class: com.transsion.moviedetail.view.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HeaderExtensionFragment.C0(this.f47409a);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C0(HeaderExtensionFragment headerExtensionFragment) {
        CourseManager.v(CourseManager.f44085a, headerExtensionFragment.subject, null, 2, null);
        wk.a.b(headerExtensionFragment.subject, headerExtensionFragment.pageName, "opt_detail_addcourse");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(final HeaderExtensionFragment headerExtensionFragment, View view) {
        com.transsion.baseui.util.d.b(0L, new Function0() { // from class: com.transsion.moviedetail.view.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HeaderExtensionFragment.E0(this.f47408a);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(HeaderExtensionFragment headerExtensionFragment) {
        headerExtensionFragment.T0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(HeaderExtensionFragment headerExtensionFragment, View view) {
        ResourceDetectors resourceDetector;
        List<DownloadItem> resolutionList;
        Subject subject;
        ResourceDetectors resourceDetector2;
        ResourceDetectors resourceDetector3;
        List<DownloadItem> resolutionList2;
        Subject subject2 = headerExtensionFragment.subject;
        if (subject2 != null && (resourceDetector = subject2.getResourceDetector()) != null && (resolutionList = resourceDetector.getResolutionList()) != null && (!resolutionList.isEmpty())) {
            Subject subject3 = headerExtensionFragment.subject;
            Integer numValueOf = (subject3 == null || (resourceDetector3 = subject3.getResourceDetector()) == null || (resolutionList2 = resourceDetector3.getResolutionList()) == null) ? null : Integer.valueOf(resolutionList2.size());
            Intrinsics.e(numValueOf);
            if (numValueOf.intValue() > 1 && (subject = headerExtensionFragment.subject) != null && (resourceDetector2 = subject.getResourceDetector()) != null) {
                resourceDetector2.setType(1);
            }
        }
        headerExtensionFragment.I0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(HeaderExtensionFragment headerExtensionFragment, View view) {
        com.transsion.baselib.helper.a aVar = com.transsion.baselib.helper.a.f43262a;
        String str = headerExtensionFragment.pageName;
        Subject subject = headerExtensionFragment.subject;
        aVar.h(str, "view_download", "", subject != null ? subject.getSubjectId() : null, null, headerExtensionFragment.ops);
        Navigator.x(TheRouter.c("/download/panel_activity").F("extra_page_index", 0), headerExtensionFragment.requireContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H0(HeaderExtensionFragment headerExtensionFragment, Integer num) {
        Intrinsics.e(num);
        headerExtensionFragment.curSeason = num.intValue();
        return Unit.f67061a;
    }

    private final void I0() {
        String str;
        boolean z10;
        List<ResourceDetectors> resourceDetectors;
        String resourceLink;
        if (getContext() == null) {
            return;
        }
        Subject subject = this.subject;
        String str2 = "";
        if (subject == null || (resourceDetectors = subject.getResourceDetectors()) == null) {
            str = "";
            z10 = false;
        } else {
            if (resourceDetectors.isEmpty()) {
                resourceLink = "";
            } else {
                resourceLink = resourceDetectors.get(0).getResourceLink();
                if (resourceLink == null) {
                    resourceLink = "";
                }
                String resourceId = resourceDetectors.get(0).getResourceId();
                str2 = resourceId != null ? resourceId : "";
                if (resourceDetectors.get(0).isMultiResolution()) {
                    z10 = true;
                }
                str = resourceLink;
            }
            z10 = false;
            str = resourceLink;
        }
        DownloadManagerApi.a aVar = DownloadManagerApi.f58398j;
        DownloadManagerApi downloadManagerApiA = aVar.a();
        Subject subject2 = this.subject;
        String subjectId = subject2 != null ? subject2.getSubjectId() : null;
        Subject subject3 = this.subject;
        downloadManagerApiA.w0(subjectId, str2, subject3 != null && subject3.isSeries(), z10);
        Subject subject4 = this.subject;
        if (subject4 != null) {
            Integer subjectType = subject4.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                DownloadManagerApi downloadManagerApiA2 = aVar.a();
                Context context = getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                String str3 = this.pageName;
                Subject subject5 = this.subject;
                downloadManagerApiA2.d0(fragmentActivity, str3, (384 & 4) != 0 ? "" : "", subject5 != null ? subject5.getOps() : null, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : this.subject, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                return;
            }
        }
        DownloadManagerApi downloadManagerApiA3 = aVar.a();
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        DownloadManagerApi.N(downloadManagerApiA3, (FragmentActivity) context2, this.subject, this.pageName, "", "", str, null, this.moduleName, null, false, this.curSeason, false, 832, null);
    }

    private final MovieDetailViewModel J0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final boolean L0() {
        Subject subject = this.subject;
        if (subject == null) {
            return false;
        }
        Integer seenStatus = subject.getSeenStatus();
        return seenStatus != null && seenStatus.intValue() == SeenStatus.WANT_TO_SEE.ordinal();
    }

    private final void M0(Staff staff) {
        Navigator.x(TheRouter.c("/movie/staff").J("staff", staff), requireContext(), null, 2, null);
    }

    private final void N0(String subjectId) {
        ShareDialogFragment shareDialogFragment;
        Subject subject = this.subject;
        if (subject == null) {
            return;
        }
        com.transsion.baselib.helper.a.f43262a.h(this.pageName, "share", (60 & 4) != 0 ? "" : "", (60 & 8) != 0 ? "" : subject != null ? subject.getSubjectId() : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : this.ops);
        if (this.mShareDialog == null) {
            ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
            PostType postType = PostType.SUBJECT_TYPE;
            String value = ReportType.SUBJECT.getValue();
            Subject subject2 = this.subject;
            String title = subject2 != null ? subject2.getTitle() : null;
            Subject subject3 = this.subject;
            ShareDialogFragment shareDialogFragmentA = companion.a(postType, subjectId, "", value, (3328 & 16) != 0 ? "" : title, (3328 & 32) != 0 ? "" : String.valueOf(subject3 != null ? subject3.getImdbRate() : null), (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : false, (3328 & 256) != 0 ? false : false, this.pageName, (3328 & 1024) != 0 ? "" : null, (3328 & 2048) != 0 ? "" : null);
            this.mShareDialog = shareDialogFragmentA;
            if (shareDialogFragmentA != null) {
                shareDialogFragmentA.G0(new b());
            }
        }
        try {
            if (isAdded()) {
                FragmentManager childFragmentManager = getChildFragmentManager();
                childFragmentManager.g0();
                ShareDialogFragment shareDialogFragment2 = this.mShareDialog;
                if ((shareDialogFragment2 == null || !shareDialogFragment2.isAdded()) && childFragmentManager.k0("share") == null && (shareDialogFragment = this.mShareDialog) != null) {
                    shareDialogFragment.show(childFragmentManager, "share");
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O0(Integer addStatus) {
        AppCompatTextView appCompatTextView;
        cn.w mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatTextView = mViewBinding.f17522c) == null) {
            return;
        }
        appCompatTextView.setSelected(addStatus != null && SeenStatus.WANT_TO_SEE.ordinal() == addStatus.intValue());
    }

    private final void P0() {
        List<Staff> staffList;
        ConstraintLayout constraintLayout;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        ConstraintLayout constraintLayout2;
        ConstraintLayout constraintLayout3;
        Subject subject = this.subject;
        if (subject == null || (staffList = subject.getStaffList()) == null) {
            return;
        }
        if (staffList.isEmpty()) {
            cn.w mViewBinding = getMViewBinding();
            if (mViewBinding == null || (constraintLayout = mViewBinding.f17526g) == null) {
                return;
            }
            jg.c.g(constraintLayout);
            return;
        }
        final Staff staff = staffList.get(0);
        if (TextUtils.isEmpty(staff.getAvatarUrl())) {
            cn.w mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (constraintLayout3 = mViewBinding2.f17526g) == null) {
                return;
            }
            jg.c.g(constraintLayout3);
            return;
        }
        cn.w mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (constraintLayout2 = mViewBinding3.f17526g) != null) {
            jg.c.k(constraintLayout2);
        }
        cn.w mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (shapeableImageView2 = mViewBinding4.f17521b) != null) {
            ej.f.a aVar = ej.f.f61882a;
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            ej.f.b bVarM = aVar.m(fragmentActivityRequireActivity);
            String avatarUrl = staff.getAvatarUrl();
            if (avatarUrl == null) {
                avatarUrl = "";
            }
            bVarM.g(avatarUrl).d(shapeableImageView2);
        }
        cn.w mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (shapeableImageView = mViewBinding5.f17521b) != null) {
            shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.view.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HeaderExtensionFragment.Q0(this.f47397a, staff, view);
                }
            });
        }
        cn.w mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (appCompatTextView2 = mViewBinding6.f17523d) != null) {
            appCompatTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.view.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HeaderExtensionFragment.R0(this.f47399a, staff, view);
                }
            });
        }
        cn.w mViewBinding7 = getMViewBinding();
        if (mViewBinding7 == null || (appCompatTextView = mViewBinding7.f17523d) == null) {
            return;
        }
        appCompatTextView.setText(staff.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(HeaderExtensionFragment headerExtensionFragment, Staff staff, View view) {
        headerExtensionFragment.M0(staff);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R0(HeaderExtensionFragment headerExtensionFragment, Staff staff, View view) {
        headerExtensionFragment.M0(staff);
    }

    private final void S0(Integer seeStatus) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        int iOrdinal = SeenStatus.WANT_TO_SEE.ordinal();
        if (seeStatus != null && seeStatus.intValue() == iOrdinal) {
            cn.w mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatTextView4 = mViewBinding.f17527h) != null) {
                appCompatTextView4.setSelected(true);
            }
            cn.w mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (appCompatTextView3 = mViewBinding2.f17527h) == null) {
                return;
            }
            Context context = getContext();
            appCompatTextView3.setText(context != null ? context.getString(R$string.movie_detail_added) : null);
            return;
        }
        cn.w mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (appCompatTextView2 = mViewBinding3.f17527h) != null) {
            appCompatTextView2.setSelected(false);
        }
        cn.w mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (appCompatTextView = mViewBinding4.f17527h) == null) {
            return;
        }
        Context context2 = getContext();
        appCompatTextView.setText(context2 != null ? context2.getString(R$string.movie_detail_add_to_list) : null);
    }

    private final void T0() {
        String subjectId;
        Subject subject = this.subject;
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            return;
        }
        if (L0()) {
            J0().d0(subjectId, 0);
            uh.b.f76753a.d(R$string.movie_detail_favorite_cancel_toast);
            com.transsion.baselib.helper.a.f43262a.h(this.pageName, "want_to_see_cancel ", (60 & 4) != 0 ? "" : "", (60 & 8) != 0 ? "" : subjectId, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : this.ops);
        } else {
            J0().d0(subjectId, 1);
            uh.b.f76753a.d(R$string.movie_detail_favorite_open_toast);
            com.transsion.baselib.helper.a.f43262a.h(this.pageName, "want_to_see", (60 & 4) != 0 ? "" : "", (60 & 8) != 0 ? "" : subjectId, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : this.ops);
            tp.e.f76335a.e(this, NoticePermissionFrom.WANT_TO_SEE);
        }
    }

    private final void x0() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        VipInfo vipInfo;
        Integer requireMemberType;
        AppCompatTextView appCompatTextView7;
        AppCompatTextView appCompatTextView8;
        AppCompatTextView appCompatTextView9;
        AppCompatTextView appCompatTextView10;
        AppCompatTextView appCompatTextView11;
        cn.w mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatTextView11 = mViewBinding.f17528i) != null) {
            appCompatTextView11.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.view.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HeaderExtensionFragment.y0(this.f47396a, view);
                }
            });
        }
        Subject subject = this.subject;
        if (subject == null || !subject.isEduType()) {
            Subject subject2 = this.subject;
            if (subject2 == null || !subject2.isMusicType()) {
                cn.w mViewBinding2 = getMViewBinding();
                if (mViewBinding2 != null && (appCompatTextView = mViewBinding2.f17527h) != null) {
                    appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.view.f
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            HeaderExtensionFragment.D0(this.f47402a, view);
                        }
                    });
                }
                Subject subject3 = this.subject;
                S0(subject3 != null ? subject3.getSeenStatus() : null);
            } else {
                cn.w mViewBinding3 = getMViewBinding();
                if (mViewBinding3 != null && (appCompatTextView3 = mViewBinding3.f17522c) != null) {
                    jg.c.g(appCompatTextView3);
                }
                cn.w mViewBinding4 = getMViewBinding();
                if (mViewBinding4 != null && (appCompatTextView2 = mViewBinding4.f17527h) != null) {
                    jg.c.g(appCompatTextView2);
                }
                P0();
            }
        } else {
            cn.w mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (appCompatTextView10 = mViewBinding5.f17522c) != null) {
                appCompatTextView10.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.view.e
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        HeaderExtensionFragment.B0(this.f47401a, view);
                    }
                });
            }
            wk.a.a(this.subject, this.pageName, "opt_detail_addcourse");
            cn.w mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (appCompatTextView9 = mViewBinding6.f17522c) != null) {
                jg.c.k(appCompatTextView9);
            }
            cn.w mViewBinding7 = getMViewBinding();
            if (mViewBinding7 != null && (appCompatTextView8 = mViewBinding7.f17527h) != null) {
                jg.c.g(appCompatTextView8);
            }
            Subject subject4 = this.subject;
            O0(subject4 != null ? subject4.getSeenStatus() : null);
        }
        cn.w mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (appCompatTextView7 = mViewBinding8.f17524e) != null) {
            Subject subject5 = this.subject;
            appCompatTextView7.setVisibility(subject5 != null ? Intrinsics.c(subject5.getHasResource(), Boolean.TRUE) : false ? 0 : 8);
        }
        cn.w mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (appCompatTextView6 = mViewBinding9.f17524e) != null) {
            Subject subject6 = this.subject;
            if (subject6 == null || (vipInfo = subject6.getVipInfo()) == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
                appCompatTextView6.setBackgroundResource(R$drawable.bg_info_icon);
                appCompatTextView6.setCompoundDrawablesWithIntrinsicBounds(androidx.core.content.b.getDrawable(appCompatTextView6.getContext(), R$mipmap.movie_detail_ic_info_download), (Drawable) null, (Drawable) null, (Drawable) null);
                appCompatTextView6.setTextColor(androidx.core.content.b.getColor(appCompatTextView6.getContext(), R$color.white_80));
            } else {
                appCompatTextView6.setBackgroundResource(com.transsion.baseui.R$drawable.p_v2_bg_info_icon);
                appCompatTextView6.setCompoundDrawablesWithIntrinsicBounds(androidx.core.content.b.getDrawable(appCompatTextView6.getContext(), R$mipmap.p_v2_premium_2), (Drawable) null, (Drawable) null, (Drawable) null);
                appCompatTextView6.setTextColor(Color.parseColor("#FFDFB0"));
            }
        }
        cn.w mViewBinding10 = getMViewBinding();
        if (mViewBinding10 != null && (appCompatTextView5 = mViewBinding10.f17524e) != null) {
            appCompatTextView5.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.view.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HeaderExtensionFragment.F0(this.f47403a, view);
                }
            });
        }
        cn.w mViewBinding11 = getMViewBinding();
        if (mViewBinding11 != null && (appCompatTextView4 = mViewBinding11.f17525f) != null) {
            appCompatTextView4.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.view.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HeaderExtensionFragment.G0(this.f47404a, view);
                }
            });
        }
        J0().K().j(this, new a(new Function1() { // from class: com.transsion.moviedetail.view.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HeaderExtensionFragment.H0(this.f47405a, (Integer) obj);
            }
        }));
        J0().F().j(this, new a(new Function1() { // from class: com.transsion.moviedetail.view.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HeaderExtensionFragment.z0(this.f47406a, (Pair) obj);
            }
        }));
        J0().Q().j(this, new a(new Function1() { // from class: com.transsion.moviedetail.view.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HeaderExtensionFragment.A0(this.f47407a, (BaseDto) obj);
            }
        }));
        Subject subject7 = this.subject;
        if (subject7 == null || !subject7.isEduType()) {
            return;
        }
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new HeaderExtensionFragment$addListeners$10(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(HeaderExtensionFragment headerExtensionFragment, View view) {
        String subjectId;
        lg.a.C0828a.g(lg.a.f68839a, "HeaderExtensionFragment click -- share", false, 2, null);
        Subject subject = headerExtensionFragment.subject;
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            return;
        }
        headerExtensionFragment.N0(subjectId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z0(HeaderExtensionFragment headerExtensionFragment, Pair pair) {
        HashMap mapG;
        HashMap mapG2;
        Subject subject = (Subject) pair.getSecond();
        lg.a.f68839a.c(PageStatusFragment.TAG, "get movie detail data==" + pair, true);
        if (subject != null) {
            headerExtensionFragment.subject = subject;
            hj.b logViewConfig = headerExtensionFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            hj.b logViewConfig2 = headerExtensionFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.n(headerExtensionFragment.ops);
            }
            hj.b logViewConfig3 = headerExtensionFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG2 = logViewConfig3.g()) != null) {
                String subjectId = subject.getSubjectId();
                if (subjectId == null) {
                    subjectId = "";
                }
                mapG2.put("subject_id", subjectId);
            }
            hj.b logViewConfig4 = headerExtensionFragment.getLogViewConfig();
            if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
                mapG.put("has_resource", String.valueOf(subject.getHasResource()));
            }
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: K0, reason: merged with bridge method [inline-methods] */
    public cn.w getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        cn.w wVarC = cn.w.c(inflater);
        Intrinsics.g(wVarC, "inflate(...)");
        return wVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        x0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        Subject subject = this.subject;
        S0(subject != null ? subject.getSeenStatus() : null);
        Subject subject2 = this.subject;
        O0(subject2 != null ? subject2.getSeenStatus() : null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        String string;
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("data_key_resource_detectors") : null;
        this.subject = serializable instanceof Subject ? (Subject) serializable : null;
        Bundle arguments2 = getArguments();
        this.moduleName = arguments2 != null ? arguments2.getString("module_name") : null;
        Bundle arguments3 = getArguments();
        this.curSeason = arguments3 != null ? arguments3.getInt("season") : 1;
        Bundle arguments4 = getArguments();
        if (arguments4 == null || (string = arguments4.getString(WebConstants.PAGE_FROM)) == null) {
            string = "subjectdetail";
        }
        this.pageName = string;
        Bundle arguments5 = getArguments();
        this.ops = arguments5 != null ? arguments5.getString("ops") : null;
        if (this.curSeason <= 0) {
            this.curSeason = 1;
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
