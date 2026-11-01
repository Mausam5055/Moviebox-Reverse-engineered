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
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
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
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u000eJO\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u00152\u0012\b\u0002\u0010\u0018\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u00172\u0012\b\u0002\u0010\u0019\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u0017¢\u0006\u0004\b\u001a\u0010\u001bR \u0010\u001e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR \u0010 \u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u0010/\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010,R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00105\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00102R\u0018\u00107\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010$R\u0018\u00109\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u0010$R\u0018\u0010<\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010,R\u0018\u0010A\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006B"}, d2 = {"Lcom/transsion/postdetail/ui/view/PublishDetailSubjectAndGroupView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", TtmlNode.TAG_P, "()V", "l", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "postSubjectItem", "", "pageName", "", "showDownload", "Lkotlin/Function0;", "onItemClick", "onGroupClick", "showData", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "a", "Lkotlin/jvm/functions/Function0;", "mOnItemClick", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "mOnGroupClick", "c", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/constraintlayout/widget/ConstraintLayout;", "clSubjectRoot", "Lcom/transsnet/downloader/widget/DownloadView;", "e", "Lcom/transsnet/downloader/widget/DownloadView;", "llDownload", "Landroidx/appcompat/widget/AppCompatTextView;", "f", "Landroidx/appcompat/widget/AppCompatTextView;", "tvSubjectYear", "g", "tvSubjectTitle", "Landroidx/appcompat/widget/AppCompatImageView;", "h", "Landroidx/appcompat/widget/AppCompatImageView;", "ivCover", "i", "ivGaussianBlur", "j", "clSubject", CampaignEx.JSON_KEY_AD_K, "clGroup", "Landroid/view/View;", "Landroid/view/View;", "lineView", "m", "tvGroupName", "n", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "mPostSubjectItem", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PublishDetailSubjectAndGroupView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Function0 mOnItemClick;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Function0 mOnGroupClick;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ConstraintLayout clSubjectRoot;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private DownloadView llDownload;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private AppCompatTextView tvSubjectYear;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private AppCompatTextView tvSubjectTitle;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private AppCompatImageView ivCover;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private AppCompatImageView ivGaussianBlur;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private ConstraintLayout clSubject;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private ConstraintLayout clGroup;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private View lineView;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private AppCompatTextView tvGroupName;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private PostSubjectItem mPostSubjectItem;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PublishDetailSubjectAndGroupView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PublishDetailSubjectAndGroupView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PublishDetailSubjectAndGroupView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        View.inflate(context, R$layout.view_post_detail_subject_and_group_layout, this);
        p();
        l();
    }

    private final void l() {
        DownloadView downloadView = this.llDownload;
        if (downloadView != null) {
            downloadView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.r1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PublishDetailSubjectAndGroupView.m(this.f50113a, view);
                }
            });
        }
        ConstraintLayout constraintLayout = this.clSubject;
        if (constraintLayout != null) {
            constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.s1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PublishDetailSubjectAndGroupView.n(this.f50117a, view);
                }
            });
        }
        ConstraintLayout constraintLayout2 = this.clGroup;
        if (constraintLayout2 != null) {
            constraintLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.t1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PublishDetailSubjectAndGroupView.o(this.f50120a, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0, types: [com.transsion.moviedetailapi.bean.Subject] */
    /* JADX WARN: Type inference failed for: r31v0, types: [java.lang.String] */
    public static final void m(PublishDetailSubjectAndGroupView publishDetailSubjectAndGroupView, View view) {
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
        if (publishDetailSubjectAndGroupView.getContext() instanceof FragmentActivity) {
            DownloadManagerApi.a aVar = DownloadManagerApi.f58398j;
            DownloadManagerApi downloadManagerApiA = aVar.a();
            PostSubjectItem postSubjectItem = publishDetailSubjectAndGroupView.mPostSubjectItem;
            Object nickname = null;
            String subjectId2 = (postSubjectItem == null || (subject6 = postSubjectItem.getSubject()) == null) ? null : subject6.getSubjectId();
            PostSubjectItem postSubjectItem2 = publishDetailSubjectAndGroupView.mPostSubjectItem;
            String resourceId = (postSubjectItem2 == null || (subject5 = postSubjectItem2.getSubject()) == null || (resourceDetector2 = subject5.getResourceDetector()) == null) ? null : resourceDetector2.getResourceId();
            PostSubjectItem postSubjectItem3 = publishDetailSubjectAndGroupView.mPostSubjectItem;
            if (DownloadManagerApi.x0(downloadManagerApiA, subjectId2, resourceId, (postSubjectItem3 == null || (subject4 = postSubjectItem3.getSubject()) == null) ? false : subject4.isSeries(), false, 8, null)) {
                PostSubjectItem postSubjectItem4 = publishDetailSubjectAndGroupView.mPostSubjectItem;
                if (postSubjectItem4 == null || (subject3 = postSubjectItem4.getSubject()) == null || (subjectId = subject3.getSubjectId()) == null) {
                    return;
                }
                DownloadManagerApi downloadManagerApiA2 = aVar.a();
                Context context = publishDetailSubjectAndGroupView.getContext();
                Intrinsics.e(context);
                DownloadManagerApi.z0(downloadManagerApiA2, subjectId, context, publishDetailSubjectAndGroupView.pageName, null, 8, null);
                return;
            }
            PostSubjectItem postSubjectItem5 = publishDetailSubjectAndGroupView.mPostSubjectItem;
            if (postSubjectItem5 != null && (subject2 = postSubjectItem5.getSubject()) != null) {
                Integer subjectType = subject2.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    DownloadManagerApi downloadManagerApiA3 = aVar.a();
                    Context context2 = publishDetailSubjectAndGroupView.getContext();
                    Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                    FragmentActivity fragmentActivity = (FragmentActivity) context2;
                    String str = publishDetailSubjectAndGroupView.pageName;
                    PostSubjectItem postSubjectItem6 = publishDetailSubjectAndGroupView.mPostSubjectItem;
                    String groupId = (postSubjectItem6 == null || (group2 = postSubjectItem6.getGroup()) == null) ? null : group2.getGroupId();
                    PostSubjectItem postSubjectItem7 = publishDetailSubjectAndGroupView.mPostSubjectItem;
                    String ops = postSubjectItem7 != null ? postSubjectItem7.getOps() : null;
                    PostSubjectItem postSubjectItem8 = publishDetailSubjectAndGroupView.mPostSubjectItem;
                    downloadManagerApiA3.d0(fragmentActivity, str, (384 & 4) != 0 ? "" : groupId, ops, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : postSubjectItem8 != null ? postSubjectItem8.getSubject() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                    return;
                }
            }
            DownloadManagerApi downloadManagerApiA4 = aVar.a();
            Context context3 = publishDetailSubjectAndGroupView.getContext();
            Intrinsics.f(context3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            FragmentActivity fragmentActivity2 = (FragmentActivity) context3;
            PostSubjectItem postSubjectItem9 = publishDetailSubjectAndGroupView.mPostSubjectItem;
            Subject subject7 = postSubjectItem9 != null ? postSubjectItem9.getSubject() : null;
            String str2 = publishDetailSubjectAndGroupView.pageName;
            PostSubjectItem postSubjectItem10 = publishDetailSubjectAndGroupView.mPostSubjectItem;
            String groupId2 = (postSubjectItem10 == null || (group = postSubjectItem10.getGroup()) == null) ? null : group.getGroupId();
            PostSubjectItem postSubjectItem11 = publishDetailSubjectAndGroupView.mPostSubjectItem;
            String ops2 = postSubjectItem11 != null ? postSubjectItem11.getOps() : null;
            PostSubjectItem postSubjectItem12 = publishDetailSubjectAndGroupView.mPostSubjectItem;
            if (postSubjectItem12 == null || (subject = postSubjectItem12.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) {
                resourceLink = "";
            }
            String str3 = resourceLink;
            PostSubjectItem postSubjectItem13 = publishDetailSubjectAndGroupView.mPostSubjectItem;
            if (postSubjectItem13 != null && (user = postSubjectItem13.getUser()) != null) {
                nickname = user.getNickname();
            }
            downloadManagerApiA4.K(fragmentActivity2, subject7, str2, (960 & 8) != 0 ? "" : groupId2, ops2, str3, (960 & 64) != 0 ? "" : null, (960 & 128) != 0 ? null : null, (960 & 256) != 0 ? null : nickname, (960 & 512) != 0 ? false : false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(PublishDetailSubjectAndGroupView publishDetailSubjectAndGroupView, View view) {
        Function0 function0;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L) || (function0 = publishDetailSubjectAndGroupView.mOnItemClick) == null) {
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(PublishDetailSubjectAndGroupView publishDetailSubjectAndGroupView, View view) {
        Function0 function0;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L) || (function0 = publishDetailSubjectAndGroupView.mOnGroupClick) == null) {
            return;
        }
    }

    private final void p() {
        this.ivGaussianBlur = (AppCompatImageView) findViewById(R$id.ivGaussianBlur);
        this.ivCover = (AppCompatImageView) findViewById(R$id.ivCover);
        this.tvSubjectTitle = (AppCompatTextView) findViewById(R$id.tvSubjectTitle);
        this.tvSubjectYear = (AppCompatTextView) findViewById(R$id.tvSubjectYear);
        this.llDownload = (DownloadView) findViewById(R$id.llDownload);
        this.clSubjectRoot = (ConstraintLayout) findViewById(R$id.clSubjectRoot);
        this.clSubject = (ConstraintLayout) findViewById(R$id.clSubject);
        this.clGroup = (ConstraintLayout) findViewById(R$id.clGroup);
        this.lineView = findViewById(R$id.view_line);
        this.tvGroupName = (AppCompatTextView) findViewById(R$id.tvGroupName);
    }

    private final void q() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() { // from class: com.transsion.postdetail.ui.view.u1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PublishDetailSubjectAndGroupView.r(this.f50123a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(PublishDetailSubjectAndGroupView publishDetailSubjectAndGroupView, AddToDownloadEvent value) {
        Subject subject;
        Subject subject2;
        ResourceDetectors resourceDetector;
        Subject subject3;
        Subject subject4;
        Intrinsics.h(value, "value");
        try {
            String subjectId = value.getSubjectId();
            PostSubjectItem postSubjectItem = publishDetailSubjectAndGroupView.mPostSubjectItem;
            if (!TextUtils.equals(subjectId, (postSubjectItem == null || (subject4 = postSubjectItem.getSubject()) == null) ? null : subject4.getSubjectId())) {
                return Unit.f67061a;
            }
            DownloadView downloadView = publishDetailSubjectAndGroupView.llDownload;
            if (downloadView != null) {
                PostSubjectItem postSubjectItem2 = publishDetailSubjectAndGroupView.mPostSubjectItem;
                String subjectId2 = (postSubjectItem2 == null || (subject3 = postSubjectItem2.getSubject()) == null) ? null : subject3.getSubjectId();
                PostSubjectItem postSubjectItem3 = publishDetailSubjectAndGroupView.mPostSubjectItem;
                String resourceId = (postSubjectItem3 == null || (subject2 = postSubjectItem3.getSubject()) == null || (resourceDetector = subject2.getResourceDetector()) == null) ? null : resourceDetector.getResourceId();
                PostSubjectItem postSubjectItem4 = publishDetailSubjectAndGroupView.mPostSubjectItem;
                DownloadView.setShowType$default(downloadView, subjectId2, resourceId, (postSubjectItem4 == null || (subject = postSubjectItem4.getSubject()) == null) ? null : Boolean.valueOf(subject.isSeries()), false, 0, 24, null);
            }
            return Unit.f67061a;
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void showData$default(PublishDetailSubjectAndGroupView publishDetailSubjectAndGroupView, PostSubjectItem postSubjectItem, String str, boolean z10, Function0 function0, Function0 function1, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        publishDetailSubjectAndGroupView.showData(postSubjectItem, str, z10, (i11 & 8) != 0 ? null : function0, (i11 & 16) != 0 ? null : function1);
    }

    public final void showData(PostSubjectItem postSubjectItem, String pageName, boolean showDownload, Function0<Unit> onItemClick, Function0<Unit> onGroupClick) {
        ConstraintLayout constraintLayout;
        Group group;
        Subject subject;
        Group group2;
        DownloadView downloadView;
        Group group3;
        AppCompatTextView appCompatTextView;
        Subject subject2;
        Subject subject3;
        ResourceDetectors resourceDetector;
        Subject subject4;
        Subject subject5;
        Object objM454constructorimpl;
        String strSubstring;
        String url;
        String url2;
        Subject subject6;
        Subject subject7;
        Intrinsics.h(postSubjectItem, "postSubjectItem");
        Intrinsics.h(pageName, "pageName");
        this.pageName = pageName;
        this.mPostSubjectItem = postSubjectItem;
        this.mOnItemClick = onItemClick;
        this.mOnGroupClick = onGroupClick;
        Boolean boolValueOf = null;
        if (TextUtils.isEmpty((postSubjectItem == null || (subject7 = postSubjectItem.getSubject()) == null) ? null : subject7.getSubjectId())) {
            ConstraintLayout constraintLayout2 = this.clSubject;
            if (constraintLayout2 != null) {
                constraintLayout2.setVisibility(8);
            }
            View view = this.lineView;
            if (view != null) {
                view.setVisibility(8);
            }
        } else {
            PostSubjectItem postSubjectItem2 = this.mPostSubjectItem;
            String groupId = (postSubjectItem2 == null || (group2 = postSubjectItem2.getGroup()) == null) ? null : group2.getGroupId();
            if (groupId == null || groupId.length() == 0) {
                ConstraintLayout constraintLayout3 = this.clGroup;
                if (constraintLayout3 != null) {
                    constraintLayout3.setVisibility(8);
                }
                View view2 = this.lineView;
                if (view2 != null) {
                    view2.setVisibility(8);
                }
                ConstraintLayout constraintLayout4 = this.clSubject;
                if (constraintLayout4 != null) {
                    constraintLayout4.setLayoutParams(new ConstraintLayout.b(-1, -2));
                }
            } else {
                PostSubjectItem postSubjectItem3 = this.mPostSubjectItem;
                if (TextUtils.isEmpty((postSubjectItem3 == null || (subject = postSubjectItem3.getSubject()) == null) ? null : subject.getSubjectId())) {
                    PostSubjectItem postSubjectItem4 = this.mPostSubjectItem;
                    String groupId2 = (postSubjectItem4 == null || (group = postSubjectItem4.getGroup()) == null) ? null : group.getGroupId();
                    if ((groupId2 == null || groupId2.length() == 0) && (constraintLayout = this.clSubjectRoot) != null) {
                        constraintLayout.setVisibility(8);
                    }
                }
            }
        }
        PostSubjectItem postSubjectItem5 = this.mPostSubjectItem;
        if ((((postSubjectItem5 == null || (subject6 = postSubjectItem5.getSubject()) == null) ? false : Intrinsics.c(subject6.getHasResource(), Boolean.FALSE)) || !showDownload) && (downloadView = this.llDownload) != null) {
            downloadView.setVisibility(8);
        }
        DownloadView downloadView2 = this.llDownload;
        if (downloadView2 != null) {
            downloadView2.setPageFrom(pageName);
        }
        PostSubjectItem postSubjectItem6 = this.mPostSubjectItem;
        if (postSubjectItem6 != null && (subject5 = postSubjectItem6.getSubject()) != null) {
            AppCompatImageView appCompatImageView = this.ivGaussianBlur;
            String str = "";
            if (appCompatImageView != null) {
                ej.g gVar = ej.g.f61914a;
                Cover cover = subject5.getCover();
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
                Cover cover2 = subject5.getCover();
                if (cover2 == null || (url = cover2.getUrl()) == null) {
                    url = "";
                }
                bVarM.g(url).i(R$mipmap.home_ic_default_res).m(iA).c(iA).d(appCompatImageView2);
            }
            AppCompatTextView appCompatTextView2 = this.tvSubjectTitle;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setText(subject5.getTitle());
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                AppCompatTextView appCompatTextView3 = this.tvSubjectYear;
                if (appCompatTextView3 != null) {
                    String releaseDate = subject5.getReleaseDate();
                    if (releaseDate != null) {
                        strSubstring = releaseDate.substring(0, 4);
                        Intrinsics.g(strSubstring, "substring(...)");
                    } else {
                        strSubstring = null;
                    }
                    if (!TextUtils.isEmpty(subject5.getCountryName())) {
                        str = " · " + subject5.getCountryName();
                    }
                    appCompatTextView3.setText(strSubstring + str);
                    Subject subject8 = postSubjectItem.getSubject();
                    appCompatTextView3.setCompoundDrawablesRelativeWithIntrinsicBounds(com.transsion.moviedetailapi.g.a(subject8 != null ? subject8.getSubjectType() : null), 0, 0, 0);
                } else {
                    appCompatTextView3 = null;
                }
                objM454constructorimpl = Result.m454constructorimpl(appCompatTextView3);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Result.m453boximpl(objM454constructorimpl);
        }
        DownloadView downloadView3 = this.llDownload;
        if (downloadView3 != null) {
            PostSubjectItem postSubjectItem7 = this.mPostSubjectItem;
            String subjectId = (postSubjectItem7 == null || (subject4 = postSubjectItem7.getSubject()) == null) ? null : subject4.getSubjectId();
            PostSubjectItem postSubjectItem8 = this.mPostSubjectItem;
            String resourceId = (postSubjectItem8 == null || (subject3 = postSubjectItem8.getSubject()) == null || (resourceDetector = subject3.getResourceDetector()) == null) ? null : resourceDetector.getResourceId();
            PostSubjectItem postSubjectItem9 = this.mPostSubjectItem;
            if (postSubjectItem9 != null && (subject2 = postSubjectItem9.getSubject()) != null) {
                boolValueOf = Boolean.valueOf(subject2.isSeries());
            }
            DownloadView.setShowType$default(downloadView3, subjectId, resourceId, boolValueOf, false, 0, 24, null);
        }
        q();
        PostSubjectItem postSubjectItem10 = this.mPostSubjectItem;
        if (postSubjectItem10 == null || (group3 = postSubjectItem10.getGroup()) == null || (appCompatTextView = this.tvGroupName) == null) {
            return;
        }
        appCompatTextView.setText(group3.getName());
    }
}
