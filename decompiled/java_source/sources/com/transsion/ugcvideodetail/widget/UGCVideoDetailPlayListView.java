package com.transsion.ugcvideodetail.widget;

import android.content.Context;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.adapter.g;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment;
import com.transsion.ugcvideodetail.fragment.UGCVideoDialogPlayListTabFragment;
import com.transsion.ugcvideodetail.hepler.UGCVideoPlayFrom;
import com.transsion.ugcvideodetail.viewmodel.UGCLocalVideoDetailViewModel;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailPlayListView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jg.c;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import lj.i1;
import nh.m;
import p6.d;
import qv.q;
import r6.f;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u000eJ1\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J=\u0010\u001c\u001a\u00020\u00112\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001e\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ%\u0010#\u001a\u00020\f2\b\u0010!\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\fH\u0002¢\u0006\u0004\b%\u0010\u000eJ\u000f\u0010&\u001a\u00020\fH\u0002¢\u0006\u0004\b&\u0010\u000eJ\u0019\u0010(\u001a\u00020\f2\b\u0010'\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b(\u0010)J\u001d\u0010.\u001a\u00020\f2\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b.\u0010/J\r\u00100\u001a\u00020\f¢\u0006\u0004\b0\u0010\u000eJ\u0013\u00102\u001a\b\u0012\u0004\u0012\u00020\u001401¢\u0006\u0004\b2\u00103J\u001b\u00104\u001a\u00020\f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u001401¢\u0006\u0004\b4\u00105J\u0015\u00107\u001a\u00020\f2\u0006\u00106\u001a\u00020\u0011¢\u0006\u0004\b7\u00108R\u0014\u0010;\u001a\u00020 8\u0002X\u0082D¢\u0006\u0006\n\u0004\b9\u0010:R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010C\u001a\u00020@8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0014\u0010I\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010HR\u0016\u0010-\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u001b\u0010Q\u001a\u00020L8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010PR\u001b\u0010V\u001a\u00020R8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010N\u001a\u0004\bT\u0010UR\u0018\u0010X\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010:R\u0018\u0010\\\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0018\u0010^\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010:R\u0018\u0010`\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010:¨\u0006a"}, d2 = {"Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "x", "()V", "v", "C", "", "isLoadDown", "", "Llj/i1;", "items", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;", "playList", "N", "(ZLjava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;)V", "currentList", "newItems", TmcStartParams.KEY_URL_SHORT, "(Ljava/util/List;Ljava/util/List;ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;)Z", "P", "(ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;)V", "", "videoId", "previousVideoId", "Q", "(Ljava/lang/String;Ljava/lang/String;)V", "J", "M", "ugcVideoId", "H", "(Ljava/lang/String;)V", "Landroidx/fragment/app/Fragment;", "fragment", "Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;", "videoPlayFrom", "setParentFragment", "(Landroidx/fragment/app/Fragment;Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;)V", "clearExposureCache", "", "getPlayListData", "()Ljava/util/List;", "replacePlayListData", "(Ljava/util/List;)V", "pause", "pauseAnimatedImageSpans", "(Z)V", "a", "Ljava/lang/String;", "TAG", "Lqv/q;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lqv/q;", "viewBinding", "Lcom/transsion/ugcvideodetail/adapter/g;", "c", "Lcom/transsion/ugcvideodetail/adapter/g;", "playListAdapter", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/fragment/app/Fragment;", "parentFragment", "e", "I", "scrollOffset", "f", "Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;", "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "g", "Lkotlin/Lazy;", "getViewModel", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "viewModel", "Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;", "h", "getLocalViewModel", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;", "localViewModel", "i", "currentPlayingId", "Lsj/b;", "j", "Lsj/b;", "exposureHelper", CampaignEx.JSON_KEY_AD_K, "pageName", "l", "currentCollectionId", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDetailPlayListView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final q viewBinding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private g playListAdapter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Fragment parentFragment;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int scrollOffset;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private UGCVideoPlayFrom videoPlayFrom;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy localViewModel;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String currentPlayingId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private sj.b exposureHelper;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String currentCollectionId;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56556a;

        static {
            int[] iArr = new int[UGCVideoPlayFrom.values().length];
            try {
                iArr[UGCVideoPlayFrom.LOCAL_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UGCVideoPlayFrom.ON_LINE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56556a = iArr;
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f56557a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56557a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f56557a;
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
            this.f56557a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UGCVideoDetailPlayListView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UGCVideoDetailPlayListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UGCVideoDetailPlayListView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.TAG = "UGCVideoDetailPlayListView";
        this.scrollOffset = (y.e() / 2) - dk.a.b(80);
        this.videoPlayFrom = UGCVideoPlayFrom.ON_LINE_VIDEO;
        this.viewModel = LazyKt.b(new Function0() { // from class: sv.r0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCVideoDetailPlayListView.S(this.f75934a);
            }
        });
        this.localViewModel = LazyKt.b(new Function0() { // from class: sv.s0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCVideoDetailPlayListView.K(this.f75936a);
            }
        });
        View.inflate(context, R$layout.layout_ugc_video_detail_play_list, this);
        q qVarA = q.a(this);
        Intrinsics.g(qVarA, "bind(...)");
        this.viewBinding = qVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(UGCVideoDetailPlayListView uGCVideoDetailPlayListView) {
        if (m.f70474a.e()) {
            uGCVideoDetailPlayListView.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(UGCVideoDetailPlayListView uGCVideoDetailPlayListView) {
        if (m.f70474a.e()) {
            uGCVideoDetailPlayListView.M();
        }
    }

    private final void C() {
        int i11 = a.f56556a[this.videoPlayFrom.ordinal()];
        if (i11 == 1) {
            LiveData liveDataK = getLocalViewModel().k();
            Fragment fragment = this.parentFragment;
            Intrinsics.e(fragment);
            liveDataK.j(fragment, new b(new Function1() { // from class: sv.v0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCVideoDetailPlayListView.F(this.f75943a, (List) obj);
                }
            }));
            b0 b0VarI = getLocalViewModel().i();
            Fragment fragment2 = this.parentFragment;
            Intrinsics.e(fragment2);
            b0VarI.j(fragment2, new b(new Function1() { // from class: sv.w0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCVideoDetailPlayListView.G(this.f75945a, (DownloadBean) obj);
                }
            }));
            return;
        }
        if (i11 != 2) {
            throw new NoWhenBranchMatchedException();
        }
        LiveData liveDataM = getViewModel().M();
        Fragment fragment3 = this.parentFragment;
        Intrinsics.e(fragment3);
        liveDataM.j(fragment3, new b(new Function1() { // from class: sv.q0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCVideoDetailPlayListView.D(this.f75932a, (UGCVideoList) obj);
            }
        }));
        LiveData liveDataG = getViewModel().G();
        Fragment fragment4 = this.parentFragment;
        Intrinsics.e(fragment4);
        liveDataG.j(fragment4, new b(new Function1() { // from class: sv.u0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCVideoDetailPlayListView.E(this.f75941a, (UGCVideo) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(UGCVideoDetailPlayListView uGCVideoDetailPlayListView, UGCVideoList uGCVideoList) {
        List<UGCVideo> items;
        List<UGCVideo> items2;
        if (uGCVideoList != null && (items = uGCVideoList.getItems()) != null) {
            g gVar = null;
            Object obj = null;
            g gVar2 = null;
            if (items.isEmpty()) {
                g gVar3 = uGCVideoDetailPlayListView.playListAdapter;
                if (gVar3 == null) {
                    Intrinsics.z("playListAdapter");
                    gVar3 = null;
                }
                if (!gVar3.getData().isEmpty()) {
                    Pager pager = uGCVideoList.getPager();
                    if (pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.TRUE) : false) {
                        g gVar4 = uGCVideoDetailPlayListView.playListAdapter;
                        if (gVar4 == null) {
                            Intrinsics.z("playListAdapter");
                        } else {
                            gVar2 = gVar4;
                        }
                        gVar2.h0().s();
                    } else {
                        lg.a.C0828a.z(lg.a.f68839a, uGCVideoDetailPlayListView.TAG, "updateData , no more data==============", false, 4, null);
                        g gVar5 = uGCVideoDetailPlayListView.playListAdapter;
                        if (gVar5 == null) {
                            Intrinsics.z("playListAdapter");
                            gVar5 = null;
                        }
                        f.u(gVar5.h0(), false, 1, null);
                        g gVar6 = uGCVideoDetailPlayListView.playListAdapter;
                        if (gVar6 == null) {
                            Intrinsics.z("playListAdapter");
                        } else {
                            gVar = gVar6;
                        }
                        gVar.h0().z(false);
                    }
                }
            } else {
                c.k(uGCVideoDetailPlayListView);
                String str = (String) uGCVideoDetailPlayListView.getViewModel().B().f();
                String str2 = uGCVideoDetailPlayListView.currentCollectionId;
                if (str2 != null && !Intrinsics.c(str2, str) && str != null && str.length() != 0) {
                    lg.a.C0828a.f(lg.a.f68839a, uGCVideoDetailPlayListView.TAG, "Collection changed: " + uGCVideoDetailPlayListView.currentCollectionId + " -> " + str + ", clearing list", false, 4, null);
                    g gVar7 = uGCVideoDetailPlayListView.playListAdapter;
                    if (gVar7 == null) {
                        Intrinsics.z("playListAdapter");
                        gVar7 = null;
                    }
                    gVar7.n1(CollectionsKt.l());
                    uGCVideoDetailPlayListView.currentCollectionId = str;
                } else if (uGCVideoDetailPlayListView.currentCollectionId == null) {
                    uGCVideoDetailPlayListView.currentCollectionId = str;
                }
                if (uGCVideoDetailPlayListView.currentPlayingId != null && (items2 = uGCVideoList.getItems()) != null) {
                    for (Object obj2 : items2) {
                        if (Intrinsics.c(((UGCVideo) obj2).videoUGCId(), uGCVideoDetailPlayListView.currentPlayingId)) {
                            obj = obj2;
                            break;
                        }
                    }
                    UGCVideo uGCVideo = (UGCVideo) obj;
                    if (uGCVideo != null) {
                        uGCVideo.setVideoIsPlaying(true);
                    }
                }
                uGCVideoDetailPlayListView.N(uGCVideoList.getIsLoadDown(), TypeIntrinsics.c(items), uGCVideoList);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E(UGCVideoDetailPlayListView uGCVideoDetailPlayListView, UGCVideo uGCVideo) {
        String ugcVideoId;
        if (uGCVideo != null && (ugcVideoId = uGCVideo.getUgcVideoId()) != null) {
            R(uGCVideoDetailPlayListView, ugcVideoId, null, 2, null);
            uGCVideoDetailPlayListView.H(ugcVideoId);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(UGCVideoDetailPlayListView uGCVideoDetailPlayListView, List list) {
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            c.k(uGCVideoDetailPlayListView);
            Intrinsics.f(list, "null cannot be cast to non-null type kotlin.collections.MutableList<com.transsion.baselib.db.download.UGCVideoPlayable>");
            O(uGCVideoDetailPlayListView, true, TypeIntrinsics.c(list), null, 4, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(UGCVideoDetailPlayListView uGCVideoDetailPlayListView, DownloadBean downloadBean) {
        String ugcVideoId;
        if (downloadBean != null && (ugcVideoId = downloadBean.getUgcVideoId()) != null) {
            R(uGCVideoDetailPlayListView, ugcVideoId, null, 2, null);
            uGCVideoDetailPlayListView.H(ugcVideoId);
        }
        return Unit.f67061a;
    }

    private final void H(final String ugcVideoId) {
        if (ugcVideoId == null || ugcVideoId.length() == 0) {
            return;
        }
        this.viewBinding.f73852d.postDelayed(new Runnable() { // from class: sv.t0
            @Override // java.lang.Runnable
            public final void run() {
                UGCVideoDetailPlayListView.I(this.f75938a, ugcVideoId);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(UGCVideoDetailPlayListView uGCVideoDetailPlayListView, String str) {
        g gVar = uGCVideoDetailPlayListView.playListAdapter;
        g gVar2 = null;
        if (gVar == null) {
            Intrinsics.z("playListAdapter");
            gVar = null;
        }
        Iterator<Object> it = gVar.getData().iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            } else if (Intrinsics.c(((i1) it.next()).videoUGCId(), str)) {
                break;
            } else {
                i11++;
            }
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String str2 = uGCVideoDetailPlayListView.TAG;
        g gVar3 = uGCVideoDetailPlayListView.playListAdapter;
        if (gVar3 == null) {
            Intrinsics.z("playListAdapter");
        } else {
            gVar2 = gVar3;
        }
        lg.a.C0828a.f(c0828a, str2, "listScrollToPosition id:" + str + ", position:" + i11 + ", dataSize:" + gVar2.getData().size(), false, 4, null);
        if (i11 < 0) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            RecyclerView.m layoutManager = uGCVideoDetailPlayListView.viewBinding.f73852d.getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int i12 = uGCVideoDetailPlayListView.scrollOffset;
            linearLayoutManager.scrollToPositionWithOffset(i11, i12 > 0 ? i12 : 0);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void J() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.r(c0828a, this.TAG, new String[]{"loadMoreData ------"}, false, 4, null);
        g gVar = this.playListAdapter;
        g gVar2 = null;
        if (gVar == null) {
            Intrinsics.z("playListAdapter");
            gVar = null;
        }
        if (!gVar.h0().p()) {
            lg.a.C0828a.z(c0828a, this.TAG, "loadMoreData , unable to load more", false, 4, null);
            return;
        }
        String str = (String) getViewModel().B().f();
        if (str == null) {
            return;
        }
        g gVar3 = this.playListAdapter;
        if (gVar3 == null) {
            Intrinsics.z("playListAdapter");
        } else {
            gVar2 = gVar3;
        }
        i1 i1Var = (i1) CollectionsKt.v0(gVar2.getData());
        int iVideoUGCPosition = i1Var != null ? i1Var.videoUGCPosition() : 0;
        getViewModel().X(str, iVideoUGCPosition + 1, iVideoUGCPosition + 9, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCLocalVideoDetailViewModel K(UGCVideoDetailPlayListView uGCVideoDetailPlayListView) {
        Context context = uGCVideoDetailPlayListView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (UGCLocalVideoDetailViewModel) new v0((FragmentActivity) context).a(UGCLocalVideoDetailViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(RecyclerView.m mVar, UGCVideoDetailPlayListView uGCVideoDetailPlayListView, boolean z10) {
        RecyclerView.b0 childViewHolder;
        TextView textView;
        int childCount = mVar.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = mVar.getChildAt(i11);
            if (childAt != null && (childViewHolder = uGCVideoDetailPlayListView.viewBinding.f73852d.getChildViewHolder(childAt)) != null && (textView = (TextView) childViewHolder.itemView.findViewById(R$id.tvTitleGradient)) != null && textView.getVisibility() == 0) {
                CharSequence text = textView.getText();
                if (text instanceof Spanned) {
                    Spanned spanned = (Spanned) text;
                    Object[] spans = spanned.getSpans(0, spanned.length(), com.transsion.baseui.widget.c.class);
                    Intrinsics.g(spans, "getSpans(...)");
                    for (Object obj : spans) {
                        com.transsion.baseui.widget.c cVar = (com.transsion.baseui.widget.c) obj;
                        if (z10) {
                            cVar.m();
                        } else {
                            cVar.k();
                        }
                    }
                }
            }
        }
    }

    private final void M() {
        String str = (String) getViewModel().B().f();
        if (str == null) {
            return;
        }
        g gVar = this.playListAdapter;
        g gVar2 = null;
        if (gVar == null) {
            Intrinsics.z("playListAdapter");
            gVar = null;
        }
        i1 i1Var = (i1) CollectionsKt.k0(gVar.getData());
        int iVideoUGCPosition = i1Var != null ? i1Var.videoUGCPosition() : 1;
        if (iVideoUGCPosition <= 1) {
            g gVar3 = this.playListAdapter;
            if (gVar3 == null) {
                Intrinsics.z("playListAdapter");
            } else {
                gVar2 = gVar3;
            }
            gVar2.o0().d(false);
            return;
        }
        g gVar4 = this.playListAdapter;
        if (gVar4 == null) {
            Intrinsics.z("playListAdapter");
        } else {
            gVar2 = gVar4;
        }
        gVar2.o0().e(true);
        getViewModel().X(str, Math.max(iVideoUGCPosition - 9, 1), iVideoUGCPosition - 1, false);
    }

    private final void N(boolean isLoadDown, List items, UGCVideoList playList) {
        UGCVideo uGCVideo;
        String ops;
        String str;
        g gVar = this.playListAdapter;
        if (gVar == null) {
            Intrinsics.z("playListAdapter");
            gVar = null;
        }
        if (gVar.getData().isEmpty() && (str = this.currentPlayingId) != null) {
            R(this, str, null, 2, null);
        }
        g gVar2 = this.playListAdapter;
        if (gVar2 == null) {
            Intrinsics.z("playListAdapter");
            gVar2 = null;
        }
        List<Object> data = gVar2.getData();
        if (!data.isEmpty() && !items.isEmpty() && u(data, items, isLoadDown, playList)) {
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "updateData: Ignoring non-continuous data. Current list size: " + data.size() + ", New items: " + items.size() + ", isLoadDown: " + isLoadDown, false, 4, null);
            P(isLoadDown, playList);
            return;
        }
        Fragment fragment = this.parentFragment;
        UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = fragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) fragment : null;
        String ops2 = uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getOps() : null;
        if (ops2 != null && ops2.length() != 0) {
            Iterator it = items.iterator();
            while (it.hasNext()) {
                i1 i1Var = (i1) it.next();
                if ((i1Var instanceof UGCVideo) && ((ops = (uGCVideo = (UGCVideo) i1Var).getOps()) == null || ops.length() == 0)) {
                    uGCVideo.setOps(ops2);
                }
            }
        }
        lg.a.C0828a.v(lg.a.f68839a, this.TAG, "updateData , isLoadDown：" + isLoadDown + ", items:" + items.size(), false, 4, null);
        if (isLoadDown) {
            P(isLoadDown, playList);
            g gVar3 = this.playListAdapter;
            if (gVar3 == null) {
                Intrinsics.z("playListAdapter");
                gVar3 = null;
            }
            gVar3.q(items);
        } else {
            g gVar4 = this.playListAdapter;
            if (gVar4 == null) {
                Intrinsics.z("playListAdapter");
                gVar4 = null;
            }
            gVar4.o(0, items);
            g gVar5 = this.playListAdapter;
            if (gVar5 == null) {
                Intrinsics.z("playListAdapter");
                gVar5 = null;
            }
            gVar5.o0().e(false);
        }
        if (this.videoPlayFrom == UGCVideoPlayFrom.ON_LINE_VIDEO) {
            ArrayList arrayList = new ArrayList();
            Iterator it2 = items.iterator();
            while (it2.hasNext()) {
                i1 i1Var2 = (i1) it2.next();
                UGCVideo uGCVideo2 = i1Var2 instanceof UGCVideo ? (UGCVideo) i1Var2 : null;
                if (uGCVideo2 != null) {
                    arrayList.add(uGCVideo2);
                }
            }
            getViewModel().u(arrayList, isLoadDown);
        }
    }

    static /* synthetic */ void O(UGCVideoDetailPlayListView uGCVideoDetailPlayListView, boolean z10, List list, UGCVideoList uGCVideoList, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            uGCVideoList = null;
        }
        uGCVideoDetailPlayListView.N(z10, list, uGCVideoList);
    }

    private final void P(boolean isLoadDown, UGCVideoList playList) {
        Pager pager;
        if (isLoadDown) {
            boolean zC = (playList == null || (pager = playList.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.TRUE);
            lg.a.C0828a.z(lg.a.f68839a, this.TAG, "updateLoadMoreState , hasMore:" + zC, false, 4, null);
            g gVar = null;
            if (zC) {
                g gVar2 = this.playListAdapter;
                if (gVar2 == null) {
                    Intrinsics.z("playListAdapter");
                } else {
                    gVar = gVar2;
                }
                gVar.h0().s();
                return;
            }
            g gVar3 = this.playListAdapter;
            if (gVar3 == null) {
                Intrinsics.z("playListAdapter");
                gVar3 = null;
            }
            f.u(gVar3.h0(), false, 1, null);
            g gVar4 = this.playListAdapter;
            if (gVar4 == null) {
                Intrinsics.z("playListAdapter");
            } else {
                gVar = gVar4;
            }
            gVar.h0().z(false);
        }
    }

    private final void Q(String videoId, String previousVideoId) {
        if (previousVideoId == null) {
            int i11 = a.f56556a[this.videoPlayFrom.ordinal()];
            if (i11 == 1) {
                previousVideoId = this.currentPlayingId;
            } else {
                if (i11 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                previousVideoId = getViewModel().E();
            }
        }
        int i12 = a.f56556a[this.videoPlayFrom.ordinal()];
        if (i12 == 1) {
            getLocalViewModel().f().q(videoId);
        } else {
            if (i12 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            getViewModel().f0(videoId);
        }
        this.currentPlayingId = videoId;
        g gVar = this.playListAdapter;
        if (gVar == null) {
            Intrinsics.z("playListAdapter");
            gVar = null;
        }
        gVar.E1(videoId, previousVideoId);
    }

    static /* synthetic */ void R(UGCVideoDetailPlayListView uGCVideoDetailPlayListView, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        uGCVideoDetailPlayListView.Q(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCVideoDetailViewModel S(UGCVideoDetailPlayListView uGCVideoDetailPlayListView) {
        Context context = uGCVideoDetailPlayListView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (UGCVideoDetailViewModel) new v0((FragmentActivity) context).a(UGCVideoDetailViewModel.class);
    }

    private final UGCLocalVideoDetailViewModel getLocalViewModel() {
        return (UGCLocalVideoDetailViewModel) this.localViewModel.getValue();
    }

    private final UGCVideoDetailViewModel getViewModel() {
        return (UGCVideoDetailViewModel) this.viewModel.getValue();
    }

    private final boolean u(List currentList, List newItems, boolean isLoadDown, UGCVideoList playList) {
        Pager pager;
        if (!((playList == null || (pager = playList.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.TRUE))) {
            return false;
        }
        if (isLoadDown) {
            i1 i1Var = (i1) CollectionsKt.v0(currentList);
            int iVideoUGCPosition = i1Var != null ? i1Var.videoUGCPosition() : 0;
            i1 i1Var2 = (i1) CollectionsKt.k0(newItems);
            if ((i1Var2 != null ? i1Var2.videoUGCPosition() : 0) != iVideoUGCPosition + 1) {
                return true;
            }
        } else {
            i1 i1Var3 = (i1) CollectionsKt.k0(currentList);
            int iVideoUGCPosition2 = i1Var3 != null ? i1Var3.videoUGCPosition() : 0;
            i1 i1Var4 = (i1) CollectionsKt.v0(newItems);
            if ((i1Var4 != null ? i1Var4.videoUGCPosition() : 0) != iVideoUGCPosition2 - 1) {
                return true;
            }
        }
        return false;
    }

    private final void v() {
        if (this.videoPlayFrom != UGCVideoPlayFrom.ON_LINE_VIDEO) {
            return;
        }
        Fragment fragment = this.parentFragment;
        UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = fragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) fragment : null;
        com.transsion.ugcvideodetail.hepler.g gVar = com.transsion.ugcvideodetail.hepler.g.f56359a;
        RecyclerView ugcDetailPlayListRv = this.viewBinding.f73852d;
        Intrinsics.g(ugcDetailPlayListRv, "ugcDetailPlayListRv");
        this.exposureHelper = gVar.a(ugcDetailPlayListRv, getViewModel(), this.pageName, new Function1() { // from class: sv.x0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCVideoDetailPlayListView.w(this.f75947a, ((Integer) obj).intValue());
            }
        }, (128 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (128 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (128 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (128 & 128) != 0 ? null : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCVideo w(UGCVideoDetailPlayListView uGCVideoDetailPlayListView, int i11) {
        g gVar = uGCVideoDetailPlayListView.playListAdapter;
        if (gVar == null) {
            Intrinsics.z("playListAdapter");
            gVar = null;
        }
        Object objL0 = CollectionsKt.l0(gVar.getData(), i11);
        if (objL0 instanceof UGCVideo) {
            return (UGCVideo) objL0;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void x() {
        g gVar = null;
        final g gVar2 = new g(false, 1, 0 == true ? 1 : 0);
        gVar2.w1(new d() { // from class: sv.z0
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UGCVideoDetailPlayListView.z(this.f75954a, gVar2, baseQuickAdapter, view, i11);
            }
        });
        if (this.videoPlayFrom == UGCVideoPlayFrom.ON_LINE_VIDEO) {
            gVar2.h0().z(true);
            gVar2.h0().y(true);
            gVar2.h0().E(3);
            gVar2.h0().D(new p6.f() { // from class: sv.a1
                @Override // p6.f
                public final void a() {
                    UGCVideoDetailPlayListView.A(this.f75888a);
                }
            });
            gVar2.h0().C(new UGCVideoDetailHorLoadMoreView());
            gVar2.o0().d(true);
            gVar2.o0().c(2);
            gVar2.o0().b(new p6.g() { // from class: sv.b1
                @Override // p6.g
                public final void a() {
                    UGCVideoDetailPlayListView.B(this.f75892a);
                }
            });
        }
        this.playListAdapter = gVar2;
        RecyclerView recyclerView = this.viewBinding.f73852d;
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext(), 0, false));
        g gVar3 = this.playListAdapter;
        if (gVar3 == null) {
            Intrinsics.z("playListAdapter");
        } else {
            gVar = gVar3;
        }
        recyclerView.setAdapter(gVar);
        recyclerView.addItemDecoration(new ig.c(dk.a.b(12), dk.a.b(8)));
        this.viewBinding.f73850b.setOnClickListener(new View.OnClickListener() { // from class: sv.c1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UGCVideoDetailPlayListView.y(this.f75896a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(UGCVideoDetailPlayListView uGCVideoDetailPlayListView, View view) {
        Fragment fragment = uGCVideoDetailPlayListView.parentFragment;
        if (fragment != null) {
            UGCVideoDialogPlayListTabFragment uGCVideoDialogPlayListTabFragmentA = UGCVideoDialogPlayListTabFragment.INSTANCE.a();
            uGCVideoDialogPlayListTabFragmentA.setArguments(androidx.core.os.d.b(TuplesKt.a("VIDEO_FROM", Integer.valueOf(uGCVideoDetailPlayListView.videoPlayFrom.getValue()))));
            uGCVideoDialogPlayListTabFragmentA.n0(fragment, R$id.flBottomDialogContainer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(UGCVideoDetailPlayListView uGCVideoDetailPlayListView, g gVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        String strE;
        String strE2;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L)) {
            return;
        }
        g gVar2 = uGCVideoDetailPlayListView.playListAdapter;
        if (gVar2 == null) {
            Intrinsics.z("playListAdapter");
            gVar2 = null;
        }
        i1 i1Var = (i1) CollectionsKt.l0(gVar2.getData(), i11);
        if (i1Var == null) {
            return;
        }
        String strVideoUGCId = i1Var.videoUGCId();
        UGCVideoPlayFrom uGCVideoPlayFrom = uGCVideoDetailPlayListView.videoPlayFrom;
        int[] iArr = a.f56556a;
        int i12 = iArr[uGCVideoPlayFrom.ordinal()];
        if (i12 == 1) {
            strE = uGCVideoDetailPlayListView.currentPlayingId;
        } else {
            if (i12 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            strE = uGCVideoDetailPlayListView.getViewModel().E();
        }
        if (!Intrinsics.c(strVideoUGCId, strE) || strVideoUGCId == null || strVideoUGCId.length() == 0) {
            Fragment fragment = uGCVideoDetailPlayListView.parentFragment;
            UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = fragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) fragment : null;
            if (strE != null && strE.length() != 0 && uGCVideoDetailBaseFragment != null) {
                uGCVideoDetailBaseFragment.M0();
            }
            int i13 = iArr[uGCVideoDetailPlayListView.videoPlayFrom.ordinal()];
            if (i13 == 1) {
                String strVideoResourceId = i1Var.videoResourceId();
                if (strVideoResourceId != null) {
                    uGCVideoDetailPlayListView.getLocalViewModel().h(strVideoResourceId);
                }
            } else {
                if (i13 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                UGCVideoDetailViewModel viewModel = uGCVideoDetailPlayListView.getViewModel();
                String strVideoUGCId2 = i1Var.videoUGCId();
                if (strVideoUGCId2 == null) {
                    strVideoUGCId2 = "";
                }
                viewModel.c0(strVideoUGCId2, (String) uGCVideoDetailPlayListView.getViewModel().B().f());
                if (i1Var instanceof UGCVideo) {
                    com.transsion.ugcvideodetail.hepler.g.f56359a.c((UGCVideo) i1Var, i11, uGCVideoDetailPlayListView.pageName, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null);
                }
            }
            int i14 = iArr[uGCVideoDetailPlayListView.videoPlayFrom.ordinal()];
            if (i14 == 1) {
                strE2 = uGCVideoDetailPlayListView.currentPlayingId;
            } else {
                if (i14 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                strE2 = uGCVideoDetailPlayListView.getViewModel().E();
            }
            gVar.E1(i1Var.videoUGCId(), strE2);
            uGCVideoDetailPlayListView.H(i1Var.videoUGCId());
        }
    }

    public final void clearExposureCache() {
        sj.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    public final List<i1> getPlayListData() {
        g gVar = this.playListAdapter;
        if (gVar == null) {
            Intrinsics.z("playListAdapter");
            gVar = null;
        }
        return gVar.getData();
    }

    public final void pauseAnimatedImageSpans(final boolean pause) {
        final RecyclerView.m layoutManager = this.viewBinding.f73852d.getLayoutManager();
        if (layoutManager == null) {
            return;
        }
        this.viewBinding.f73852d.post(new Runnable() { // from class: sv.y0
            @Override // java.lang.Runnable
            public final void run() {
                UGCVideoDetailPlayListView.L(layoutManager, this, pause);
            }
        });
    }

    public final void replacePlayListData(List<? extends i1> items) {
        Object next;
        UGCVideo uGCVideo;
        String ops;
        Intrinsics.h(items, "items");
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "replacePlayListData: Replacing list with " + items.size() + " items", false, 4, null);
        Fragment fragment = this.parentFragment;
        UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = fragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) fragment : null;
        String ops2 = uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getOps() : null;
        List<i1> listU0 = CollectionsKt.U0(items);
        if (ops2 != null && ops2.length() != 0) {
            for (i1 i1Var : listU0) {
                if ((i1Var instanceof UGCVideo) && ((ops = (uGCVideo = (UGCVideo) i1Var).getOps()) == null || ops.length() == 0)) {
                    uGCVideo.setOps(ops2);
                }
            }
        }
        if (this.currentPlayingId != null) {
            Iterator it = listU0.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((i1) next).videoUGCId(), this.currentPlayingId));
            i1 i1Var2 = (i1) next;
            if (i1Var2 != null) {
                i1Var2.setVideoIsPlaying(true);
            }
        }
        g gVar = this.playListAdapter;
        if (gVar == null) {
            Intrinsics.z("playListAdapter");
            gVar = null;
        }
        gVar.n1(listU0);
        if (this.videoPlayFrom == UGCVideoPlayFrom.ON_LINE_VIDEO) {
            ArrayList arrayList = new ArrayList();
            for (i1 i1Var3 : listU0) {
                UGCVideo uGCVideo2 = i1Var3 instanceof UGCVideo ? (UGCVideo) i1Var3 : null;
                if (uGCVideo2 != null) {
                    arrayList.add(uGCVideo2);
                }
            }
            if (!arrayList.isEmpty()) {
                getViewModel().C().q(CollectionsKt.U0(arrayList));
            }
        }
        String str = this.currentPlayingId;
        if (str != null) {
            H(str);
        }
    }

    public final void setParentFragment(Fragment fragment, UGCVideoPlayFrom videoPlayFrom) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(videoPlayFrom, "videoPlayFrom");
        this.videoPlayFrom = videoPlayFrom;
        this.parentFragment = fragment;
        this.pageName = fragment instanceof UGCVideoDetailBaseFragment ? ((UGCVideoDetailBaseFragment) fragment).getPAGE_NAME() : null;
        x();
        C();
        v();
    }
}
