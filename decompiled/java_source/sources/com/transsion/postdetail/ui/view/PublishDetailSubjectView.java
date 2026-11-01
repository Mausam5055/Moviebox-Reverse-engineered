package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import com.bumptech.glide.Glide;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.R$mipmap;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.widget.DownloadView;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u000eJ;\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u00152\u0012\b\u0002\u0010\u0018\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aR \u0010\u001d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010)R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00102\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010/R\u0018\u00105\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104¨\u00066"}, d2 = {"Lcom/transsion/postdetail/ui/view/PublishDetailSubjectView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "n", "()V", CampaignEx.JSON_KEY_AD_K, "o", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "postSubjectItem", "", "pageName", "", "showDownload", "Lkotlin/Function0;", "onItemClick", "showData", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V", "a", "Lkotlin/jvm/functions/Function0;", "mOnItemClick", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "c", "Landroidx/constraintlayout/widget/ConstraintLayout;", "clSubjectRoot", "Lcom/transsnet/downloader/widget/DownloadView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsnet/downloader/widget/DownloadView;", "llDownload", "Landroidx/appcompat/widget/AppCompatTextView;", "e", "Landroidx/appcompat/widget/AppCompatTextView;", "tvSubjectYear", "f", "tvSubjectTitle", "Landroidx/appcompat/widget/AppCompatImageView;", "g", "Landroidx/appcompat/widget/AppCompatImageView;", "ivCover", "h", "ivGaussianBlur", "i", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "mPostSubjectItem", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PublishDetailSubjectView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Function0 mOnItemClick;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ConstraintLayout clSubjectRoot;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private DownloadView llDownload;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private AppCompatTextView tvSubjectYear;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private AppCompatTextView tvSubjectTitle;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private AppCompatImageView ivCover;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private AppCompatImageView ivGaussianBlur;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private PostSubjectItem mPostSubjectItem;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PublishDetailSubjectView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PublishDetailSubjectView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PublishDetailSubjectView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        View.inflate(context, R$layout.view_publish_detail_subject_layout, this);
        n();
        k();
    }

    private final void k() {
        DownloadView downloadView = this.llDownload;
        if (downloadView != null) {
            downloadView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.v1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PublishDetailSubjectView.l(this.f50125a, view);
                }
            });
        }
        ConstraintLayout constraintLayout = this.clSubjectRoot;
        if (constraintLayout != null) {
            constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.w1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PublishDetailSubjectView.m(this.f50128a, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0, types: [com.transsion.moviedetailapi.bean.Subject] */
    /* JADX WARN: Type inference failed for: r31v0, types: [java.lang.String] */
    public static final void l(PublishDetailSubjectView publishDetailSubjectView, View view) {
        String resourceLink;
        User user;
        Subject subject;
        ResourceDetectors resourceDetector;
        Group group;
        Subject subject2;
        Group group2;
        Subject subject3;
        String subjectId;
        Subject subject4;
        Subject subject5;
        ResourceDetectors resourceDetector2;
        Subject subject6;
        if (publishDetailSubjectView.getContext() instanceof FragmentActivity) {
            DownloadManagerApi.a aVar = DownloadManagerApi.f58398j;
            DownloadManagerApi downloadManagerApiA = aVar.a();
            PostSubjectItem postSubjectItem = publishDetailSubjectView.mPostSubjectItem;
            Object nickname = null;
            String subjectId2 = (postSubjectItem == null || (subject6 = postSubjectItem.getSubject()) == null) ? null : subject6.getSubjectId();
            PostSubjectItem postSubjectItem2 = publishDetailSubjectView.mPostSubjectItem;
            String resourceId = (postSubjectItem2 == null || (subject5 = postSubjectItem2.getSubject()) == null || (resourceDetector2 = subject5.getResourceDetector()) == null) ? null : resourceDetector2.getResourceId();
            PostSubjectItem postSubjectItem3 = publishDetailSubjectView.mPostSubjectItem;
            if (DownloadManagerApi.x0(downloadManagerApiA, subjectId2, resourceId, (postSubjectItem3 == null || (subject4 = postSubjectItem3.getSubject()) == null) ? false : subject4.isSeries(), false, 8, null)) {
                PostSubjectItem postSubjectItem4 = publishDetailSubjectView.mPostSubjectItem;
                if (postSubjectItem4 == null || (subject3 = postSubjectItem4.getSubject()) == null || (subjectId = subject3.getSubjectId()) == null) {
                    return;
                }
                DownloadManagerApi downloadManagerApiA2 = aVar.a();
                Context context = publishDetailSubjectView.getContext();
                Intrinsics.e(context);
                DownloadManagerApi.z0(downloadManagerApiA2, subjectId, context, publishDetailSubjectView.pageName, null, 8, null);
                return;
            }
            PostSubjectItem postSubjectItem5 = publishDetailSubjectView.mPostSubjectItem;
            if (postSubjectItem5 != null && (subject2 = postSubjectItem5.getSubject()) != null) {
                Integer subjectType = subject2.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    DownloadManagerApi downloadManagerApiA3 = aVar.a();
                    Context context2 = publishDetailSubjectView.getContext();
                    Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                    FragmentActivity fragmentActivity = (FragmentActivity) context2;
                    String str = publishDetailSubjectView.pageName;
                    PostSubjectItem postSubjectItem6 = publishDetailSubjectView.mPostSubjectItem;
                    String groupId = (postSubjectItem6 == null || (group2 = postSubjectItem6.getGroup()) == null) ? null : group2.getGroupId();
                    PostSubjectItem postSubjectItem7 = publishDetailSubjectView.mPostSubjectItem;
                    String ops = postSubjectItem7 != null ? postSubjectItem7.getOps() : null;
                    PostSubjectItem postSubjectItem8 = publishDetailSubjectView.mPostSubjectItem;
                    downloadManagerApiA3.d0(fragmentActivity, str, (384 & 4) != 0 ? "" : groupId, ops, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : postSubjectItem8 != null ? postSubjectItem8.getSubject() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                    return;
                }
            }
            DownloadManagerApi downloadManagerApiA4 = aVar.a();
            Context context3 = publishDetailSubjectView.getContext();
            Intrinsics.f(context3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            FragmentActivity fragmentActivity2 = (FragmentActivity) context3;
            PostSubjectItem postSubjectItem9 = publishDetailSubjectView.mPostSubjectItem;
            Subject subject7 = postSubjectItem9 != null ? postSubjectItem9.getSubject() : null;
            String str2 = publishDetailSubjectView.pageName;
            PostSubjectItem postSubjectItem10 = publishDetailSubjectView.mPostSubjectItem;
            String groupId2 = (postSubjectItem10 == null || (group = postSubjectItem10.getGroup()) == null) ? null : group.getGroupId();
            PostSubjectItem postSubjectItem11 = publishDetailSubjectView.mPostSubjectItem;
            String ops2 = postSubjectItem11 != null ? postSubjectItem11.getOps() : null;
            PostSubjectItem postSubjectItem12 = publishDetailSubjectView.mPostSubjectItem;
            if (postSubjectItem12 == null || (subject = postSubjectItem12.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) {
                resourceLink = "";
            }
            String str3 = resourceLink;
            PostSubjectItem postSubjectItem13 = publishDetailSubjectView.mPostSubjectItem;
            if (postSubjectItem13 != null && (user = postSubjectItem13.getUser()) != null) {
                nickname = user.getNickname();
            }
            downloadManagerApiA4.K(fragmentActivity2, subject7, str2, (960 & 8) != 0 ? "" : groupId2, ops2, str3, (960 & 64) != 0 ? "" : null, (960 & 128) != 0 ? null : null, (960 & 256) != 0 ? null : nickname, (960 & 512) != 0 ? false : false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(PublishDetailSubjectView publishDetailSubjectView, View view) {
        Function0 function0;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L) || (function0 = publishDetailSubjectView.mOnItemClick) == null) {
            return;
        }
    }

    private final void n() {
        this.ivGaussianBlur = (AppCompatImageView) findViewById(R$id.ivGaussianBlur);
        this.ivCover = (AppCompatImageView) findViewById(R$id.ivCover);
        this.tvSubjectTitle = (AppCompatTextView) findViewById(R$id.tvSubjectTitle);
        this.tvSubjectYear = (AppCompatTextView) findViewById(R$id.tvSubjectYear);
        this.llDownload = (DownloadView) findViewById(R$id.llDownload);
        this.clSubjectRoot = (ConstraintLayout) findViewById(R$id.clSubjectRoot);
    }

    private final void o() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() { // from class: com.transsion.postdetail.ui.view.x1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PublishDetailSubjectView.p(this.f50133a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p(PublishDetailSubjectView publishDetailSubjectView, AddToDownloadEvent value) {
        Subject subject;
        Subject subject2;
        ResourceDetectors resourceDetector;
        Subject subject3;
        Subject subject4;
        Intrinsics.h(value, "value");
        try {
            String subjectId = value.getSubjectId();
            PostSubjectItem postSubjectItem = publishDetailSubjectView.mPostSubjectItem;
            if (!TextUtils.equals(subjectId, (postSubjectItem == null || (subject4 = postSubjectItem.getSubject()) == null) ? null : subject4.getSubjectId())) {
                return Unit.f67061a;
            }
            DownloadView downloadView = publishDetailSubjectView.llDownload;
            if (downloadView != null) {
                PostSubjectItem postSubjectItem2 = publishDetailSubjectView.mPostSubjectItem;
                String subjectId2 = (postSubjectItem2 == null || (subject3 = postSubjectItem2.getSubject()) == null) ? null : subject3.getSubjectId();
                PostSubjectItem postSubjectItem3 = publishDetailSubjectView.mPostSubjectItem;
                String resourceId = (postSubjectItem3 == null || (subject2 = postSubjectItem3.getSubject()) == null || (resourceDetector = subject2.getResourceDetector()) == null) ? null : resourceDetector.getResourceId();
                PostSubjectItem postSubjectItem4 = publishDetailSubjectView.mPostSubjectItem;
                DownloadView.setShowType$default(downloadView, subjectId2, resourceId, (postSubjectItem4 == null || (subject = postSubjectItem4.getSubject()) == null) ? null : Boolean.valueOf(subject.isSeries()), false, 0, 24, null);
            }
            return Unit.f67061a;
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void showData$default(PublishDetailSubjectView publishDetailSubjectView, PostSubjectItem postSubjectItem, String str, boolean z10, Function0 function0, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        if ((i11 & 8) != 0) {
            function0 = null;
        }
        publishDetailSubjectView.showData(postSubjectItem, str, z10, function0);
    }

    public final void showData(PostSubjectItem postSubjectItem, String pageName, boolean showDownload, Function0<Unit> onItemClick) {
        DownloadView downloadView;
        Subject subject;
        Subject subject2;
        ResourceDetectors resourceDetector;
        Subject subject3;
        Subject subject4;
        Object objM454constructorimpl;
        String strSubstring;
        String url;
        String url2;
        Subject subject5;
        Subject subject6;
        Intrinsics.h(postSubjectItem, "postSubjectItem");
        Intrinsics.h(pageName, "pageName");
        this.pageName = pageName;
        this.mPostSubjectItem = postSubjectItem;
        this.mOnItemClick = onItemClick;
        Boolean boolValueOf = null;
        if (TextUtils.isEmpty((postSubjectItem == null || (subject6 = postSubjectItem.getSubject()) == null) ? null : subject6.getSubjectId())) {
            ConstraintLayout constraintLayout = this.clSubjectRoot;
            if (constraintLayout != null) {
                constraintLayout.setVisibility(8);
                return;
            }
            return;
        }
        PostSubjectItem postSubjectItem2 = this.mPostSubjectItem;
        if ((((postSubjectItem2 == null || (subject5 = postSubjectItem2.getSubject()) == null) ? false : Intrinsics.c(subject5.getHasResource(), Boolean.FALSE)) || !showDownload) && (downloadView = this.llDownload) != null) {
            downloadView.setVisibility(8);
        }
        DownloadView downloadView2 = this.llDownload;
        if (downloadView2 != null) {
            downloadView2.setPageFrom(pageName);
        }
        PostSubjectItem postSubjectItem3 = this.mPostSubjectItem;
        if (postSubjectItem3 != null && (subject4 = postSubjectItem3.getSubject()) != null) {
            AppCompatImageView appCompatImageView = this.ivGaussianBlur;
            String str = "";
            if (appCompatImageView != null) {
                ej.g gVar = ej.g.f61914a;
                Cover cover = subject4.getCover();
                if (cover == null || (url2 = cover.getUrl()) == null) {
                    url2 = "";
                }
                Glide.with(appCompatImageView.getContext()).load2(gVar.d(url2, com.blankj.utilcode.util.a0.a(42.0f), (184 & 4) != 0 ? true : true, (184 & 8) != 0 ? true : true, (184 & 16) != 0 ? 0 : 0, (184 & 32) != 0 ? false : false, (184 & 64) != 0 ? false : false, (184 & 128) != 0 ? 0 : 0)).transform(new hg.a(50, 1, true)).into(appCompatImageView);
            }
            AppCompatImageView appCompatImageView2 = this.ivCover;
            if (appCompatImageView2 != null) {
                int iA = com.blankj.utilcode.util.a0.a(42.0f);
                ej.f.a aVar = ej.f.f61882a;
                Context context = appCompatImageView2.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                Cover cover2 = subject4.getCover();
                if (cover2 == null || (url = cover2.getUrl()) == null) {
                    url = "";
                }
                bVarM.g(url).i(R$mipmap.home_ic_default_res).m(iA).c(iA).d(appCompatImageView2);
            }
            AppCompatTextView appCompatTextView = this.tvSubjectTitle;
            if (appCompatTextView != null) {
                appCompatTextView.setText(subject4.getTitle());
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                AppCompatTextView appCompatTextView2 = this.tvSubjectYear;
                if (appCompatTextView2 != null) {
                    String releaseDate = subject4.getReleaseDate();
                    if (releaseDate != null) {
                        strSubstring = releaseDate.substring(0, 4);
                        Intrinsics.g(strSubstring, "substring(...)");
                    } else {
                        strSubstring = null;
                    }
                    if (!TextUtils.isEmpty(subject4.getCountryName())) {
                        str = " · " + subject4.getCountryName();
                    }
                    appCompatTextView2.setText(strSubstring + str);
                    Subject subject7 = postSubjectItem.getSubject();
                    appCompatTextView2.setCompoundDrawablesRelativeWithIntrinsicBounds(com.transsion.moviedetailapi.g.a(subject7 != null ? subject7.getSubjectType() : null), 0, 0, 0);
                } else {
                    appCompatTextView2 = null;
                }
                objM454constructorimpl = Result.m454constructorimpl(appCompatTextView2);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Result.m453boximpl(objM454constructorimpl);
        }
        DownloadView downloadView3 = this.llDownload;
        if (downloadView3 != null) {
            PostSubjectItem postSubjectItem4 = this.mPostSubjectItem;
            String subjectId = (postSubjectItem4 == null || (subject3 = postSubjectItem4.getSubject()) == null) ? null : subject3.getSubjectId();
            PostSubjectItem postSubjectItem5 = this.mPostSubjectItem;
            String resourceId = (postSubjectItem5 == null || (subject2 = postSubjectItem5.getSubject()) == null || (resourceDetector = subject2.getResourceDetector()) == null) ? null : resourceDetector.getResourceId();
            PostSubjectItem postSubjectItem6 = this.mPostSubjectItem;
            if (postSubjectItem6 != null && (subject = postSubjectItem6.getSubject()) != null) {
                boolValueOf = Boolean.valueOf(subject.isSeries());
            }
            DownloadView.setShowType$default(downloadView3, subjectId, resourceId, boolValueOf, false, 0, 24, null);
        }
        o();
    }
}
