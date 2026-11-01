package com.transsion.ugcvideodetail.fragment;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.viewpager2.widget.ViewPager2;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.player.longvideo.constants.LongVodContentType;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.ugcvideodetail.activity.UGCLocalVideoDetailActivity;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsion.ugcvideodetail.hepler.UGCLocalVideoFloatManager;
import com.transsion.ugcvideodetail.hepler.UGCVideoPlayFrom;
import com.transsion.ugcvideodetail.viewmodel.UGCLocalVideoDetailViewModel;
import com.transsion.ugcvideodetail.widget.UGCLocalVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailPlayListView;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 F2\u00020\u0001:\u0001GB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0003J\u0017\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001d\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u0018H\u0002¢\u0006\u0004\b\u001d\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001f\u0010\u001bJ\u000f\u0010 \u001a\u00020\u0004H\u0002¢\u0006\u0004\b \u0010\u0003J\u0017\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\"\u0010\u001bJ\u0017\u0010#\u001a\u00020\b2\u0006\u0010!\u001a\u00020\u0018H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0004H\u0002¢\u0006\u0004\b%\u0010\u0003J\u000f\u0010&\u001a\u00020\u0004H\u0002¢\u0006\u0004\b&\u0010\u0003J\u0017\u0010'\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0018H\u0002¢\u0006\u0004\b'\u0010\u001bJ\u001d\u0010+\u001a\b\u0012\u0004\u0012\u00020*0)2\u0006\u0010(\u001a\u00020\u0018H\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u0018H\u0002¢\u0006\u0004\b-\u0010.R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010;\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00106R\u001a\u0010>\u001a\u00020\u000b8\u0016X\u0096D¢\u0006\f\n\u0004\b<\u00106\u001a\u0004\b=\u0010\rR\u001a\u0010A\u001a\u00020\u000b8\u0016X\u0096D¢\u0006\f\n\u0004\b?\u00106\u001a\u0004\b@\u0010\rR\u001c\u0010E\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006H"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;", "Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;", "<init>", "()V", "", "receiveArguments", "F0", "H0", "", "isAudioShowNoNetworkLayout", "()Z", "", "w0", "()Ljava/lang/String;", "q0", "initViewModel", "retryLoadData", "Lcom/transsion/videofloat/bean/FloatActionType;", "actionType", "V0", "(Lcom/transsion/videofloat/bean/FloatActionType;)Z", "Lpx/a;", "u0", "()Lpx/a;", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "o1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "previousDownloadBean", "j1", "detail", "n1", "g1", "playInfo", "f1", "a1", "(Lcom/transsion/baselib/db/download/DownloadBean;)Z", "m1", "b1", "i1", "bean", "", "Lgo/c;", "e1", "(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/util/List;", "d1", "(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;", "Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;", "n", "Lkotlin/Lazy;", "c1", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;", "detailViewModel", "o", "Ljava/lang/String;", "resourceId", TtmlNode.TAG_P, "Lcom/transsion/baselib/db/download/DownloadBean;", CampaignEx.JSON_KEY_AD_Q, "previousUgcVideoId", CampaignEx.JSON_KEY_AD_R, "x0", "PAGE_NAME", "s", "getTAG", "TAG", "Landroidx/lifecycle/c0;", "t", "Landroidx/lifecycle/c0;", "playInfoObserver", TmcStartParams.KEY_URL_SHORT, "a", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCLocalVideoDetailFragment extends UGCVideoDetailBaseFragment {

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String resourceId;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private DownloadBean downloadBean;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private String previousUgcVideoId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final Lazy detailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCLocalVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCLocalVideoDetailFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCLocalVideoDetailFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final String PAGE_NAME = "/ugc_video/local_detail";

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "UGCLocalVideoDetail";

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final androidx.p009lifecycle.c0 playInfoObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.ugcvideodetail.fragment.f0
        @Override // androidx.p009lifecycle.c0
        public final void onChanged(Object obj) {
            UGCLocalVideoDetailFragment.h1(this.f56214a, (DownloadBean) obj);
        }
    };

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.fragment.UGCLocalVideoDetailFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCLocalVideoDetailFragment a() {
            return new UGCLocalVideoDetailFragment();
        }
    }

    public static final class b implements sx.a {
        b() {
        }

        @Override // sx.a
        public boolean a(px.a aVar) {
            return UGCLocalVideoFloatManager.f56287b.j(aVar);
        }

        @Override // sx.a
        public void b(px.a aVar) {
            sx.a.C0918a.a(this, aVar);
            UGCLocalVideoFloatManager.f56287b.i(aVar);
        }

        @Override // sx.a
        public void c(px.a aVar) {
            UGCLocalVideoFloatManager uGCLocalVideoFloatManager = UGCLocalVideoFloatManager.f56287b;
            uGCLocalVideoFloatManager.h();
            uGCLocalVideoFloatManager.l(aVar);
        }
    }

    public static final class c implements fo.a.b {
        c() {
        }

        @Override // fo.a.b
        public void a() {
            UGCLocalVideoDetailFragment.this.b1();
        }

        @Override // fo.a.b
        public boolean b() {
            return false;
        }

        @Override // fo.a.b
        public boolean c(FloatActionType actionType) {
            Intrinsics.h(actionType, "actionType");
            return UGCLocalVideoDetailFragment.this.V0(actionType);
        }

        @Override // fo.a.b
        public void d(LongVodUiType uiType) {
            UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
            Intrinsics.h(uiType, "uiType");
            UGCLocalVideoDetailFragment.this.O0(uiType);
            boolean z10 = uiType != LongVodUiType.MIDDLE;
            com.transsion.ugcvideodetail.hepler.e eVarS0 = UGCLocalVideoDetailFragment.this.getBottomRecHelper();
            if (eVarS0 != null) {
                eVarS0.s(z10);
            }
            UGCLocalVideoDetailFragment.this.m0();
            qv.i mViewBinding = UGCLocalVideoDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f73772n) == null) {
                return;
            }
            uGCVideoDetailPlayListView.pauseAnimatedImageSpans(z10);
        }

        @Override // fo.a.b
        public View e() {
            return null;
        }

        @Override // fo.a.b
        public void f(go.a aVar) {
            UGCLocalVideoDetailFragment.this.o0(aVar);
        }

        @Override // fo.a.b
        public void g(boolean z10) {
            AppCompatImageView appCompatImageView;
            qv.i mViewBinding = UGCLocalVideoDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (appCompatImageView = mViewBinding.f73767i) == null) {
                return;
            }
            appCompatImageView.setVisibility(z10 ? 0 : 8);
        }

        @Override // fo.a.b
        public void h(String str) {
            fo.a.b.C0761a.a(this, str);
        }

        @Override // fo.a.b
        public void onCompletion() {
            UGCLocalVideoDetailFragment.this.b1();
        }
    }

    private final boolean a1(DownloadBean playInfo) {
        List list = (List) c1().k().f();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return false;
        }
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "checkHasNext 是剧集，判断下一集还是完成 ", false, 4, null);
        Iterator it = list.iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            }
            DownloadBean downloadBean = (DownloadBean) it.next();
            if (Intrinsics.c(downloadBean != null ? downloadBean.getUgcVideoId() : null, playInfo.getUgcVideoId())) {
                break;
            }
            i11++;
        }
        if (i11 < 0 || i11 >= list.size() - 1) {
            return false;
        }
        DownloadBean downloadBean2 = (DownloadBean) list.get(i11 + 1);
        return !Intrinsics.c(downloadBean2 != null ? downloadBean2.getUgcVideoId() : null, playInfo.getUgcVideoId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b1() {
        DownloadBean downloadBean;
        DownloadBean downloadBean2 = (DownloadBean) c1().i().f();
        int i11 = 0;
        if (!(downloadBean2 != null ? a1(downloadBean2) : false)) {
            lg.a.C0828a.f(lg.a.f68839a, getTAG(), "checkPlayInfo 没有下一集", false, 4, null);
            fo.a aVarY0 = getPlayerControl();
            if (aVarY0 != null) {
                aVarY0.showReplay();
                return;
            }
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, getTAG(), "checkPlayNextOrReplay 是剧集，判断下一集还是完成 ", false, 4, null);
        List list = (List) c1().k().f();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        lg.a.C0828a.f(c0828a, getTAG(), "checkHasNext 是剧集，判断下一集还是完成 ", false, 4, null);
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            }
            DownloadBean downloadBean3 = (DownloadBean) it.next();
            String ugcVideoId = downloadBean3 != null ? downloadBean3.getUgcVideoId() : null;
            Intrinsics.e(downloadBean2);
            if (Intrinsics.c(ugcVideoId, downloadBean2.getUgcVideoId())) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 < 0 || i11 >= list.size() - 1 || (downloadBean = (DownloadBean) list.get(i11 + 1)) == null) {
            return;
        }
        c1().i().q(downloadBean);
    }

    private final UGCLocalVideoDetailViewModel c1() {
        return (UGCLocalVideoDetailViewModel) this.detailViewModel.getValue();
    }

    private final String d1(DownloadBean bean) {
        if (!bean.isInnerRes()) {
            String path = bean.getPath();
            return path == null ? "" : path;
        }
        if (!bean.isCompleted()) {
            return com.transsnet.downloader.manager.p.f59500a.a(Utils.a()).h(bean);
        }
        String path2 = bean.getPath();
        return path2 == null ? "" : path2;
    }

    private final List e1(DownloadBean bean) {
        ArrayList arrayList = new ArrayList();
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        String ugcVideoId = bean.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        arrayList.add(new go.c(playMimeType, ugcVideoId, d1(bean), String.valueOf(bean.getResolution()), String.valueOf(bean.getSize()), String.valueOf(bean.getDuration()), "", null, 128, null));
        return arrayList;
    }

    private final void f1(DownloadBean playInfo) {
        fo.a aVarY0 = getPlayerControl();
        if (aVarY0 != null) {
            aVarY0.hasNextEpisode(a1(playInfo));
        }
        i1(playInfo);
    }

    private final void g1() {
        MagicIndicator magicIndicator;
        View view;
        qv.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (view = mViewBinding.f73775q) != null) {
            jg.c.g(view);
        }
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean == null || !downloadBean.isInnerRes()) {
            qv.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (magicIndicator = mViewBinding2.f73770l) == null) {
                return;
            }
            jg.c.g(magicIndicator);
            return;
        }
        DownloadBean downloadBean2 = this.downloadBean;
        qv.i mViewBinding3 = getMViewBinding();
        MagicIndicator magicIndicator2 = mViewBinding3 != null ? mViewBinding3.f73770l : null;
        qv.i mViewBinding4 = getMViewBinding();
        ViewPager2 viewPager2 = mViewBinding4 != null ? mViewBinding4.f73777s : null;
        String page_name = getPAGE_NAME();
        UGCVideoPlayFrom uGCVideoPlayFrom = UGCVideoPlayFrom.LOCAL_VIDEO;
        qv.i mViewBinding5 = getMViewBinding();
        N0(new com.transsion.ugcvideodetail.hepler.e(this, null, null, downloadBean2, magicIndicator2, viewPager2, page_name, uGCVideoPlayFrom, null, 0, mViewBinding5 != null ? mViewBinding5.f73761c : null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h1(UGCLocalVideoDetailFragment uGCLocalVideoDetailFragment, DownloadBean downloadBean) {
        DownloadBean downloadBean2;
        lg.a.C0828a.f(lg.a.f68839a, uGCLocalVideoDetailFragment.getTAG(), "playInfoObserver: " + downloadBean, false, 4, null);
        if (downloadBean != null) {
            String ugcVideoId = downloadBean.getUgcVideoId();
            String str = uGCLocalVideoDetailFragment.previousUgcVideoId;
            boolean z10 = (str == null || Intrinsics.c(str, ugcVideoId) || ugcVideoId == null) ? false : true;
            if (z10 && (downloadBean2 = uGCLocalVideoDetailFragment.downloadBean) != null) {
                uGCLocalVideoDetailFragment.j1(downloadBean2);
            }
            uGCLocalVideoDetailFragment.l0();
            uGCLocalVideoDetailFragment.downloadBean = downloadBean;
            uGCLocalVideoDetailFragment.resourceId = downloadBean.getResourceId();
            uGCLocalVideoDetailFragment.T0(ugcVideoId);
            uGCLocalVideoDetailFragment.c1().f().q(uGCLocalVideoDetailFragment.getUgcVideoId());
            uGCLocalVideoDetailFragment.c1().e().q(downloadBean.getUgcVideoCollectionId());
            uGCLocalVideoDetailFragment.n1(downloadBean);
            uGCLocalVideoDetailFragment.g1();
            uGCLocalVideoDetailFragment.f1(downloadBean);
            if (z10) {
                uGCLocalVideoDetailFragment.Q0(uGCLocalVideoDetailFragment.previousUgcVideoId);
                uGCLocalVideoDetailFragment.R0(uGCLocalVideoDetailFragment.getTrackId());
                String string = UUID.randomUUID().toString();
                Intrinsics.g(string, "toString(...)");
                uGCLocalVideoDetailFragment.S0(string);
            }
            uGCLocalVideoDetailFragment.o1(downloadBean);
            FragmentActivity activity = uGCLocalVideoDetailFragment.getActivity();
            UGCLocalVideoDetailActivity uGCLocalVideoDetailActivity = activity instanceof UGCLocalVideoDetailActivity ? (UGCLocalVideoDetailActivity) activity : null;
            if (uGCLocalVideoDetailActivity != null) {
                uGCLocalVideoDetailActivity.G0(downloadBean.getUgcVideoType());
            }
            uGCLocalVideoDetailFragment.previousUgcVideoId = ugcVideoId;
        }
    }

    private final void i1(DownloadBean playInfo) {
        long readProgress = playInfo.getReadProgress();
        lg.a.f68839a.c(getTAG(), "localVideo  playVideo， historyProgress:" + readProgress, true);
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        String ugcVideoCollectionName = playInfo.getUgcVideoCollectionName();
        String str = ugcVideoCollectionName == null ? "" : ugcVideoCollectionName;
        String ugcVideoName = playInfo.getUgcVideoName();
        String strV0 = getLastPageFrom();
        String str2 = strV0 == null ? "" : strV0;
        String page_name = getPAGE_NAME();
        List listE1 = e1(playInfo);
        String cover = playInfo.getCover();
        String str3 = cover == null ? "" : cover;
        String thumbnail = playInfo.getThumbnail();
        String str4 = thumbnail == null ? "" : thumbnail;
        Long duration = playInfo.getDuration();
        go.a aVar = new go.a("", playMimeType, readProgress, 0, 0, str, ugcVideoName, str2, page_name, listE1, str3, str4, "", (int) (duration != null ? duration.longValue() : 0L), null, false, playInfo.getUgcVideoName(), playInfo.getOps(), 49152, null);
        aVar.x(playInfo);
        m1();
        fo.a aVarY0 = getPlayerControl();
        if (aVarY0 != null) {
            aVarY0.updateReportId(getPreviousPageVideoId(), getTrackId(), getPreviousTrackId());
        }
        fo.a aVarY1 = getPlayerControl();
        if (aVarY1 != null) {
            aVarY1.setDataSource(aVar);
        }
    }

    private final void j1(DownloadBean previousDownloadBean) {
        if (previousDownloadBean == null) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "reportVideoSwitch: previousVideo=" + previousDownloadBean.getUgcVideoId(), false, 4, null);
        logPause();
        logResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k1(FragmentActivity fragmentActivity, px.a aVar, FloatActionType floatActionType, UGCLocalVideoDetailFragment uGCLocalVideoDetailFragment) {
        ox.e.f72197a.b().k(fragmentActivity, aVar, floatActionType, uGCLocalVideoDetailFragment.getCurPlayerUiType() == LongVodUiType.LAND);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l1(UGCLocalVideoDetailFragment uGCLocalVideoDetailFragment, FragmentActivity fragmentActivity, boolean z10) {
        fo.a aVarY0;
        if (z10 && (aVarY0 = uGCLocalVideoDetailFragment.getPlayerControl()) != null) {
            aVarY0.exitFullScreen();
        }
        fo.a aVarY1 = uGCLocalVideoDetailFragment.getPlayerControl();
        if (aVarY1 != null) {
            aVarY1.setFloatIsShow(z10);
        }
        if (z10) {
            fragmentActivity.finish();
        }
        return Unit.f67061a;
    }

    private final void m1() {
        Context context;
        LongVodPageType longVodPageType;
        String value;
        if (getPlayerControl() == null && (context = getContext()) != null) {
            DownloadBean downloadBean = (DownloadBean) c1().i().f();
            String ugcVideoId = downloadBean != null ? downloadBean.getUgcVideoId() : null;
            if (ugcVideoId == null || ugcVideoId.length() == 0) {
                longVodPageType = (downloadBean != null ? downloadBean.getSubjectType() : SubjectType.MOVIE.getValue()) == SubjectType.MUSIC.getValue() ? LongVodPageType.MUSIC : LongVodPageType.STREAM;
            } else {
                if (downloadBean == null || (value = downloadBean.getUgcVideoType()) == null) {
                    value = UGCVideoType.MOVIE.getValue();
                }
                longVodPageType = Intrinsics.c(value, UGCVideoType.MUSIC.getValue()) ? LongVodPageType.MUSIC : LongVodPageType.STREAM;
            }
            LongVodPageType longVodPageType2 = longVodPageType;
            qv.i iVar = (qv.i) getMViewBinding();
            if (iVar != null) {
                LongVodPlayerView longVodPlayerView = new LongVodPlayerView(context);
                longVodPlayerView.init(getPAGE_NAME(), longVodPageType2, longVodPageType2.name() + (downloadBean != null ? downloadBean.getUgcVideoId() : null), null, null, CollectionsKt.l(), LongVodContentType.UGC_VIDEO_LOCAL);
                DownloadBean downloadBean2 = this.downloadBean;
                longVodPlayerView.initAdHelper(downloadBean2 != null ? downloadBean2.getGenre() : null);
                longVodPlayerView.setFeedBackVisible(true);
                iVar.f73765g.addView(longVodPlayerView);
                P0(longVodPlayerView);
            }
            fo.a aVarY0 = getPlayerControl();
            if (aVarY0 != null) {
                aVarY0.setCallback(new c());
            }
        }
    }

    private final void n1(DownloadBean detail) {
        UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView;
        qv.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (uGCLocalVideoDetailInfoView = mViewBinding.f73769k) == null) {
            return;
        }
        uGCLocalVideoDetailInfoView.setData(detail);
    }

    private final void o1(DownloadBean downloadBean) {
        hj.b logViewConfig;
        HashMap mapG;
        HashMap mapG2;
        hj.b logViewConfig2;
        HashMap mapG3;
        HashMap mapG4;
        HashMap mapG5;
        HashMap mapG6;
        hj.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null) {
            String ops = downloadBean.getOps();
            if (ops == null) {
                ops = "";
            }
            logViewConfig3.n(ops);
        }
        hj.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG6 = logViewConfig4.g()) != null) {
            String ugcVideoId = downloadBean.getUgcVideoId();
            if (ugcVideoId == null) {
                ugcVideoId = "";
            }
        }
        hj.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG5 = logViewConfig5.g()) != null) {
            String ugcVideoCollectionId = downloadBean.getUgcVideoCollectionId();
        }
        hj.b logViewConfig6 = getLogViewConfig();
        if (logViewConfig6 != null && (mapG4 = logViewConfig6.g()) != null) {
        }
        String strZ0 = getPreviousPageVideoId();
        if (strZ0 != null && (logViewConfig2 = getLogViewConfig()) != null && (mapG3 = logViewConfig2.g()) != null) {
        }
        hj.b logViewConfig7 = getLogViewConfig();
        if (logViewConfig7 != null && (mapG2 = logViewConfig7.g()) != null) {
        }
        String strA0 = getPreviousTrackId();
        if (strA0 == null || (logViewConfig = getLogViewConfig()) == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    protected void F0() {
        UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView;
        UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView2;
        UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView3;
        UGCVideoDetailInfoView uGCVideoDetailInfoView;
        qv.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (uGCVideoDetailInfoView = mViewBinding.f73763e) != null) {
            jg.c.g(uGCVideoDetailInfoView);
        }
        qv.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (uGCLocalVideoDetailInfoView3 = mViewBinding2.f73769k) != null) {
            jg.c.k(uGCLocalVideoDetailInfoView3);
        }
        qv.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (uGCLocalVideoDetailInfoView2 = mViewBinding3.f73769k) != null) {
            uGCLocalVideoDetailInfoView2.setPageName(getPAGE_NAME());
        }
        qv.i mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (uGCLocalVideoDetailInfoView = mViewBinding4.f73769k) == null) {
            return;
        }
        uGCLocalVideoDetailInfoView.setParentFragment(this);
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    protected void H0() {
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        qv.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f73772n) == null) {
            return;
        }
        uGCVideoDetailPlayListView.setParentFragment(this, UGCVideoPlayFrom.LOCAL_VIDEO);
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    protected boolean V0(final FloatActionType actionType) {
        final FragmentActivity activity;
        ConstraintLayout constraintLayoutB;
        Intrinsics.h(actionType, "actionType");
        DownloadBean downloadBean = (DownloadBean) c1().i().f();
        if (downloadBean == null) {
            return false;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c("VideoFloat", "showFloat2Window， " + downloadBean.getUgcVideoType() + ", " + downloadBean.getUgcVideoId(), true);
        if (!downloadBean.isMusic() && (activity = getActivity()) != null && !activity.isDestroyed() && !activity.isFinishing()) {
            FloatActionType floatActionType = FloatActionType.ICON;
            if (actionType != floatActionType && !com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_pip_enable", true)) {
                c0828a.c("VideoFloat", "设置页pip开关被关闭了", true);
                return false;
            }
            final px.a aVarU0 = u0();
            if (aVarU0 != null) {
                if (actionType != floatActionType && !aVarU0.f().isPlaying()) {
                    c0828a.c("VideoFloat-pip", "stream 视频暂停，无需触发画中画", true);
                    return false;
                }
                ox.e.a aVar = ox.e.f72197a;
                if (aVar.b().c()) {
                    fo.a aVarY0 = getPlayerControl();
                    if (aVarY0 != null) {
                        aVarY0.hideBottomController(true);
                    }
                    c0828a.c("VideoFloat-pip", "stream 当前可用画中画，使用画中画播放", true);
                    if (Build.VERSION.SDK_INT < 31 || actionType != FloatActionType.HOME) {
                        aVar.b().k(activity, aVarU0, actionType, getCurPlayerUiType() == LongVodUiType.LAND);
                    } else {
                        qv.i mViewBinding = getMViewBinding();
                        if (mViewBinding != null && (constraintLayoutB = mViewBinding.getRoot()) != null) {
                            constraintLayoutB.postDelayed(new Runnable() { // from class: com.transsion.ugcvideodetail.fragment.g0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    UGCLocalVideoDetailFragment.k1(activity, aVarU0, actionType, this);
                                }
                            }, 1000L);
                        }
                    }
                    return true;
                }
                ox.b.f72191a.c().g(activity, aVarU0, actionType == floatActionType, getCurPlayerUiType() == LongVodUiType.LAND, new Function1() { // from class: com.transsion.ugcvideodetail.fragment.h0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return UGCLocalVideoDetailFragment.l1(this.f56224a, activity, ((Boolean) obj).booleanValue());
                    }
                }, new b());
            }
        }
        return false;
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    public String getTAG() {
        return this.TAG;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        c1().i().j(this, this.playInfoObserver);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    protected void q0() {
        String str = this.resourceId;
        if (str != null) {
            c1().h(str);
            c1().j(str);
        }
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        super.receiveArguments();
        Bundle arguments = getArguments();
        T0(arguments != null ? arguments.getString("id") : null);
        Bundle arguments2 = getArguments();
        this.resourceId = arguments2 != null ? arguments2.getString("resource_id") : null;
        Bundle arguments3 = getArguments();
        U0(arguments3 != null ? arguments3.getString("ugcCategory") : null);
        Bundle arguments4 = getArguments();
        Q0(arguments4 != null ? arguments4.getString("parent_video_id") : null);
        super.Q0(getPreviousPageVideoId());
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "receiveArguments: resourceId:" + this.resourceId + ", ugcVideoId=" + getUgcVideoId() + ", previousPageVideoId=" + getPreviousPageVideoId(), false, 4, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    protected px.a u0() {
        String str;
        DownloadBean downloadBean = (DownloadBean) c1().i().f();
        if (downloadBean == null) {
            return null;
        }
        List<DownloadBean> list = (List) c1().k().f();
        fo.a aVarY0 = getPlayerControl();
        com.transsion.player.orplayer.g player = aVarY0 != null ? aVarY0.getPlayer() : null;
        fo.a aVarY1 = getPlayerControl();
        ORPlayerView playerView = aVarY1 != null ? aVarY1.getOrPlayerView() : null;
        fo.a aVarY2 = getPlayerControl();
        SimpleSubtitleView subtitleView = aVarY2 != null ? aVarY2.getSubtitleView() : null;
        fo.a aVarY3 = getPlayerControl();
        ViewGroup subtitleViewGroup = aVarY3 != null ? aVarY3.getSubtitleViewGroup() : null;
        if (playerView == null || player == null || subtitleView == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            String str2 = "";
            for (DownloadBean downloadBean2 : list) {
                PlayMimeType playMimeType = PlayMimeType.DEFAULT;
                String ugcVideoCollectionName = downloadBean.getUgcVideoCollectionName();
                String str3 = ugcVideoCollectionName == null ? "" : ugcVideoCollectionName;
                String strV0 = getLastPageFrom();
                String str4 = strV0 == null ? "" : strV0;
                String page_name = getPAGE_NAME();
                String cover = downloadBean.getCover();
                String str5 = cover == null ? "" : cover;
                String thumbnail = downloadBean.getThumbnail();
                go.a aVar = new go.a("", playMimeType, 0L, 0, 0, str3, null, str4, page_name, null, str5, thumbnail == null ? "" : thumbnail, "", 0, null, false, downloadBean.getUgcVideoName(), downloadBean.getOps(), 49728, null);
                String strA = io.a.f65273a.a(aVar);
                aVar.x(downloadBean);
                arrayList.add(aVar);
                str2 = strA;
            }
            str = str2;
        } else {
            str = "";
        }
        lg.a.f68839a.c("VideoFloat", "stream-----showFloat, title:" + downloadBean.getUgcVideoName(), true);
        UGCLocalVideoFloatManager.f56287b.n(arrayList);
        fo.a aVarY4 = getPlayerControl();
        go.c playingStream = aVarY4 != null ? aVarY4.getPlayingStream() : null;
        px.a aVar2 = new px.a(playerView, player, subtitleViewGroup, FloatPlayType.STREAM, "", 0, 0, playingStream != null ? playingStream.e() : null, getPAGE_NAME());
        aVar2.I(PlayMimeType.DEFAULT);
        aVar2.C(str);
        DownloadBean downloadBean3 = this.downloadBean;
        aVar2.A(downloadBean3 != null ? downloadBean3.getOps() : null);
        aVar2.y(this.downloadBean);
        aVar2.B(getLastPageFrom());
        return aVar2;
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    /* JADX INFO: renamed from: w0 */
    public String getOps() {
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean != null) {
            return downloadBean.getOps();
        }
        return null;
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    /* JADX INFO: renamed from: x0, reason: from getter */
    public String getPAGE_NAME() {
        return this.PAGE_NAME;
    }
}
