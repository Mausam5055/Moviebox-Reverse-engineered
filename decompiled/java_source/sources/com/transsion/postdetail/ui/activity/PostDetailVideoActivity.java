package com.transsion.postdetail.ui.activity;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.transsion.baseui.R$color;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.ui.fragment.PostAudioDetailFragment;
import com.transsion.postdetail.ui.fragment.PostImageTextDetailFragment;
import com.transsion.postdetail.ui.fragment.VideoFragment;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import com.transsion.room.api.IFloatingApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 V2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001WB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u001b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0019\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\"\u0010\u0015J\u000f\u0010#\u001a\u00020\u0013H\u0016¢\u0006\u0004\b#\u0010\u0015J\u000f\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0013H\u0016¢\u0006\u0004\b'\u0010\u0015J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\bH\u0016¢\u0006\u0004\b)\u0010\u001dR\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010-\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b,\u0010+R\u0018\u0010/\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b.\u0010+R\u0016\u00102\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00104\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b3\u0010+R\u0016\u00107\u001a\u00020$8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u00109\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b8\u00101R\u0018\u0010;\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b:\u0010+R*\u0010A\u001a\u0016\u0012\u0004\u0012\u00020=\u0018\u00010<j\n\u0012\u0004\u0012\u00020=\u0018\u0001`>8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010C\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bB\u00101R\u0016\u0010E\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bD\u00101R\u0018\u0010H\u001a\u0004\u0018\u00010=8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010J\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bI\u00101R\u001b\u0010P\u001a\u00020K8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0018\u0010U\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010R¨\u0006X"}, d2 = {"Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lso/d;", "<init>", "()V", "", "J0", "K0", "", "mediaType", "Landroidx/fragment/app/Fragment;", "N0", "(Ljava/lang/String;)Landroidx/fragment/app/Fragment;", "L0", "M0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "D0", "()Z", "isMonitorNetworkState", "onBackPressed", "onResume", "onStop", "G0", "()Lso/d;", "i0", "()Ljava/lang/String;", "o0", "p0", "n0", "s0", "isTranslucent", "isStatusDark", "", "statusColor", "()I", "r0", "retryLoadData", "getPageName", "i", "Ljava/lang/String;", "j", "postId", CampaignEx.JSON_KEY_AD_K, "itemType", "l", "Z", "fromComment", "m", "ops", "n", "I", "tabId", "o", "videoLoadMore", TtmlNode.TAG_P, "pageFrom", "Ljava/util/ArrayList;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "Lkotlin/collections/ArrayList;", CampaignEx.JSON_KEY_AD_Q, "Ljava/util/ArrayList;", "downloadedShortsList", CampaignEx.JSON_KEY_AD_R, "prioritizeDownloaded", "s", "isFromDownloaded", "t", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "itemObject", TmcStartParams.KEY_URL_SHORT, "isBuiltIn", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "v", "Lkotlin/Lazy;", "H0", "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "viewModel", "w", "Landroidx/fragment/app/Fragment;", "mFragment", "x", "target", "y", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PostDetailVideoActivity extends BaseNewActivity<so.d> {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public String mediaType;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public String postId;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public String itemType;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public boolean fromComment;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    public String ops;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    public int tabId;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public boolean videoLoadMore = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public String pageFrom;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    public ArrayList downloadedShortsList;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    public boolean prioritizeDownloaded;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    public boolean isFromDownloaded;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    public PostSubjectItem itemObject;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    public boolean isBuiltIn;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private Fragment mFragment;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private Fragment target;

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49366a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49366a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49366a;
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
            this.f49366a.invoke(obj);
        }
    }

    public PostDetailVideoActivity() {
        final Function0 function0 = null;
        this.viewModel = new ViewModelLazy(Reflection.b(PostDetailViewModel.class), new Function0<x0>() { // from class: com.transsion.postdetail.ui.activity.PostDetailVideoActivity$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() { // from class: com.transsion.postdetail.ui.activity.PostDetailVideoActivity$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<p1.a>() { // from class: com.transsion.postdetail.ui.activity.PostDetailVideoActivity$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final p1.a invoke() {
                p1.a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (p1.a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    private final PostDetailViewModel H0() {
        return (PostDetailViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(PostDetailVideoActivity postDetailVideoActivity, PostSubjectItem postSubjectItem) {
        if (postSubjectItem == null) {
            postDetailVideoActivity.y0();
        } else {
            Media media = postSubjectItem.getMedia();
            String mediaType = media != null ? media.getMediaType() : null;
            postDetailVideoActivity.mediaType = mediaType;
            if (Intrinsics.c(mediaType, MediaType.VIDEO.getValue())) {
                ImmVideoHelper.f48840h.a().s(postSubjectItem);
            }
            postDetailVideoActivity.itemObject = postSubjectItem;
            postDetailVideoActivity.K0();
        }
        return Unit.f67061a;
    }

    private final void J0() {
        Media media;
        Media media2;
        z0();
        if (!this.isBuiltIn && !this.isFromDownloaded && !nh.m.f70474a.e()) {
            B0();
            return;
        }
        if (this.isFromDownloaded && TextUtils.isEmpty(this.mediaType)) {
            PostSubjectItem postSubjectItem = this.itemObject;
            String mediaType = null;
            if (TextUtils.isEmpty((postSubjectItem == null || (media2 = postSubjectItem.getMedia()) == null) ? null : media2.getMediaType())) {
                mediaType = MediaType.VIDEO.getValue();
            } else {
                PostSubjectItem postSubjectItem2 = this.itemObject;
                if (postSubjectItem2 != null && (media = postSubjectItem2.getMedia()) != null) {
                    mediaType = media.getMediaType();
                }
            }
            this.mediaType = mediaType;
        }
        if (this.postId == null || !TextUtils.isEmpty(this.mediaType)) {
            K0();
            return;
        }
        PostDetailViewModel postDetailViewModelH0 = H0();
        String str = this.postId;
        if (str == null) {
            str = "";
        }
        postDetailViewModelH0.x(str);
    }

    private final void K0() {
        x0();
        M0();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        Fragment fragmentN0 = N0(this.mediaType);
        if (fragmentN0 != null) {
            wVarP.s(R$id.container, fragmentN0);
        } else {
            fragmentN0 = null;
        }
        this.target = fragmentN0;
        wVarP.j();
    }

    private final void L0() {
        IFloatingApi iFloatingApi;
        if (!TextUtils.equals(MediaType.VIDEO.getValue(), this.mediaType) || (iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0])) == null) {
            return;
        }
        iFloatingApi.e();
    }

    private final void M0() {
        IFloatingApi iFloatingApi;
        if (!TextUtils.equals(MediaType.VIDEO.getValue(), this.mediaType) || (iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0])) == null) {
            return;
        }
        iFloatingApi.c();
    }

    private final Fragment N0(String mediaType) {
        Fragment fragmentA;
        if (Intrinsics.c(mediaType, MediaType.AUDIO.getValue())) {
            setRequestedOrientation(1);
            fragmentA = PostAudioDetailFragment.INSTANCE.a(this.postId, this.fromComment, this.ops, this.itemObject);
        } else if (Intrinsics.c(mediaType, MediaType.VIDEO.getValue())) {
            PostSubjectItem postSubjectItem = this.itemObject;
            if (postSubjectItem != null) {
                ImmVideoHelper.f48840h.a().s(postSubjectItem);
            }
            fragmentA = VideoFragment.INSTANCE.a(this.postId, this.itemType, Integer.valueOf(this.tabId), this.videoLoadMore, (704 & 16) != 0 ? true : this.fromComment, (704 & 32) != 0 ? "" : this.ops, (704 & 64) != 0 ? false : false, (704 & 128) != 0 ? "" : null, (704 & 256) != 0 ? null : this.pageFrom, (704 & 512) != 0 ? false : false, (704 & 1024) != 0 ? null : this.downloadedShortsList, (704 & 2048) != 0 ? false : this.prioritizeDownloaded, (704 & 4096) != 0 ? false : this.isFromDownloaded);
        } else {
            setRequestedOrientation(1);
            fragmentA = PostImageTextDetailFragment.INSTANCE.a(this.postId, this.fromComment, this.ops, this.itemObject, this.pageFrom);
        }
        this.mFragment = fragmentA;
        return fragmentA;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean D0() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public so.d getViewBinding() {
        so.d dVarC = so.d.c(getLayoutInflater());
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "postdetail";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        return "";
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public boolean isMonitorNetworkState() {
        return (this.isBuiltIn || this.isFromDownloaded) ? false : true;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
        v0();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Fragment fragment = this.mFragment;
        if (fragment instanceof PostAudioDetailFragment) {
            Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.PostAudioDetailFragment");
            ((PostAudioDetailFragment) fragment).p1();
        }
        super.onBackPressed();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        com.transsion.baselib.report.l.f43359a.x(3, this);
        if ((this.isBuiltIn || this.isFromDownloaded) && !nh.m.f70474a.e()) {
            s0();
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        M0();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        L0();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
        H0().A().j(this, new b(new Function1() { // from class: com.transsion.postdetail.ui.activity.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PostDetailVideoActivity.I0(this.f49378a, (PostSubjectItem) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean r0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
        if (this.target == null) {
            J0();
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
        J0();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public int statusColor() {
        return R$color.base_color_black;
    }
}
