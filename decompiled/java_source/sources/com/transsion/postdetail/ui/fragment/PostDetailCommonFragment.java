package com.transsion.postdetail.ui.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.expand.ExpandView;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.IMovieDetailService;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Audio;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Link;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.ninegridview.video.NineGridVideoView;
import com.transsion.ninegridview.video.NineGridVideoViewAdapter;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.ui.dialog.ImmVideoCommentDialog;
import com.transsion.postdetail.ui.view.PostDetailOperationView;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.widget.DownloadView;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.transsnet.flow.event.sync.event.LikeEvent;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 l2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001@B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u001b\u0010\r\u001a\u00020\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0013\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0002¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0002¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0002¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0002¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0002¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0002¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0004J\u0017\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u000fH\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u000bH\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u000bH\u0016¢\u0006\u0004\b1\u00100J\u000f\u00102\u001a\u00020\u0005H\u0016¢\u0006\u0004\b2\u0010\u0004J\u000f\u00103\u001a\u00020\u0005H\u0016¢\u0006\u0004\b3\u0010\u0004J\u000f\u00104\u001a\u00020\u0005H\u0016¢\u0006\u0004\b4\u0010\u0004J\u000f\u00106\u001a\u000205H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u000fH&¢\u0006\u0004\b8\u0010.J\u000f\u00109\u001a\u00020\u0005H\u0016¢\u0006\u0004\b9\u0010\u0004J\u000f\u0010:\u001a\u00020\u0005H&¢\u0006\u0004\b:\u0010\u0004J\u000f\u0010;\u001a\u00020\u0005H&¢\u0006\u0004\b;\u0010\u0004J\u000f\u0010<\u001a\u00020\u0005H&¢\u0006\u0004\b<\u0010\u0004J\u000f\u0010=\u001a\u00020\u0005H\u0016¢\u0006\u0004\b=\u0010\u0004J\u000f\u0010>\u001a\u00020\u0005H\u0016¢\u0006\u0004\b>\u0010\u0004J\u000f\u0010?\u001a\u00020\u0005H\u0016¢\u0006\u0004\b?\u0010\u0004R\u0018\u0010B\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR$\u0010G\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010A\u001a\u0004\bD\u0010.\"\u0004\bE\u0010FR\u0016\u0010J\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR$\u0010P\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010 R\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u001b\u0010Z\u001a\u00020U8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR$\u0010b\u001a\u0004\u0018\u00010[8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR\u001d\u0010g\u001a\u0004\u0018\u00010c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u0010W\u001a\u0004\be\u0010fR\u0018\u0010k\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010j¨\u0006m"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lso/p;", "<init>", "()V", "", "C0", "L0", "Z0", "loadData", "updatePostDetail", "", "hasResource", "a1", "(Ljava/lang/Boolean;)V", "", CampaignEx.JSON_KEY_TITLE, "content", "link", "V0", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "subjectRate", "Y0", "(Ljava/lang/Integer;)V", "Lcom/transsion/moviedetailapi/bean/Media;", "media", "T0", "(Lcom/transsion/moviedetailapi/bean/Media;)V", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "setPTParams", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "initPlayer", "observeLike", "O0", "clickLike", "showCommentsDialog", "doShare", "clickDownload", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "E0", "(Landroid/view/LayoutInflater;)Lso/p;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "initViewData", "initViewModel", "initListener", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "getPageName", "retryLoadData", "G0", "initAudioListener", "F0", "onResume", "onPause", "onDestroy", "a", "Ljava/lang/String;", "tranOps", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getPostId", "setPostId", "(Ljava/lang/String;)V", "postId", "c", "Z", "fromComment", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "getMPostDetailBean", "()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "setMPostDetailBean", "mPostDetailBean", "Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;", "e", "Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;", "mPostRecommendFragment", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "f", "Lkotlin/Lazy;", "getViewModel", "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "viewModel", "Lcom/transsnet/downloader/widget/DownloadView;", "g", "Lcom/transsnet/downloader/widget/DownloadView;", "getDownloadViewFloat", "()Lcom/transsnet/downloader/widget/DownloadView;", "setDownloadViewFloat", "(Lcom/transsnet/downloader/widget/DownloadView;)V", "downloadViewFloat", "Lcom/transsnet/loginapi/ILoginApi;", "h", "getMLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "Lcom/transsion/ninegridview/a;", "i", "Lcom/transsion/ninegridview/a;", "mGifPlayerManager", "j", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class PostDetailCommonFragment extends PageStatusFragment<so.p> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String tranOps;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String postId;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean fromComment;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private PostSubjectItem mPostDetailBean;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private PostRecommendFragment mPostRecommendFragment;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private DownloadView downloadViewFloat;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ninegridview.a mGifPlayerManager;

    public static final class b implements com.transsion.share.share.a {
        b() {
        }

        @Override // com.transsion.share.share.a
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
            PostDetailCommonFragment.this.getViewModel().r(id2);
        }

        @Override // com.transsion.share.share.a
        public void b(String str) {
            new Intent().putExtra("id", str);
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB != null) {
                activityB.finish();
            }
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
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49585a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49585a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49585a;
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
            this.f49585a.invoke(obj);
        }
    }

    public static final class d implements CommentFragment.b {
        d() {
        }

        @Override // com.transsion.postdetail.ui.fragment.CommentFragment.b
        public void a(long j11) {
            Stat stat;
            Stat stat2;
            Long commentCount;
            PostSubjectItem mPostDetailBean = PostDetailCommonFragment.this.getMPostDetailBean();
            if (mPostDetailBean == null || (stat2 = mPostDetailBean.getStat()) == null || (commentCount = stat2.getCommentCount()) == null || commentCount.longValue() != j11) {
                PostSubjectItem mPostDetailBean2 = PostDetailCommonFragment.this.getMPostDetailBean();
                if (mPostDetailBean2 != null && (stat = mPostDetailBean2.getStat()) != null) {
                    stat.setCommentCount(Long.valueOf(j11));
                }
                PostDetailCommonFragment.this.O0();
            }
        }
    }

    public PostDetailCommonFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.postdetail.ui.fragment.PostDetailCommonFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(PostDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.postdetail.ui.fragment.PostDetailCommonFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.postdetail.ui.fragment.PostDetailCommonFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.mLoginApi = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.i2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostDetailCommonFragment.mLoginApi_delegate$lambda$0();
            }
        });
    }

    private final void C0() {
        Subject subject;
        ConstraintLayout root;
        Context context = getContext();
        Boolean hasResource = null;
        DownloadView downloadView = context != null ? new DownloadView(context) : null;
        this.downloadViewFloat = downloadView;
        if (downloadView != null) {
            downloadView.setPageFrom(getPageName());
        }
        DownloadView downloadView2 = this.downloadViewFloat;
        if (downloadView2 != null) {
            DownloadView.setAttrs$default(downloadView2, null, Float.valueOf(com.blankj.utilcode.util.a0.d(16.0f)), null, 5, null);
        }
        DownloadView downloadView3 = this.downloadViewFloat;
        if (downloadView3 != null) {
            Context context2 = getContext();
            downloadView3.setBackground(context2 != null ? androidx.core.content.b.getDrawable(context2, R$drawable.bg_btn_radius_20) : null);
        }
        ConstraintLayout.b bVar = new ConstraintLayout.b(com.blankj.utilcode.util.a0.a(140.0f), com.blankj.utilcode.util.a0.a(40.0f));
        int i11 = R$id.cl_container;
        bVar.f7684l = i11;
        bVar.f7700t = i11;
        bVar.f7704v = i11;
        bVar.setMargins(0, 0, 0, com.blankj.utilcode.util.a0.a(48.0f));
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding != null && (root = mViewBinding.getRoot()) != null) {
            root.addView(this.downloadViewFloat, -1, bVar);
        }
        DownloadView downloadView4 = this.downloadViewFloat;
        if (downloadView4 != null) {
            downloadView4.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.j2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PostDetailCommonFragment.D0(this.f49736a, view);
                }
            });
        }
        PostSubjectItem postSubjectItem = this.mPostDetailBean;
        if (postSubjectItem != null && (subject = postSubjectItem.getSubject()) != null) {
            hasResource = subject.getHasResource();
        }
        a1(hasResource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(PostDetailCommonFragment postDetailCommonFragment, View view) {
        String resourceLink;
        User user;
        Subject subject;
        ResourceDetectors resourceDetector;
        Group group;
        Subject subject2;
        String subjectId;
        Subject subject3;
        Subject subject4;
        ResourceDetectors resourceDetector2;
        Subject subject5;
        DownloadManagerApi.a aVar = DownloadManagerApi.f58398j;
        DownloadManagerApi downloadManagerApiA = aVar.a();
        PostSubjectItem postSubjectItem = postDetailCommonFragment.mPostDetailBean;
        String nickname = null;
        String subjectId2 = (postSubjectItem == null || (subject5 = postSubjectItem.getSubject()) == null) ? null : subject5.getSubjectId();
        PostSubjectItem postSubjectItem2 = postDetailCommonFragment.mPostDetailBean;
        String resourceId = (postSubjectItem2 == null || (subject4 = postSubjectItem2.getSubject()) == null || (resourceDetector2 = subject4.getResourceDetector()) == null) ? null : resourceDetector2.getResourceId();
        PostSubjectItem postSubjectItem3 = postDetailCommonFragment.mPostDetailBean;
        if (DownloadManagerApi.x0(downloadManagerApiA, subjectId2, resourceId, (postSubjectItem3 == null || (subject3 = postSubjectItem3.getSubject()) == null) ? false : subject3.isSeries(), false, 8, null)) {
            PostSubjectItem postSubjectItem4 = postDetailCommonFragment.mPostDetailBean;
            if (postSubjectItem4 == null || (subject2 = postSubjectItem4.getSubject()) == null || (subjectId = subject2.getSubjectId()) == null) {
                return;
            }
            DownloadManagerApi downloadManagerApiA2 = aVar.a();
            Context context = postDetailCommonFragment.getContext();
            Intrinsics.e(context);
            DownloadManagerApi.z0(downloadManagerApiA2, subjectId, context, postDetailCommonFragment.getPageName(), null, 8, null);
            return;
        }
        DownloadManagerApi downloadManagerApiA3 = aVar.a();
        Context context2 = postDetailCommonFragment.getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity = (FragmentActivity) context2;
        PostSubjectItem postSubjectItem5 = postDetailCommonFragment.mPostDetailBean;
        Subject subject6 = postSubjectItem5 != null ? postSubjectItem5.getSubject() : null;
        String pageName = postDetailCommonFragment.getPageName();
        PostSubjectItem postSubjectItem6 = postDetailCommonFragment.mPostDetailBean;
        String groupId = (postSubjectItem6 == null || (group = postSubjectItem6.getGroup()) == null) ? null : group.getGroupId();
        PostSubjectItem postSubjectItem7 = postDetailCommonFragment.mPostDetailBean;
        String ops = postSubjectItem7 != null ? postSubjectItem7.getOps() : null;
        PostSubjectItem postSubjectItem8 = postDetailCommonFragment.mPostDetailBean;
        if (postSubjectItem8 == null || (subject = postSubjectItem8.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) {
            resourceLink = "";
        }
        String str = resourceLink;
        PostSubjectItem postSubjectItem9 = postDetailCommonFragment.mPostDetailBean;
        if (postSubjectItem9 != null && (user = postSubjectItem9.getUser()) != null) {
            nickname = user.getNickname();
        }
        downloadManagerApiA3.K(fragmentActivity, subject6, pageName, (960 & 8) != 0 ? "" : groupId, ops, str, (960 & 64) != 0 ? "" : null, (960 & 128) != 0 ? null : null, (960 & 256) != 0 ? null : nickname, (960 & 512) != 0 ? false : false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(PostDetailCommonFragment postDetailCommonFragment, View view) {
        FragmentActivity activity = postDetailCommonFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(PostDetailCommonFragment postDetailCommonFragment, View view) {
        User user;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L)) {
            return;
        }
        Navigator navigatorC = TheRouter.c("/profile/user_profile");
        PostSubjectItem postSubjectItem = postDetailCommonFragment.mPostDetailBean;
        Navigator.x(navigatorC.K("userId", (postSubjectItem == null || (user = postSubjectItem.getUser()) == null) ? null : user.getUserId()), postDetailCommonFragment.requireContext(), null, 2, null);
        com.transsion.postdetail.helper.a.d(com.transsion.postdetail.helper.a.f48866a, postDetailCommonFragment.mPostDetailBean, null, null, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J0(PostDetailCommonFragment postDetailCommonFragment, PostSubjectItem postSubjectItem) {
        if (postSubjectItem == null) {
            PageStatusFragment.showEmptyView$default(postDetailCommonFragment, false, 1, null);
            return Unit.f67061a;
        }
        postDetailCommonFragment.showContentView();
        postDetailCommonFragment.mPostDetailBean = postSubjectItem;
        postSubjectItem.setTran_ops(postDetailCommonFragment.tranOps);
        postDetailCommonFragment.updatePostDetail();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K0(PostDetailCommonFragment postDetailCommonFragment, String str) {
        if (TextUtils.equals("0", str)) {
            String str2 = postDetailCommonFragment.postId;
            if (str2 != null) {
                ty.b.f76417a.a().e(str2);
            }
            FragmentActivity activity = postDetailCommonFragment.getActivity();
            if (activity != null) {
                activity.finish();
            }
        } else {
            uh.b.a aVar = uh.b.f76753a;
            FragmentActivity activity2 = postDetailCommonFragment.getActivity();
            aVar.e(activity2 != null ? activity2.getString(R$string.delete_post_failed) : null);
        }
        return Unit.f67061a;
    }

    private final void L0() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() { // from class: com.transsion.postdetail.ui.fragment.y1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PostDetailCommonFragment.M0(this.f49857a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M0(PostDetailCommonFragment postDetailCommonFragment, AddToDownloadEvent value) {
        Subject subject;
        Subject subject2;
        Intrinsics.h(value, "value");
        try {
            String subjectId = value.getSubjectId();
            PostSubjectItem postSubjectItem = postDetailCommonFragment.mPostDetailBean;
            if (!TextUtils.equals(subjectId, (postSubjectItem == null || (subject2 = postSubjectItem.getSubject()) == null) ? null : subject2.getSubjectId())) {
                return Unit.f67061a;
            }
            PostSubjectItem postSubjectItem2 = postDetailCommonFragment.mPostDetailBean;
            postDetailCommonFragment.a1((postSubjectItem2 == null || (subject = postSubjectItem2.getSubject()) == null) ? null : subject.getHasResource());
            return Unit.f67061a;
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N0(PostDetailCommonFragment postDetailCommonFragment, LikeEvent value) {
        Stat stat;
        Stat stat2;
        Long likeCount;
        Stat stat3;
        Stat stat4;
        Long likeCount2;
        Intrinsics.h(value, "value");
        try {
            Result.Companion companion = Result.INSTANCE;
            PostSubjectItem postSubjectItem = postDetailCommonFragment.mPostDetailBean;
            Long lValueOf = null;
            if (!TextUtils.equals(postSubjectItem != null ? postSubjectItem.getPostId() : null, value.getSubjectId())) {
                return Unit.f67061a;
            }
            PostSubjectItem postSubjectItem2 = postDetailCommonFragment.mPostDetailBean;
            if (postSubjectItem2 != null) {
                postSubjectItem2.setHasLike(Boolean.valueOf(value.getLike()));
            }
            if (value.getLike()) {
                PostSubjectItem postSubjectItem3 = postDetailCommonFragment.mPostDetailBean;
                if (postSubjectItem3 != null && (stat3 = postSubjectItem3.getStat()) != null) {
                    PostSubjectItem postSubjectItem4 = postDetailCommonFragment.mPostDetailBean;
                    if (postSubjectItem4 != null && (stat4 = postSubjectItem4.getStat()) != null && (likeCount2 = stat4.getLikeCount()) != null) {
                        lValueOf = Long.valueOf(likeCount2.longValue() + 1);
                    }
                    stat3.setLikeCount(lValueOf);
                }
            } else {
                PostSubjectItem postSubjectItem5 = postDetailCommonFragment.mPostDetailBean;
                if (postSubjectItem5 != null && (stat = postSubjectItem5.getStat()) != null) {
                    PostSubjectItem postSubjectItem6 = postDetailCommonFragment.mPostDetailBean;
                    if (postSubjectItem6 != null && (stat2 = postSubjectItem6.getStat()) != null && (likeCount = stat2.getLikeCount()) != null) {
                        lValueOf = Long.valueOf(likeCount.longValue() - 1);
                    }
                    stat.setLikeCount(lValueOf);
                }
            }
            postDetailCommonFragment.O0();
            Result.m454constructorimpl(Unit.f67061a);
            return Unit.f67061a;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O0() {
        PostDetailOperationView postDetailOperationView;
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (postDetailOperationView = mViewBinding.f75664s) == null) {
            return;
        }
        postDetailOperationView.showData(this.mPostDetailBean, new Function0() { // from class: com.transsion.postdetail.ui.fragment.b2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostDetailCommonFragment.P0(this.f49654a);
            }
        }, new Function0() { // from class: com.transsion.postdetail.ui.fragment.c2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostDetailCommonFragment.Q0(this.f49660a);
            }
        }, new Function0() { // from class: com.transsion.postdetail.ui.fragment.d2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostDetailCommonFragment.R0(this.f49669a);
            }
        }, new Function0() { // from class: com.transsion.postdetail.ui.fragment.e2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostDetailCommonFragment.S0(this.f49679a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P0(PostDetailCommonFragment postDetailCommonFragment) {
        postDetailCommonFragment.clickLike();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q0(PostDetailCommonFragment postDetailCommonFragment) {
        postDetailCommonFragment.showCommentsDialog();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R0(PostDetailCommonFragment postDetailCommonFragment) {
        postDetailCommonFragment.doShare();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S0(PostDetailCommonFragment postDetailCommonFragment) {
        postDetailCommonFragment.clickDownload();
        return Unit.f67061a;
    }

    private final void T0(Media media) {
        NineGridVideoView nineGridVideoView;
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (nineGridVideoView = mViewBinding.f75663r) == null) {
            return;
        }
        if ((media != null ? media.getImage() : null) == null) {
            jg.c.g(nineGridVideoView);
        } else {
            List<Image> image = media.getImage();
            if (image != null) {
                nineGridVideoView.setAdapter(new NineGridVideoViewAdapter(image));
                nineGridVideoView.loadImage();
            }
            jg.c.k(nineGridVideoView);
        }
        if (qn.b.a(media)) {
            nineGridVideoView.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.o2
                @Override // java.lang.Runnable
                public final void run() {
                    PostDetailCommonFragment.U0(this.f49769a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(PostDetailCommonFragment postDetailCommonFragment) {
        postDetailCommonFragment.initPlayer();
    }

    private final void V0(String title, final String content, final String link) {
        final so.m0 m0Var;
        so.o0 o0Var;
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding != null && (o0Var = mViewBinding.f75670y) != null) {
            if (TextUtils.isEmpty(title)) {
                AppCompatTextView tvPostTitle = o0Var.f75645b;
                Intrinsics.g(tvPostTitle, "tvPostTitle");
                jg.c.g(tvPostTitle);
            } else {
                AppCompatTextView tvPostTitle2 = o0Var.f75645b;
                Intrinsics.g(tvPostTitle2, "tvPostTitle");
                jg.c.k(tvPostTitle2);
                o0Var.f75645b.setText(title);
            }
        }
        so.p mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (m0Var = mViewBinding2.f75668w) == null) {
            return;
        }
        m0Var.f75619b.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.z1
            @Override // java.lang.Runnable
            public final void run() {
                PostDetailCommonFragment.W0(content, m0Var, link, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(String str, so.m0 m0Var, String str2, final PostDetailCommonFragment postDetailCommonFragment) {
        Subject subject;
        String subjectId;
        if (TextUtils.isEmpty(str)) {
            ExpandView tvPostDesc = m0Var.f75619b;
            Intrinsics.g(tvPostDesc, "tvPostDesc");
            jg.c.g(tvPostDesc);
            return;
        }
        ExpandView expandView = m0Var.f75619b;
        Intrinsics.e(expandView);
        jg.c.k(expandView);
        if (!TextUtils.isEmpty(str2)) {
            str = str + "\n" + (str2 != null ? StringsKt.Q(str2, " ", "%20", false, 4, null) : null);
        }
        PostSubjectItem postSubjectItem = postDetailCommonFragment.mPostDetailBean;
        final boolean z10 = false;
        if (postSubjectItem != null && (subject = postSubjectItem.getSubject()) != null && (subjectId = subject.getSubjectId()) != null && subjectId.length() > 0) {
            z10 = true;
        }
        com.transsion.baseui.util.l.f(expandView, str, !z10, new Function2() { // from class: com.transsion.postdetail.ui.fragment.f2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return PostDetailCommonFragment.X0(z10, postDetailCommonFragment, (View) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X0(boolean z10, PostDetailCommonFragment postDetailCommonFragment, View view, String str) {
        String resourceLink;
        User user;
        Subject subject;
        ResourceDetectors resourceDetector;
        if (z10) {
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
            FragmentActivity fragmentActivityRequireActivity = postDetailCommonFragment.requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            PostSubjectItem postSubjectItem = postDetailCommonFragment.mPostDetailBean;
            Subject subject2 = postSubjectItem != null ? postSubjectItem.getSubject() : null;
            Intrinsics.e(str);
            String str2 = postDetailCommonFragment.tranOps;
            PostSubjectItem postSubjectItem2 = postDetailCommonFragment.mPostDetailBean;
            if (postSubjectItem2 == null || (subject = postSubjectItem2.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) {
                resourceLink = "";
            }
            String str3 = resourceLink;
            PostSubjectItem postSubjectItem3 = postDetailCommonFragment.mPostDetailBean;
            downloadManagerApiA.U(fragmentActivityRequireActivity, subject2, str, "postdetail", str2, str3, (postSubjectItem3 == null || (user = postSubjectItem3.getUser()) == null) ? null : user.getNickname());
        }
        return Unit.f67061a;
    }

    private final void Y0(Integer subjectRate) {
        so.n0 n0Var;
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (n0Var = mViewBinding.f75654i) == null) {
            return;
        }
        if ((subjectRate != null ? subjectRate.intValue() : 0) <= 0) {
            ConstraintLayout clRating = n0Var.f75628b;
            Intrinsics.g(clRating, "clRating");
            jg.c.g(clRating);
            return;
        }
        ConstraintLayout clRating2 = n0Var.f75628b;
        Intrinsics.g(clRating2, "clRating");
        jg.c.k(clRating2);
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String string = getString(R$string.score);
        Intrinsics.g(string, "getString(...)");
        String str = String.format(string, Arrays.copyOf(new Object[]{subjectRate}, 1));
        Intrinsics.g(str, "format(...)");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        int length = String.valueOf(subjectRate).length();
        spannableStringBuilder.setSpan(new AbsoluteSizeSpan(16, true), 0, length, 17);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(androidx.core.content.b.getColor(requireActivity(), R$color.color_ffaa33)), 0, length, 17);
        n0Var.f75630d.setText(spannableStringBuilder);
    }

    private final void Z0() {
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        androidx.fragment.app.w wVarP = childFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        PostRecommendFragment postRecommendFragmentA = PostRecommendFragment.INSTANCE.a(this.postId);
        wVarP.s(R$id.flContainer, postRecommendFragmentA);
        this.mPostRecommendFragment = postRecommendFragmentA;
        wVarP.j();
    }

    private final void a1(Boolean hasResource) {
        HashMap mapG;
        Subject subject;
        Subject subject2;
        ResourceDetectors resourceDetector;
        Subject subject3;
        if (Intrinsics.c(hasResource, Boolean.TRUE)) {
            DownloadView downloadView = this.downloadViewFloat;
            if (downloadView != null) {
                downloadView.setVisibility(0);
            }
        } else {
            DownloadView downloadView2 = this.downloadViewFloat;
            if (downloadView2 != null) {
                downloadView2.setVisibility(8);
            }
        }
        DownloadView downloadView3 = this.downloadViewFloat;
        if (downloadView3 != null) {
            PostSubjectItem postSubjectItem = this.mPostDetailBean;
            String subjectId = (postSubjectItem == null || (subject3 = postSubjectItem.getSubject()) == null) ? null : subject3.getSubjectId();
            PostSubjectItem postSubjectItem2 = this.mPostDetailBean;
            String resourceId = (postSubjectItem2 == null || (subject2 = postSubjectItem2.getSubject()) == null || (resourceDetector = subject2.getResourceDetector()) == null) ? null : resourceDetector.getResourceId();
            PostSubjectItem postSubjectItem3 = this.mPostDetailBean;
            DownloadView.setShowType$default(downloadView3, subjectId, resourceId, (postSubjectItem3 == null || (subject = postSubjectItem3.getSubject()) == null) ? null : Boolean.valueOf(subject.isSeries()), false, 0, 24, null);
        }
        DownloadView downloadView4 = this.downloadViewFloat;
        String str = (downloadView4 == null || downloadView4.getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() != 1) ? "download_subject" : "play_subject";
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(PostDetailCommonFragment postDetailCommonFragment, View view) {
        Group group;
        Navigator navigatorC = TheRouter.c("/room/detail");
        PostSubjectItem postSubjectItem = postDetailCommonFragment.mPostDetailBean;
        Navigator.x(navigatorC.K("id", (postSubjectItem == null || (group = postSubjectItem.getGroup()) == null) ? null : group.getGroupId()), postDetailCommonFragment.requireContext(), null, 2, null);
        com.transsion.postdetail.helper.a.n(com.transsion.postdetail.helper.a.f48866a, postDetailCommonFragment.mPostDetailBean, null, null, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c1(PostDetailCommonFragment postDetailCommonFragment) {
        Subject subject;
        String subjectId;
        Subject subject2;
        Integer subjectType;
        String strC = hh.b.f64461b.a().c();
        IMovieDetailService iMovieDetailService = (IMovieDetailService) TheRouter.d(IMovieDetailService.class, new Object[0]);
        if (TextUtils.equals(strC, iMovieDetailService != null ? iMovieDetailService.d() : null)) {
            postDetailCommonFragment.requireActivity().finish();
        } else {
            PostSubjectItem postSubjectItem = postDetailCommonFragment.mPostDetailBean;
            if (postSubjectItem != null && (subject = postSubjectItem.getSubject()) != null && (subjectId = subject.getSubjectId()) != null) {
                Navigator navigatorC = TheRouter.c("/movie/detail");
                PostSubjectItem postSubjectItem2 = postDetailCommonFragment.mPostDetailBean;
                Navigator navigatorK = navigatorC.F("subject_type", (postSubjectItem2 == null || (subject2 = postSubjectItem2.getSubject()) == null || (subjectType = subject2.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()).K("id", subjectId);
                PostSubjectItem postSubjectItem3 = postDetailCommonFragment.mPostDetailBean;
                Navigator.x(navigatorK.K("ops", postSubjectItem3 != null ? postSubjectItem3.getOps() : null), postDetailCommonFragment.requireContext(), null, 2, null);
            }
            com.transsion.postdetail.helper.a.D(com.transsion.postdetail.helper.a.f48866a, postDetailCommonFragment.mPostDetailBean, null, null, 6, null);
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0085  */
    private final void clickDownload() {
        String url;
        String str;
        Subject subject;
        ResourceDetectors resourceDetector;
        String resourceLink;
        Subject subject2;
        Subject subject3;
        Integer size;
        String url2;
        Subject subject4;
        ResourceDetectors resourceDetector2;
        PostSubjectItem postSubjectItem;
        Media media;
        Cover cover;
        Media media2;
        List<Audio> audio;
        PostSubjectItem postSubjectItem2 = this.mPostDetailBean;
        Audio audio2 = (postSubjectItem2 == null || (media2 = postSubjectItem2.getMedia()) == null || (audio = media2.getAudio()) == null) ? null : audio.get(0);
        PostSubjectItem postSubjectItem3 = this.mPostDetailBean;
        String title = postSubjectItem3 != null ? postSubjectItem3.getTitle() : null;
        if (TextUtils.isEmpty(title)) {
            PostSubjectItem postSubjectItem4 = this.mPostDetailBean;
            title = postSubjectItem4 != null ? postSubjectItem4.getContent() : null;
        }
        String str2 = title;
        PostSubjectItem postSubjectItem5 = this.mPostDetailBean;
        String coverUrl$default = postSubjectItem5 != null ? PostSubjectItem.getCoverUrl$default(postSubjectItem5, false, 1, null) : null;
        if (TextUtils.isEmpty(coverUrl$default) && ((postSubjectItem = this.mPostDetailBean) == null || (media = postSubjectItem.getMedia()) == null || (cover = media.getCover()) == null || (coverUrl$default = cover.getUrl()) == null)) {
            coverUrl$default = "";
        }
        String str3 = coverUrl$default;
        PostSubjectItem postSubjectItem6 = this.mPostDetailBean;
        if ((postSubjectItem6 != null ? postSubjectItem6.getSubject() : null) != null) {
            PostSubjectItem postSubjectItem7 = this.mPostDetailBean;
            if (postSubjectItem7 == null || (subject4 = postSubjectItem7.getSubject()) == null || (resourceDetector2 = subject4.getResourceDetector()) == null) {
                str = null;
            } else {
                url = resourceDetector2.getResourceId();
                str = url;
            }
        } else if (audio2 != null) {
            url = audio2.getUrl();
            str = url;
        } else {
            str = null;
        }
        DownloadBean downloadBean = new DownloadBean((audio2 == null || (url2 = audio2.getUrl()) == null) ? "" : url2, str, str2, str3, (audio2 == null || (size = audio2.getSize()) == null) ? null : Long.valueOf(size.intValue()), "", null, null, null, null, 0L, 0, 0, 1, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -8256, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
        PostSubjectItem postSubjectItem8 = this.mPostDetailBean;
        downloadBean.setPostId(postSubjectItem8 != null ? postSubjectItem8.getPostId() : null);
        PostSubjectItem postSubjectItem9 = this.mPostDetailBean;
        downloadBean.setSubjectId((postSubjectItem9 == null || (subject3 = postSubjectItem9.getSubject()) == null) ? null : subject3.getSubjectId());
        PostSubjectItem postSubjectItem10 = this.mPostDetailBean;
        downloadBean.setSubjectName((postSubjectItem10 == null || (subject2 = postSubjectItem10.getSubject()) == null) ? null : subject2.getTitle());
        DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity = (FragmentActivity) context;
        PostSubjectItem postSubjectItem11 = this.mPostDetailBean;
        String ops = postSubjectItem11 != null ? postSubjectItem11.getOps() : null;
        PostSubjectItem postSubjectItem12 = this.mPostDetailBean;
        String str4 = (postSubjectItem12 == null || (subject = postSubjectItem12.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) ? "" : resourceLink;
        PostSubjectItem postSubjectItem13 = this.mPostDetailBean;
        downloadManagerApiA.O(fragmentActivity, downloadBean, "post_audio_detail", ops, str4, (64 & 32) != 0 ? null : postSubjectItem13 != null ? postSubjectItem13.getSubject() : null, (64 & 64) != 0 ? null : null);
        com.transsion.postdetail.helper.a.j(com.transsion.postdetail.helper.a.f48866a, this.mPostDetailBean, getPageName(), null, 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.transsion.postdetail.viewmodel.PostDetailViewModel] */
    private final void clickLike() {
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_tips);
            return;
        }
        PostSubjectItem postSubjectItem = this.mPostDetailBean;
        ?? C = postSubjectItem != null ? Intrinsics.c(postSubjectItem.getHasLike(), Boolean.TRUE) : 0;
        ?? viewModel = getViewModel();
        PostSubjectItem postSubjectItem2 = this.mPostDetailBean;
        viewModel.G(postSubjectItem2 != null ? postSubjectItem2.getPostId() : null, C);
        com.transsion.postdetail.helper.a aVar = com.transsion.postdetail.helper.a.f48866a;
        PostSubjectItem postSubjectItem3 = this.mPostDetailBean;
        com.transsion.postdetail.helper.a.q(aVar, postSubjectItem3, postSubjectItem3 != null ? Intrinsics.c(postSubjectItem3.getHasLike(), Boolean.TRUE) : false, getPageName(), null, 8, null);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    private final void doShare() {
        boolean z10;
        User user;
        User user2;
        ILoginApi mLoginApi = getMLoginApi();
        UserInfo userInfoI = mLoginApi != null ? mLoginApi.i() : null;
        if ((userInfoI != null ? userInfoI.getUserId() : null) != null) {
            String userId = userInfoI.getUserId();
            PostSubjectItem postSubjectItem = this.mPostDetailBean;
            if (Intrinsics.c(userId, (postSubjectItem == null || (user2 = postSubjectItem.getUser()) == null) ? null : user2.getUserId())) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        boolean z11 = z10;
        ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
        PostType postType = PostType.POST_TYPE;
        PostSubjectItem postSubjectItem2 = this.mPostDetailBean;
        String postId = postSubjectItem2 != null ? postSubjectItem2.getPostId() : null;
        PostSubjectItem postSubjectItem3 = this.mPostDetailBean;
        String userId2 = (postSubjectItem3 == null || (user = postSubjectItem3.getUser()) == null) ? null : user.getUserId();
        String value = ReportType.POST.getValue();
        PostSubjectItem postSubjectItem4 = this.mPostDetailBean;
        ShareDialogFragment shareDialogFragmentA = companion.a(postType, postId, userId2, value, (3328 & 16) != 0 ? "" : postSubjectItem4 != null ? postSubjectItem4.getTitle() : null, (3328 & 32) != 0 ? "" : "", (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : z11, (3328 & 256) != 0 ? false : false, "postdetail", (3328 & 1024) != 0 ? "" : this.tranOps, (3328 & 2048) != 0 ? "" : null);
        shareDialogFragmentA.G0(new b());
        shareDialogFragmentA.show(getChildFragmentManager(), "share");
        com.transsion.postdetail.helper.a.B(com.transsion.postdetail.helper.a.f48866a, this.mPostDetailBean, getPageName(), null, 4, null);
    }

    private final ILoginApi getMLoginApi() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PostDetailViewModel getViewModel() {
        return (PostDetailViewModel) this.viewModel.getValue();
    }

    private final void initPlayer() {
        com.transsion.ninegridview.a aVar = new com.transsion.ninegridview.a();
        aVar.h();
        aVar.i();
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        aVar.j(contextRequireContext);
        qn.a aVarG = aVar.g();
        if (aVarG != null) {
            aVarG.a();
        }
        qn.a aVarG2 = aVar.g();
        if (aVarG2 != null) {
            PostSubjectItem postSubjectItem = this.mPostDetailBean;
            so.p mViewBinding = getMViewBinding();
            aVarG2.s(postSubjectItem, mViewBinding != null ? mViewBinding.f75663r : null, 0);
        }
        qn.a aVarG3 = aVar.g();
        if (aVarG3 != null) {
            aVarG3.y(true);
        }
        this.mGifPlayerManager = aVar;
    }

    private final void loadData() {
        String subjectId;
        PostSubjectItem postSubjectItem = this.mPostDetailBean;
        if (postSubjectItem == null) {
            showLoadingView();
            PostDetailViewModel viewModel = getViewModel();
            String str = this.postId;
            viewModel.x(str != null ? str : "");
            return;
        }
        if (postSubjectItem != null) {
            postSubjectItem.setTran_ops(this.tranOps);
        }
        updatePostDetail();
        Subject subject = postSubjectItem.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null || subjectId.length() != 0) {
            return;
        }
        PostDetailViewModel viewModel2 = getViewModel();
        String str2 = this.postId;
        viewModel2.x(str2 != null ? str2 : "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi mLoginApi_delegate$lambda$0() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    private final void observeLike() {
        Function1 function1 = new Function1() { // from class: com.transsion.postdetail.ui.fragment.a2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PostDetailCommonFragment.N0(this.f49648a, (LikeEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LikeEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    private final void setPTParams(PostSubjectItem item) {
        HashMap mapG;
        HashMap mapG2;
        hj.b logViewConfig;
        HashMap mapG3;
        String mediaType;
        hj.b logViewConfig2;
        HashMap mapG4;
        hj.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null) {
            logViewConfig3.k(true);
        }
        hj.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null) {
            logViewConfig4.n(item.getRec_ops());
        }
        String str = "";
        if (!TextUtils.isEmpty(item.getPostId()) && (logViewConfig2 = getLogViewConfig()) != null && (mapG4 = logViewConfig2.g()) != null) {
            String postId = item.getPostId();
            if (postId == null) {
                postId = "";
            }
            mapG4.put("post_id", postId);
        }
        Media media = item.getMedia();
        if (!TextUtils.isEmpty(media != null ? media.getMediaType() : null) && (logViewConfig = getLogViewConfig()) != null && (mapG3 = logViewConfig.g()) != null) {
            Media media2 = item.getMedia();
            if (media2 != null && (mediaType = media2.getMediaType()) != null) {
                str = mediaType;
            }
            mapG3.put("post_media_type", str);
        }
        hj.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG2 = logViewConfig5.g()) != null) {
            Subject subject = item.getSubject();
            mapG2.put("subject_id", subject != null ? subject.getSubjectId() : null);
        }
        hj.b logViewConfig6 = getLogViewConfig();
        if (logViewConfig6 == null || (mapG = logViewConfig6.g()) == null) {
            return;
        }
        Subject subject2 = item.getSubject();
        mapG.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
    }

    private final void showCommentsDialog() {
        ImmVideoCommentDialog immVideoCommentDialogB = ImmVideoCommentDialog.Companion.b(ImmVideoCommentDialog.INSTANCE, this.mPostDetailBean, null, null, null, 14, null);
        immVideoCommentDialogB.A0(new d());
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        immVideoCommentDialogB.show(childFragmentManager, "PostDetailCommentsFragment.TAG_POST_DETAIL_COMMENTS_FRAGMENT");
    }

    private final void updatePostDetail() {
        Subject subject;
        String avatar;
        PostSubjectItem postSubjectItem = this.mPostDetailBean;
        if (postSubjectItem != null) {
            so.p mViewBinding = getMViewBinding();
            Boolean hasResource = null;
            if (mViewBinding != null) {
                AppCompatTextView appCompatTextView = mViewBinding.A;
                User user = postSubjectItem.getUser();
                appCompatTextView.setText(user != null ? user.getNickname() : null);
                ShapeableImageView shapeableImageView = mViewBinding.f75659n;
                int iA = com.blankj.utilcode.util.a0.a(28.0f);
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                User user2 = postSubjectItem.getUser();
                if (user2 == null || (avatar = user2.getAvatar()) == null) {
                    avatar = "";
                }
                ej.f.b bVarC = bVarM.g(avatar).m(iA).c(iA);
                Intrinsics.e(shapeableImageView);
                bVarC.d(shapeableImageView);
                if (postSubjectItem.getGroup() != null) {
                    AppCompatTextView appCompatTextView2 = mViewBinding.f75671z;
                    Group group = postSubjectItem.getGroup();
                    appCompatTextView2.setText(group != null ? group.getName() : null);
                    AppCompatTextView tvSubject = mViewBinding.f75671z;
                    Intrinsics.g(tvSubject, "tvSubject");
                    jg.c.k(tvSubject);
                    mViewBinding.f75671z.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.k2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            PostDetailCommonFragment.b1(this.f49743a, view);
                        }
                    });
                } else {
                    AppCompatTextView tvSubject2 = mViewBinding.f75671z;
                    Intrinsics.g(tvSubject2, "tvSubject");
                    jg.c.g(tvSubject2);
                }
                AppCompatTextView appCompatTextView3 = mViewBinding.f75669x;
                if (postSubjectItem.getCreatedAt() == null) {
                    Intrinsics.e(appCompatTextView3);
                    jg.c.g(appCompatTextView3);
                } else {
                    Intrinsics.e(appCompatTextView3);
                    jg.c.k(appCompatTextView3);
                    String createdAt = postSubjectItem.getCreatedAt();
                    appCompatTextView3.setText(com.transsion.postdetail.util.n.a(createdAt != null ? Long.parseLong(createdAt) : 0L));
                }
                mViewBinding.f75665t.showData(postSubjectItem, getPageName(), new Function0() { // from class: com.transsion.postdetail.ui.fragment.l2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PostDetailCommonFragment.c1(this.f49750a);
                    }
                });
            }
            Y0(postSubjectItem.getSubjectRate());
            T0(postSubjectItem.getMedia());
            setPTParams(postSubjectItem);
            String title = postSubjectItem.getTitle();
            String content = postSubjectItem.getContent();
            Link link = postSubjectItem.getLink();
            V0(title, content, link != null ? link.getUrl() : null);
            F0();
            PostSubjectItem postSubjectItem2 = this.mPostDetailBean;
            if (postSubjectItem2 != null && (subject = postSubjectItem2.getSubject()) != null) {
                hasResource = subject.getHasResource();
            }
            a1(hasResource);
            O0();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: E0, reason: merged with bridge method [inline-methods] */
    public so.p getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        so.p pVarC = so.p.c(inflater);
        Intrinsics.g(pVarC, "inflate(...)");
        return pVarC;
    }

    public abstract void F0();

    public abstract void G0();

    public final PostSubjectItem getMPostDetailBean() {
        return this.mPostDetailBean;
    }

    public abstract String getPageName();

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    public abstract void initAudioListener();

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        AppCompatImageView appCompatImageView;
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView = mViewBinding.f75660o) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.g2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PostDetailCommonFragment.H0(this.f49711a, view);
                }
            });
        }
        com.transsion.baseui.util.o oVar = com.transsion.baseui.util.o.f43532a;
        so.p mViewBinding2 = getMViewBinding();
        ShapeableImageView shapeableImageView = mViewBinding2 != null ? mViewBinding2.f75659n : null;
        so.p mViewBinding3 = getMViewBinding();
        oVar.a(new View[]{shapeableImageView, mViewBinding3 != null ? mViewBinding3.A : null}, new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.h2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PostDetailCommonFragment.I0(this.f49718a, view);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        Z0();
        G0();
        initAudioListener();
        loadData();
        C0();
        L0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        PostDetailViewModel viewModel = getViewModel();
        viewModel.A().j(this, new c(new Function1() { // from class: com.transsion.postdetail.ui.fragment.m2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PostDetailCommonFragment.J0(this.f49758a, (PostSubjectItem) obj);
            }
        }));
        viewModel.t().j(this, new c(new Function1() { // from class: com.transsion.postdetail.ui.fragment.n2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PostDetailCommonFragment.K0(this.f49763a, (String) obj);
            }
        }));
        observeLike();
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
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.transsion.ninegridview.a aVar = this.mGifPlayerManager;
        if (aVar != null) {
            aVar.f();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.transsion.ninegridview.a aVar = this.mGifPlayerManager;
        if (aVar != null) {
            aVar.k();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.transsion.ninegridview.a aVar = this.mGifPlayerManager;
        if (aVar != null) {
            aVar.l();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        Serializable serializable;
        super.receiveArguments();
        Bundle arguments = getArguments();
        PostSubjectItem postSubjectItem = null;
        this.postId = arguments != null ? arguments.getString("id") : null;
        Bundle arguments2 = getArguments();
        this.fromComment = arguments2 != null ? arguments2.getBoolean("from_comment") : false;
        Bundle arguments3 = getArguments();
        this.tranOps = arguments3 != null ? arguments3.getString("rec_ops") : null;
        Bundle arguments4 = getArguments();
        if (arguments4 != null && (serializable = arguments4.getSerializable("item_object")) != null) {
            postSubjectItem = (PostSubjectItem) serializable;
        }
        this.mPostDetailBean = postSubjectItem;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
