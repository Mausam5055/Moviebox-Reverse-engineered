package com.transsion.audio.fragment;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.audio.adapter.SubjectListAdapter;
import com.transsion.audio.viewmodel.HistoryListManager;
import com.transsion.audio.viewmodel.SubjectListViewModel;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.player.orplayer.PlayError;
import com.transsion.room.api.IAudioApi;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.bean.DownloadListBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 q2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00019B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J)\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0016\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J!\u0010&\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b&\u0010'J!\u0010(\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b(\u0010'J\u000f\u0010)\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010\u0005J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\u0005J\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\u0005J\u0019\u0010.\u001a\u00020\u00062\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b.\u0010/J!\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u0002002\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b2\u00103J!\u00106\u001a\u00020\u00062\u0006\u00105\u001a\u0002042\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b6\u00107J\u0019\u00108\u001a\u00020\u00062\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b8\u0010/R\u0018\u0010;\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010:R\u0018\u0010B\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010:R\u0018\u0010D\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010:R$\u0010L\u001a\u0004\u0018\u00010E8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\"\u0010S\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010NR\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010NR\u0016\u0010X\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010NR\u0016\u0010Z\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010NR\u001b\u0010`\u001a\u00020[8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_R\u001b\u0010e\u001a\u00020a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bb\u0010]\u001a\u0004\bc\u0010dR\u001d\u0010j\u001a\u0004\u0018\u00010f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bg\u0010]\u001a\u0004\bh\u0010iR\u0018\u0010l\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010:R\u0016\u0010p\u001a\u00020m8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010o¨\u0006r"}, d2 = {"Lcom/transsion/audio/fragment/SubjectListFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lbj/c;", "Lcom/transsion/player/orplayer/f;", "<init>", "()V", "", "loadMore", "u0", "", "", "page", "perPage", "E0", "(ZII)V", "Lcom/transsnet/downloader/bean/DownloadListBean;", "bean", "I0", "(Lcom/transsnet/downloader/bean/DownloadListBean;)V", "", "subjectId", "subjectType", "y0", "(Ljava/lang/String;I)V", "Lcom/transsion/moviedetailapi/DownloadItem;", "download", "Lcom/transsion/baselib/db/audio/AudioBean;", WebConstants.FIELD_ITEM, "H0", "(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsion/baselib/db/audio/AudioBean;)V", "Landroid/view/LayoutInflater;", "inflater", "x0", "(Landroid/view/LayoutInflater;)Lbj/c;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "onResume", "onPause", "Lao/e;", "mediaSource", "onPrepare", "(Lao/e;)V", "", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLao/e;)V", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V", "onCompletion", "a", "Ljava/lang/String;", "subjectCover", "Lcom/transsion/audio/adapter/SubjectListAdapter;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/audio/adapter/SubjectListAdapter;", "mAdapter", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "groupId", "e", "subjectTitle", "Lcom/transsion/audio/fragment/AudioBottomSheetFragment;", "f", "Lcom/transsion/audio/fragment/AudioBottomSheetFragment;", "getParent", "()Lcom/transsion/audio/fragment/AudioBottomSheetFragment;", "setParent", "(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)V", "parent", "g", "I", "getTotalEpisode", "()I", "setTotalEpisode", "(I)V", "totalEpisode", "h", "currentPage", "i", "j", "currentPageUp", CampaignEx.JSON_KEY_AD_K, "currentPageDown", "Lcom/transsion/audio/viewmodel/SubjectListViewModel;", "l", "Lkotlin/Lazy;", "w0", "()Lcom/transsion/audio/viewmodel/SubjectListViewModel;", "subjectListViewModel", "Ljj/a;", "m", "v0", "()Ljj/a;", "audioDao", "Lcom/transsion/room/api/IAudioApi;", "n", "getMAudioApi", "()Lcom/transsion/room/api/IAudioApi;", "mAudioApi", "o", "previousUrl", "Ljava/util/concurrent/atomic/AtomicBoolean;", TtmlNode.TAG_P, "Ljava/util/concurrent/atomic/AtomicBoolean;", "mIsStop", CampaignEx.JSON_KEY_AD_Q, "Audio_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectListFragment extends BaseFragment<bj.c> implements com.transsion.player.orplayer.f {

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f42860r = "SubjectListFragment";

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private SubjectListAdapter mAdapter;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private AudioBottomSheetFragment parent;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int totalEpisode;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final Lazy subjectListViewModel;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy audioDao;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final Lazy mAudioApi;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String previousUrl;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private AtomicBoolean mIsStop;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String subjectCover = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String subjectId = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String groupId = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String subjectTitle = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int currentPage = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int perPage = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private int currentPageUp = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int currentPageDown = 1;

    /* JADX INFO: renamed from: com.transsion.audio.fragment.SubjectListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return SubjectListFragment.f42860r;
        }

        public final SubjectListFragment b(String str) {
            SubjectListFragment subjectListFragment = new SubjectListFragment();
            Bundle bundle = new Bundle();
            bundle.putString("subjectId", str);
            subjectListFragment.setArguments(bundle);
            return subjectListFragment;
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f42877a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f42877a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f42877a;
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
            this.f42877a.invoke(obj);
        }
    }

    /* JADX INFO: renamed from: com.transsion.audio.fragment.SubjectListFragment$onCompletion$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.fragment.SubjectListFragment$onCompletion$1", f = "SubjectListFragment.kt", l = {428}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ ao.e $mediaSource;
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final /* synthetic */ SubjectListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ao.e eVar, SubjectListFragment subjectListFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$mediaSource = eVar;
            this.this$0 = subjectListFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$mediaSource, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x005a  */
        /* JADX WARN: Code duplicated, block: B:21:0x0062  */
        /* JADX WARN: Code duplicated, block: B:24:0x006e  */
        /* JADX WARN: Code duplicated, block: B:30:0x008c  */
        /* JADX WARN: Code duplicated, block: B:32:0x008f  */
        /* JADX WARN: Code duplicated, block: B:33:0x0094  */
        /* JADX WARN: Code duplicated, block: B:36:0x009b  */
        /* JADX WARN: Code duplicated, block: B:38:0x009e  */
        /* JADX WARN: Code duplicated, block: B:41:0x00ae  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0086 -> B:29:0x0089). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:33:0x0094
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
                int r1 = r10.label
                r2 = 1
                r3 = 0
                if (r1 == 0) goto L2c
                if (r1 != r2) goto L24
                int r1 = r10.I$1
                int r4 = r10.I$0
                java.lang.Object r5 = r10.L$3
                com.transsion.moviedetailapi.DownloadItem r5 = (com.transsion.moviedetailapi.DownloadItem) r5
                java.lang.Object r6 = r10.L$2
                java.util.Iterator r6 = (java.util.Iterator) r6
                java.lang.Object r7 = r10.L$1
                com.transsion.audio.fragment.SubjectListFragment r7 = (com.transsion.audio.fragment.SubjectListFragment) r7
                java.lang.Object r8 = r10.L$0
                java.lang.String r8 = (java.lang.String) r8
                kotlin.ResultKt.b(r11)
                goto L89
            L24:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L2c:
                kotlin.ResultKt.b(r11)
                ao.e r11 = r10.$mediaSource
                if (r11 == 0) goto L38
                java.lang.String r11 = r11.k()
                goto L39
            L38:
                r11 = r3
            L39:
                com.transsion.audio.fragment.SubjectListFragment r1 = r10.this$0
                com.transsion.audio.adapter.SubjectListAdapter r1 = com.transsion.audio.fragment.SubjectListFragment.k0(r1)
                if (r1 == 0) goto Lb8
                java.util.List r1 = r1.getData()
                if (r1 == 0) goto Lb8
                java.lang.Iterable r1 = (java.lang.Iterable) r1
                com.transsion.audio.fragment.SubjectListFragment r4 = r10.this$0
                java.util.Iterator r1 = r1.iterator()
                r5 = 0
                r8 = r11
                r6 = r1
                r7 = r4
                r1 = r5
            L54:
                boolean r11 = r6.hasNext()
                if (r11 == 0) goto Lb6
                java.lang.Object r11 = r6.next()
                int r4 = r1 + 1
                if (r1 >= 0) goto L65
                kotlin.collections.CollectionsKt.u()
            L65:
                r5 = r11
                com.transsion.moviedetailapi.DownloadItem r5 = (com.transsion.moviedetailapi.DownloadItem) r5
                java.lang.String r11 = r5.getUrl()
                if (r11 == 0) goto L8c
                jj.a r9 = com.transsion.audio.fragment.SubjectListFragment.i0(r7)
                if (r9 == 0) goto L8c
                r10.L$0 = r8
                r10.L$1 = r7
                r10.L$2 = r6
                r10.L$3 = r5
                r10.I$0 = r4
                r10.I$1 = r1
                r10.label = r2
                java.lang.Object r11 = r9.c(r11, r10)
                if (r11 != r0) goto L89
                return r0
            L89:
                com.transsion.baselib.db.audio.AudioBean r11 = (com.transsion.baselib.db.audio.AudioBean) r11
                goto L8d
            L8c:
                r11 = r3
            L8d:
                if (r11 == 0) goto L94
                java.lang.String r9 = r11.getAudioUrl()
                goto L95
            L94:
                r9 = r3
            L95:
                boolean r9 = android.text.TextUtils.equals(r8, r9)
                if (r9 == 0) goto Lb4
                r9 = 6
                if (r11 == 0) goto La1
                r11.setStatus(r9)
            La1:
                java.lang.Integer r11 = kotlin.coroutines.jvm.internal.Boxing.d(r9)
                r5.setStatus(r11)
                com.transsion.audio.adapter.SubjectListAdapter r11 = com.transsion.audio.fragment.SubjectListFragment.k0(r7)
                if (r11 == 0) goto Lb1
                r11.notifyItemChanged(r1, r5)
            Lb1:
                com.transsion.audio.fragment.SubjectListFragment.s0(r7, r8)
            Lb4:
                r1 = r4
                goto L54
            Lb6:
                kotlin.Unit r3 = kotlin.Unit.f67061a
            Lb8:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.audio.fragment.SubjectListFragment.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.transsion.audio.fragment.SubjectListFragment$onPlayError$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.fragment.SubjectListFragment$onPlayError$1", f = "SubjectListFragment.kt", l = {TTAdConstant.IMAGE_URL_CODE}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class C10651 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C10651(Continuation<? super C10651> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SubjectListFragment.this.new C10651(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10651) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x004b  */
        /* JADX WARN: Code duplicated, block: B:17:0x0053  */
        /* JADX WARN: Code duplicated, block: B:20:0x005f  */
        /* JADX WARN: Code duplicated, block: B:26:0x007b  */
        /* JADX WARN: Code duplicated, block: B:28:0x007e  */
        /* JADX WARN: Code duplicated, block: B:31:0x0087  */
        /* JADX WARN: Code duplicated, block: B:34:0x0091  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:25:0x0078). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:20:0x005f
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
                int r1 = r10.label
                r2 = 0
                r3 = 1
                if (r1 == 0) goto L28
                if (r1 != r3) goto L20
                int r1 = r10.I$1
                int r4 = r10.I$0
                java.lang.Object r5 = r10.L$2
                com.transsion.moviedetailapi.DownloadItem r5 = (com.transsion.moviedetailapi.DownloadItem) r5
                java.lang.Object r6 = r10.L$1
                java.util.Iterator r6 = (java.util.Iterator) r6
                java.lang.Object r7 = r10.L$0
                com.transsion.audio.fragment.SubjectListFragment r7 = (com.transsion.audio.fragment.SubjectListFragment) r7
                kotlin.ResultKt.b(r11)
                goto L78
            L20:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L28:
                kotlin.ResultKt.b(r11)
                com.transsion.audio.fragment.SubjectListFragment r11 = com.transsion.audio.fragment.SubjectListFragment.this
                com.transsion.audio.adapter.SubjectListAdapter r11 = com.transsion.audio.fragment.SubjectListFragment.k0(r11)
                if (r11 == 0) goto L97
                java.util.List r11 = r11.getData()
                if (r11 == 0) goto L97
                java.lang.Iterable r11 = (java.lang.Iterable) r11
                com.transsion.audio.fragment.SubjectListFragment r1 = com.transsion.audio.fragment.SubjectListFragment.this
                java.util.Iterator r11 = r11.iterator()
                r4 = 0
                r6 = r11
                r7 = r1
            L44:
                r1 = r4
                boolean r11 = r6.hasNext()
                if (r11 == 0) goto L95
                java.lang.Object r11 = r6.next()
                int r4 = r1 + 1
                if (r1 >= 0) goto L56
                kotlin.collections.CollectionsKt.u()
            L56:
                r5 = r11
                com.transsion.moviedetailapi.DownloadItem r5 = (com.transsion.moviedetailapi.DownloadItem) r5
                java.lang.String r11 = r5.getUrl()
                if (r11 == 0) goto L7b
                jj.a r8 = com.transsion.audio.fragment.SubjectListFragment.i0(r7)
                if (r8 == 0) goto L7b
                r10.L$0 = r7
                r10.L$1 = r6
                r10.L$2 = r5
                r10.I$0 = r4
                r10.I$1 = r1
                r10.label = r3
                java.lang.Object r11 = r8.c(r11, r10)
                if (r11 != r0) goto L78
                return r0
            L78:
                com.transsion.baselib.db.audio.AudioBean r11 = (com.transsion.baselib.db.audio.AudioBean) r11
                goto L7c
            L7b:
                r11 = r2
            L7c:
                if (r11 == 0) goto L44
                int r8 = r11.getStatus()
                r9 = 3
                if (r8 != r9) goto L44
                if (r11 == 0) goto L8b
                r8 = 7
                r11.setStatus(r8)
            L8b:
                com.transsion.audio.adapter.SubjectListAdapter r11 = com.transsion.audio.fragment.SubjectListFragment.k0(r7)
                if (r11 == 0) goto L44
                r11.notifyItemChanged(r1, r5)
                goto L44
            L95:
                kotlin.Unit r2 = kotlin.Unit.f67061a
            L97:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.audio.fragment.SubjectListFragment.C10651.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.transsion.audio.fragment.SubjectListFragment$onPrepare$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.fragment.SubjectListFragment$onPrepare$1", f = "SubjectListFragment.kt", l = {356}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class C10661 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ ao.e $mediaSource;
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final /* synthetic */ SubjectListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10661(ao.e eVar, SubjectListFragment subjectListFragment, Continuation<? super C10661> continuation) {
            super(2, continuation);
            this.$mediaSource = eVar;
            this.this$0 = subjectListFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10661(this.$mediaSource, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10661) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x005e  */
        /* JADX WARN: Code duplicated, block: B:21:0x0066  */
        /* JADX WARN: Code duplicated, block: B:24:0x0071  */
        /* JADX WARN: Code duplicated, block: B:31:0x0099  */
        /* JADX WARN: Code duplicated, block: B:34:0x00a8  */
        /* JADX WARN: Code duplicated, block: B:35:0x00ad  */
        /* JADX WARN: Code duplicated, block: B:38:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:39:0x00bd  */
        /* JADX WARN: Code duplicated, block: B:42:0x00e8  */
        /* JADX WARN: Code duplicated, block: B:43:0x00ed  */
        /* JADX WARN: Code duplicated, block: B:46:0x00f4  */
        /* JADX WARN: Code duplicated, block: B:48:0x00f7  */
        /* JADX WARN: Code duplicated, block: B:51:0x0107  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x008c -> B:30:0x0091). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:38:0x00b8
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r19) {
            /*
                Method dump skipped, instruction units count: 278
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.audio.fragment.SubjectListFragment.C10661.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.transsion.audio.fragment.SubjectListFragment$onProgress$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.fragment.SubjectListFragment$onProgress$1", f = "SubjectListFragment.kt", l = {378}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class C10671 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ ao.e $mediaSource;
        final /* synthetic */ long $progress;
        int I$0;
        int I$1;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final /* synthetic */ SubjectListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10671(ao.e eVar, SubjectListFragment subjectListFragment, long j11, Continuation<? super C10671> continuation) {
            super(2, continuation);
            this.$mediaSource = eVar;
            this.this$0 = subjectListFragment;
            this.$progress = j11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10671(this.$mediaSource, this.this$0, this.$progress, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10671) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0063  */
        /* JADX WARN: Code duplicated, block: B:21:0x006b  */
        /* JADX WARN: Code duplicated, block: B:24:0x0076  */
        /* JADX WARN: Code duplicated, block: B:31:0x00a0  */
        /* JADX WARN: Code duplicated, block: B:34:0x00ab  */
        /* JADX WARN: Code duplicated, block: B:37:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:39:0x00be  */
        /* JADX WARN: Code duplicated, block: B:40:0x00c3  */
        /* JADX WARN: Code duplicated, block: B:43:0x00ca  */
        /* JADX WARN: Code duplicated, block: B:44:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:47:0x00f9  */
        /* JADX WARN: Code duplicated, block: B:49:0x00fc  */
        /* JADX WARN: Code duplicated, block: B:52:0x010c  */
        /* JADX WARN: Code duplicated, block: B:55:0x0114  */
        /* JADX WARN: Code duplicated, block: B:56:0x0119  */
        /* JADX WARN: Code duplicated, block: B:59:0x0120  */
        /* JADX WARN: Code duplicated, block: B:62:0x012c  */
        /* JADX WARN: Code duplicated, block: B:65:0x0136  */
        /* JADX WARN: Code duplicated, block: B:68:0x0146  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0093 -> B:30:0x0098). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:59:0x0120
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r23) {
            /*
                Method dump skipped, instruction units count: 336
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.audio.fragment.SubjectListFragment.C10671.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public SubjectListFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.audio.fragment.SubjectListFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.subjectListViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(SubjectListViewModel.class), new Function0<x0>() { // from class: com.transsion.audio.fragment.SubjectListFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.audio.fragment.SubjectListFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.audioDao = LazyKt.b(new Function0() { // from class: com.transsion.audio.fragment.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SubjectListFragment.t0();
            }
        });
        this.mAudioApi = LazyKt.b(new Function0() { // from class: com.transsion.audio.fragment.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SubjectListFragment.G0();
            }
        });
        this.previousUrl = "";
        this.mIsStop = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(SubjectListFragment subjectListFragment, DownloadListBean downloadListBean) {
        subjectListFragment.I0(downloadListBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(SubjectListFragment subjectListFragment) {
        subjectListFragment.loadMore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i11);
        if (item instanceof DownloadItem) {
            DownloadItem downloadItem = (DownloadItem) item;
            if (TextUtils.isEmpty(downloadItem.getPostId())) {
                uh.b.f76753a.e("This page is unavailable");
            } else {
                ak.k.p(TheRouter.c("/post/detail").K(WebConstants.PAGE_FROM, "audio_list").K("id", downloadItem.getPostId()).K("media_type", MediaType.AUDIO.getValue()).z("video_load_more", true));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(SubjectListFragment subjectListFragment) {
        subjectListFragment.u0();
    }

    private final void E0(boolean loadMore, int page, int perPage) {
        w0().g(loadMore, this.subjectId, (48 & 4) != 0 ? "1" : String.valueOf(page), (48 & 8) != 0 ? 8 : perPage, (48 & 16) != 0 ? 1 : 0, (48 & 32) != 0 ? 8 : 0, (48 & 64) != 0 ? 0 : 0);
    }

    static /* synthetic */ void F0(SubjectListFragment subjectListFragment, boolean z10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i12 = 8;
        }
        subjectListFragment.E0(z10, i11, i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi G0() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0(DownloadItem download, AudioBean item) {
        List<Object> data;
        SubjectListAdapter subjectListAdapter;
        SubjectListAdapter subjectListAdapter2 = this.mAdapter;
        if (subjectListAdapter2 != null && (data = subjectListAdapter2.getData()) != null) {
            int i11 = 0;
            for (Object obj : data) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                if (Intrinsics.c(download, (DownloadItem) obj) && (subjectListAdapter = this.mAdapter) != null) {
                    subjectListAdapter.notifyItemChanged(i11, download);
                }
                i11 = i12;
            }
        }
        Long readProcess = item.getReadProcess();
        long jLongValue = readProcess != null ? readProcess.longValue() : 0L;
        String url = download.getUrl();
        String url2 = download.getUrl();
        if (url2 == null) {
            url2 = "";
        }
        onProgress(jLongValue, new ao.e(url, url2, 0, null, null, 28, null));
    }

    private final void I0(final DownloadListBean bean) {
        String url;
        r6.f fVarH0;
        List<Object> listL;
        SwipeRefreshLayout swipeRefreshLayout;
        bj.c mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        RecyclerView recyclerView;
        SubjectListAdapter subjectListAdapter;
        r6.f fVarH1;
        r6.f fVarH2;
        SubjectListAdapter subjectListAdapter2;
        r6.f fVarH3;
        String nextPage;
        List<Object> data;
        AppCompatTextView appCompatTextView;
        LinearLayoutCompat linearLayoutCompat;
        Cover cover;
        if (bean == null || (cover = bean.getCover()) == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        bj.c mViewBinding2 = getMViewBinding();
        ShapeableImageView shapeableImageView = mViewBinding2 != null ? mViewBinding2.f16559c : null;
        Context context = getContext();
        if (context != null && !TextUtils.isEmpty(url) && shapeableImageView != null) {
            ej.f.f61882a.m(context).g(url).d(shapeableImageView);
        }
        bj.c mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (linearLayoutCompat = mViewBinding3.f16560d) != null) {
            linearLayoutCompat.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.audio.fragment.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubjectListFragment.J0(this.f42887a, bean, view);
                }
            });
        }
        bj.c mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatTextView = mViewBinding4.f16563g) != null) {
            appCompatTextView.setText(bean != null ? bean.getSubjectTitle() : null);
        }
        List<DownloadItem> items = bean != null ? bean.getItems() : null;
        if (items == null || items.isEmpty()) {
            SubjectListAdapter subjectListAdapter3 = this.mAdapter;
            if (subjectListAdapter3 == null || (fVarH0 = subjectListAdapter3.h0()) == null) {
                return;
            }
            r6.f.u(fVarH0, false, 1, null);
            return;
        }
        SubjectListAdapter subjectListAdapter4 = this.mAdapter;
        if (subjectListAdapter4 != null && (data = subjectListAdapter4.getData()) != null && data.isEmpty()) {
            SubjectListAdapter subjectListAdapter5 = this.mAdapter;
            if (subjectListAdapter5 != null) {
                subjectListAdapter5.n1(items);
                return;
            }
            return;
        }
        SubjectListAdapter subjectListAdapter6 = this.mAdapter;
        if (subjectListAdapter6 == null || (listL = subjectListAdapter6.getData()) == null) {
            listL = CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : items) {
            if (!listL.contains((DownloadItem) obj)) {
                arrayList.add(obj);
            }
        }
        if (bean.getLoadMore()) {
            SubjectListAdapter subjectListAdapter7 = this.mAdapter;
            if (subjectListAdapter7 != null) {
                subjectListAdapter7.q(arrayList);
            }
            Pager pager = bean.getPager();
            this.currentPageUp = (pager == null || (nextPage = pager.getNextPage()) == null) ? 1 : Integer.parseInt(nextPage);
            SubjectListAdapter subjectListAdapter8 = this.mAdapter;
            if (subjectListAdapter8 != null && (fVarH2 = subjectListAdapter8.h0()) != null && fVarH2.r() && (subjectListAdapter2 = this.mAdapter) != null && (fVarH3 = subjectListAdapter2.h0()) != null) {
                fVarH3.s();
            }
        } else {
            SubjectListAdapter subjectListAdapter9 = this.mAdapter;
            if (subjectListAdapter9 != null) {
                subjectListAdapter9.o(0, arrayList);
            }
            bj.c mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (recyclerView = mViewBinding5.f16561e) != null) {
                recyclerView.scrollToPosition(arrayList.size() - 1);
            }
            bj.c mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (swipeRefreshLayout = mViewBinding6.f16562f) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f16562f) != null) {
                swipeRefreshLayout2.setRefreshing(false);
            }
            this.currentPageDown--;
        }
        Pager pager2 = bean.getPager();
        if (!(pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) || (subjectListAdapter = this.mAdapter) == null || (fVarH1 = subjectListAdapter.h0()) == null) {
            return;
        }
        r6.f.u(fVarH1, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(SubjectListFragment subjectListFragment, DownloadListBean downloadListBean, View view) {
        subjectListFragment.y0(subjectListFragment.subjectId, downloadListBean != null ? downloadListBean.getSubjectType() : SubjectType.MOVIE.getValue());
    }

    private final IAudioApi getMAudioApi() {
        return (IAudioApi) this.mAudioApi.getValue();
    }

    private final void loadMore() {
        F0(this, true, this.currentPageUp, 0, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final jj.a t0() {
        Application applicationA = Utils.a();
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Intrinsics.e(applicationA);
        return companion.b(applicationA).o1();
    }

    private final void u0() {
        if (this.currentPage < 1) {
            return;
        }
        F0(this, false, this.currentPageDown, 0, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final jj.a v0() {
        return (jj.a) this.audioDao.getValue();
    }

    private final SubjectListViewModel w0() {
        return (SubjectListViewModel) this.subjectListViewModel.getValue();
    }

    private final void y0(String subjectId, int subjectType) {
        ak.k.p(TheRouter.c("/movie/detail").F("subject_type", subjectType).K("id", subjectId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z0(SubjectListFragment subjectListFragment, DownloadListBean downloadListBean) {
        SubjectListAdapter subjectListAdapter;
        r6.f fVarH0;
        bj.c mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout;
        if (downloadListBean != null) {
            Integer totalEpisode = downloadListBean.getTotalEpisode();
            subjectListFragment.totalEpisode = totalEpisode != null ? totalEpisode.intValue() : 0;
            Cover cover = downloadListBean.getCover();
            subjectListFragment.subjectCover = cover != null ? cover.getUrl() : null;
            subjectListFragment.groupId = downloadListBean.getGroupId();
            subjectListFragment.subjectTitle = downloadListBean.getSubjectTitle();
            subjectListFragment.I0(downloadListBean);
            Integer position = downloadListBean.getPosition();
            int iIntValue = position != null ? (position.intValue() / subjectListFragment.perPage) + 1 : 1;
            subjectListFragment.currentPage = iIntValue;
            subjectListFragment.currentPageDown = iIntValue - 1;
            subjectListFragment.currentPageUp = iIntValue + 1;
            if (iIntValue < 1 && (mViewBinding = subjectListFragment.getMViewBinding()) != null && (swipeRefreshLayout = mViewBinding.f16562f) != null) {
                swipeRefreshLayout.setEnabled(false);
            }
            Pager pager = downloadListBean.getPager();
            if ((pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.FALSE) : false) && (subjectListAdapter = subjectListFragment.mAdapter) != null && (fVarH0 = subjectListAdapter.h0()) != null) {
                r6.f.u(fVarH0, false, 1, null);
            }
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        HistoryListManager.f42961e.b().v().j(this, new b(new Function1() { // from class: com.transsion.audio.fragment.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubjectListFragment.z0(this.f42885a, (DownloadListBean) obj);
            }
        }));
        w0().f().j(this, new b(new Function1() { // from class: com.transsion.audio.fragment.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubjectListFragment.A0(this.f42886a, (DownloadListBean) obj);
            }
        }));
        Bundle arguments = getArguments();
        this.subjectId = arguments != null ? arguments.getString("subjectId") : null;
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout;
        RecyclerView recyclerView2;
        SwipeRefreshLayout swipeRefreshLayout2;
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.h(view, "view");
        Fragment parentFragment = getParentFragment();
        Intrinsics.f(parentFragment, "null cannot be cast to non-null type com.transsion.audio.fragment.AudioBottomSheetFragment");
        this.parent = (AudioBottomSheetFragment) parentFragment;
        bj.c mViewBinding = getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout2 = mViewBinding.f16562f) != null && (layoutParams = swipeRefreshLayout2.getLayoutParams()) != null) {
            AudioBottomSheetFragment audioBottomSheetFragment = this.parent;
            layoutParams.height = audioBottomSheetFragment != null ? audioBottomSheetFragment.D0() - a0.a(104.0f) : 0;
        }
        bj.c mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f16561e) != null) {
            recyclerView2.setLayoutManager(new NpaLinearLayoutManager(getContext()));
        }
        SubjectListAdapter subjectListAdapter = new SubjectListAdapter(new ArrayList());
        subjectListAdapter.h0().z(true);
        subjectListAdapter.h0().D(new p6.f() { // from class: com.transsion.audio.fragment.h
            @Override // p6.f
            public final void a() {
                SubjectListFragment.B0(this.f42883a);
            }
        });
        subjectListAdapter.w1(new p6.d() { // from class: com.transsion.audio.fragment.i
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                SubjectListFragment.C0(baseQuickAdapter, view2, i11);
            }
        });
        subjectListAdapter.J1(new SubjectListAdapter.a() { // from class: com.transsion.audio.fragment.SubjectListFragment$initView$1$3
            @Override // com.transsion.audio.adapter.SubjectListAdapter.a
            public void a(DownloadItem download) {
                Intrinsics.h(download, "download");
                kotlinx.coroutines.j.b(null, new SubjectListFragment$initView$1$3$onPlayItem$1(download, this.f42878a, null), 1, null);
            }
        });
        this.mAdapter = subjectListAdapter;
        bj.c mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (swipeRefreshLayout = mViewBinding3.f16562f) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.audio.fragment.j
                @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                public final void a() {
                    SubjectListFragment.D0(this.f42884a);
                }
            });
        }
        bj.c mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (recyclerView = mViewBinding4.f16561e) == null) {
            return;
        }
        recyclerView.setAdapter(this.mAdapter);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
        com.transsion.player.orplayer.f.a.c(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.d(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.e(this, mediaSource);
        kotlinx.coroutines.j.b(null, new AnonymousClass1(mediaSource, this, null), 1, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.f.a.g(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.f.a.h(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(ao.e eVar) {
        com.transsion.player.orplayer.f.a.i(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e eVar) {
        com.transsion.player.orplayer.f.a.k(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        com.transsion.player.orplayer.f.a.o(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.f.a.p(this, str);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        IAudioApi mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.removePlayerListener(this);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.f.a.q(this, errorInfo, mediaSource);
        uh.b.f76753a.e(String.valueOf(errorInfo.getErrorMessage()));
        kotlinx.coroutines.j.b(null, new C10651(null), 1, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e eVar) {
        com.transsion.player.orplayer.f.a.t(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        com.transsion.player.orplayer.f.a.v(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.w(this, mediaSource);
        lg.a.C0828a.f(lg.a.f68839a, f42860r, "onPrepare  " + (!TextUtils.equals(this.previousUrl, mediaSource != null ? mediaSource.k() : null)) + "  previousUrl " + this.previousUrl + " url " + (mediaSource != null ? mediaSource.k() : null), false, 4, null);
        kotlinx.coroutines.j.b(null, new C10661(mediaSource, this, null), 1, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long progress, ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.y(this, progress, mediaSource);
        kotlinx.coroutines.j.b(null, new C10671(mediaSource, this, progress, null), 1, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.f.a.A(this);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        IAudioApi mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.addPlayerListener(this);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f.a.B(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.C(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(mo.c cVar) {
        com.transsion.player.orplayer.f.a.D(this, cVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.E(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(ao.e eVar) {
        com.transsion.player.orplayer.f.a.F(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e eVar) {
        com.transsion.player.orplayer.f.a.I(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
    public bj.c getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bj.c cVarC = bj.c.c(inflater);
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }
}
