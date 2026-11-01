package com.transsion.videodetail.music.ui;

import android.graphics.Rect;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import com.transsion.baseui.fragment.LazyFragment;
import com.transsion.baseui.music.MusicFloatManager;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$string;
import com.transsion.videodetail.music.bean.MusicLikedItemStateEnum;
import com.transsion.videodetail.music.bean.MusicLikedMultiItemEntity;
import com.transsion.videodetail.music.bean.MusicLikedUITypeEnum;
import com.transsion.videodetail.music.data.MusicLikedFragmentViewModel;
import com.transsion.videodetail.music.widget.MusicLikedListEmptyView;
import com.transsion.videodetail.music.widget.MusicLikedListLoadingView;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u0019\u0010\f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000e\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u0019\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0016¢\u0006\u0004\b \u0010\u0005J\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010\"\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0006H\u0016¢\u0006\u0004\b#\u0010\u0005J\u0011\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\u0005J\u001f\u0010,\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u0019\u0010.\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b.\u0010\rJ\u0019\u0010/\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b/\u0010\rJ\u0019\u00100\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b0\u0010\rJ!\u00103\u001a\u00020\u00062\u0006\u00102\u001a\u0002012\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u001bH&¢\u0006\u0004\b5\u0010\u001dJ-\u00109\u001a\u00020\u00062\b\u00106\u001a\u0004\u0018\u00010\u001b2\b\u00107\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u00108\u001a\u00020\u0014H&¢\u0006\u0004\b9\u0010:J\u000f\u0010<\u001a\u00020;H&¢\u0006\u0004\b<\u0010=J/\u0010D\u001a\u00020\u00062\u000e\u0010?\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030>2\u0006\u0010A\u001a\u00020@2\u0006\u0010C\u001a\u00020BH&¢\u0006\u0004\bD\u0010EJ\u0019\u0010F\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH&¢\u0006\u0004\bF\u0010\rJ\u000f\u0010G\u001a\u00020\u0006H&¢\u0006\u0004\bG\u0010\u0005J\u000f\u0010I\u001a\u0004\u0018\u00010H¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u0004\u0018\u00010H¢\u0006\u0004\bK\u0010JJ\r\u0010L\u001a\u00020B¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\bN\u0010\u001dJ\u0019\u0010O\u001a\u0004\u0018\u00010\u001b2\b\u00106\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\bO\u0010PJ\u0017\u0010Q\u001a\u00020B2\b\u00106\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\bQ\u0010RJ\u000f\u0010S\u001a\u00020\u0006H\u0016¢\u0006\u0004\bS\u0010\u0005J\u001d\u0010V\u001a\u00020\u00062\u0006\u0010T\u001a\u00020\u001b2\u0006\u0010U\u001a\u00020\u0014¢\u0006\u0004\bV\u0010WR$\u0010_\u001a\u0004\u0018\u00010X8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R\u001b\u0010e\u001a\u00020`8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\ba\u0010b\u001a\u0004\bc\u0010dR$\u0010k\u001a\u0004\u0018\u00010\n8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bf\u0010g\u001a\u0004\bh\u0010i\"\u0004\bj\u0010\r¨\u0006l"}, d2 = {"Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;", "Lcom/transsion/baseui/fragment/LazyFragment;", "Ljx/e;", "Lcom/transsion/player/orplayer/f;", "<init>", "()V", "", "showLoading", "L0", "A0", "Lao/e;", "mediaSource", "J0", "(Lao/e;)V", "I0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "", "isAudioShowNoNetworkLayout", "()Z", "Landroid/view/LayoutInflater;", "inflater", "y0", "(Landroid/view/LayoutInflater;)Ljx/e;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "retryLoadData", "lazyLoadData", "initListener", "initViewModel", "initViewData", "loadDefaultData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onDisconnected", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "onVideoPause", "onVideoStart", "onPlayerRelease", "", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLao/e;)V", "getPageName", "subjectId", "path", "fromItemClick", "G0", "(Ljava/lang/String;Ljava/lang/String;Z)V", "Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;", "x0", "()Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "F0", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V", "H0", "E0", "Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;", "r0", "()Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;", "o0", "p0", "()I", "v0", "w0", "(Ljava/lang/String;)Ljava/lang/String;", "q0", "(Ljava/lang/String;)I", "showEmpty", "pageName", "fromItemCLick", "K0", "(Ljava/lang/String;Z)V", "Lcom/transsion/videodetail/music/adapter/a;", "a", "Lcom/transsion/videodetail/music/adapter/a;", "t0", "()Lcom/transsion/videodetail/music/adapter/a;", "setMMusicAdapter", "(Lcom/transsion/videodetail/music/adapter/a;)V", "mMusicAdapter", "Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "u0", "()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;", "mViewModel", "c", "Lao/e;", "s0", "()Lao/e;", "setMCurrentMediaSource", "mCurrentMediaSource", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class BaseMusicLikedFragment extends LazyFragment<jx.e> implements com.transsion.player.orplayer.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private com.transsion.videodetail.music.adapter.a mMusicAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MusicLikedFragmentViewModel.class), new Function0<x0>() { // from class: com.transsion.videodetail.music.ui.BaseMusicLikedFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() { // from class: com.transsion.videodetail.music.ui.BaseMusicLikedFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ao.e mCurrentMediaSource;

    public static final class a implements androidx.p009lifecycle.f {
        a() {
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onCreate(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.a(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onDestroy(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.b(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onPause(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.c(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public void onResume(androidx.p009lifecycle.u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.d(this, owner);
            BaseMusicLikedFragment.this.u0().y("Activity_onResume()");
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onStart(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.e(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onStop(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.f(this, uVar);
        }
    }

    public static final class b extends RecyclerView.l {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (parent.getAdapter() != null) {
                outRect.top = com.blankj.utilcode.util.a0.a(10.0f);
            }
            RecyclerView.Adapter adapter = parent.getAdapter();
            if (adapter == null || childAdapterPosition != adapter.getItemCount() - 1) {
                return;
            }
            outRect.bottom = com.blankj.utilcode.util.a0.a(16.0f);
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57736a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57736a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57736a;
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
            this.f57736a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void A0() {
        RecyclerView recyclerView;
        jx.e eVar = (jx.e) getMViewBinding();
        if (eVar == null || (recyclerView = eVar.f66362d) == null) {
            return;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.addItemDecoration(new b());
        com.transsion.videodetail.music.adapter.a aVar = new com.transsion.videodetail.music.adapter.a(x0());
        this.mMusicAdapter = aVar;
        aVar.w1(new p6.d() { // from class: com.transsion.videodetail.music.ui.a
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                BaseMusicLikedFragment.B0(this.f57791a, baseQuickAdapter, view, i11);
            }
        });
        aVar.l(R$id.ivNextPlay);
        aVar.s1(new p6.b() { // from class: com.transsion.videodetail.music.ui.b
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                BaseMusicLikedFragment.C0(this.f57793a, baseQuickAdapter, view, i11);
            }
        });
        recyclerView.setAdapter(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(BaseMusicLikedFragment baseMusicLikedFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        MusicLikedMultiItemEntity musicLikedMultiItemEntity = item instanceof MusicLikedMultiItemEntity ? (MusicLikedMultiItemEntity) item : null;
        if (musicLikedMultiItemEntity != null) {
            MusicLikedDbBean musicLikedDbBean = musicLikedMultiItemEntity.getMusicLikedDbBean();
            String subjectId = musicLikedDbBean != null ? musicLikedDbBean.getSubjectId() : null;
            MusicLikedDbBean musicLikedDbBean2 = musicLikedMultiItemEntity.getMusicLikedDbBean();
            baseMusicLikedFragment.G0(subjectId, musicLikedDbBean2 != null ? musicLikedDbBean2.getPath() : null, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(BaseMusicLikedFragment baseMusicLikedFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        baseMusicLikedFragment.F0(adapter, view, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit D0(BaseMusicLikedFragment baseMusicLikedFragment, List list) {
        AppCompatTextView appCompatTextView;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            baseMusicLikedFragment.showEmpty();
            com.transsion.videodetail.music.adapter.a aVar = baseMusicLikedFragment.mMusicAdapter;
            if (aVar != null) {
                aVar.n1(null);
            }
        } else {
            baseMusicLikedFragment.L0();
            kx.a.f68401a.a(baseMusicLikedFragment.getClassTag() + " --> initViewModel() --> 增量更新收藏列表");
            com.transsion.videodetail.music.adapter.a aVar2 = baseMusicLikedFragment.mMusicAdapter;
            if (aVar2 != null) {
                DiffUtil.d dVarB = DiffUtil.b(new com.transsion.videodetail.music.adapter.b(aVar2.getData(), list));
                Intrinsics.g(dVarB, "calculateDiff(...)");
                aVar2.q1(list);
                dVarB.c(aVar2);
            }
            com.transsion.videodetail.music.adapter.a aVar3 = baseMusicLikedFragment.mMusicAdapter;
            if (aVar3 != null) {
                aVar3.n1(list2);
            }
            String str = list.size() + " " + baseMusicLikedFragment.getResources().getString(R$string.music_videos);
            jx.e eVar = (jx.e) baseMusicLikedFragment.getMViewBinding();
            if (eVar != null && (appCompatTextView = eVar.f66365g) != null) {
                appCompatTextView.setText(str);
            }
            baseMusicLikedFragment.E0();
            baseMusicLikedFragment.I0(baseMusicLikedFragment.mCurrentMediaSource);
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void I0(ao.e mediaSource) {
        List<Object> data;
        RecyclerView recyclerView;
        RecyclerView.m layoutManager;
        List<Object> data2;
        int i11 = 0;
        if (mediaSource == null) {
            com.transsion.videodetail.music.adapter.a aVar = this.mMusicAdapter;
            if (aVar == null || (data2 = aVar.getData()) == null) {
                return;
            }
            for (Object obj : data2) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                MusicLikedMultiItemEntity musicLikedMultiItemEntity = (MusicLikedMultiItemEntity) obj;
                if (musicLikedMultiItemEntity.getState() == MusicLikedItemStateEnum.PLAYING) {
                    musicLikedMultiItemEntity.setState(MusicLikedItemStateEnum.NONE);
                    com.transsion.videodetail.music.adapter.a aVar2 = this.mMusicAdapter;
                    if (aVar2 != null) {
                        aVar2.notifyItemChanged(i11, musicLikedMultiItemEntity);
                    }
                }
                i11 = i12;
            }
            return;
        }
        com.transsion.videodetail.music.adapter.a aVar3 = this.mMusicAdapter;
        if (aVar3 == null || (data = aVar3.getData()) == null) {
            return;
        }
        for (Object obj2 : data) {
            int i13 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            MusicLikedMultiItemEntity musicLikedMultiItemEntity2 = (MusicLikedMultiItemEntity) obj2;
            MusicLikedItemStateEnum state = musicLikedMultiItemEntity2.getState();
            MusicLikedItemStateEnum musicLikedItemStateEnum = MusicLikedItemStateEnum.PLAYING;
            if (state == musicLikedItemStateEnum) {
                musicLikedMultiItemEntity2.setState(MusicLikedItemStateEnum.NONE);
                com.transsion.videodetail.music.adapter.a aVar4 = this.mMusicAdapter;
                if (aVar4 != null) {
                    aVar4.notifyItemChanged(i11, musicLikedMultiItemEntity2);
                }
            }
            MusicLikedDbBean musicLikedDbBean = musicLikedMultiItemEntity2.getMusicLikedDbBean();
            String subjectId = musicLikedDbBean != null ? musicLikedDbBean.getSubjectId() : null;
            MediaItem mediaItemI = mediaSource.i();
            if (TextUtils.equals(subjectId, mediaItemI != null ? mediaItemI.getSubjectId() : null)) {
                musicLikedMultiItemEntity2.setState(musicLikedItemStateEnum);
                com.transsion.videodetail.music.adapter.a aVar5 = this.mMusicAdapter;
                if (aVar5 != null) {
                    aVar5.notifyItemChanged(i11, musicLikedMultiItemEntity2);
                }
                jx.e eVar = (jx.e) getMViewBinding();
                if (eVar != null && (recyclerView = eVar.f66362d) != null && (layoutManager = recyclerView.getLayoutManager()) != null) {
                    layoutManager.scrollToPosition(i11);
                }
            }
            i11 = i13;
        }
    }

    private final void J0(ao.e mediaSource) {
        MediaItem mediaItemI;
        MediaItem mediaItemI2;
        String subjectId = null;
        String subjectId2 = (mediaSource == null || (mediaItemI2 = mediaSource.i()) == null) ? null : mediaItemI2.getSubjectId();
        ao.e eVar = this.mCurrentMediaSource;
        if (eVar != null && (mediaItemI = eVar.i()) != null) {
            subjectId = mediaItemI.getSubjectId();
        }
        if (TextUtils.equals(subjectId2, subjectId)) {
            return;
        }
        this.mCurrentMediaSource = mediaSource;
        kx.a.f68401a.a(getClassTag() + " --> refreshStateView() --> 音乐切换了");
        H0(mediaSource);
        I0(mediaSource);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void L0() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        RecyclerView recyclerView;
        MusicLikedListEmptyView musicLikedListEmptyView;
        MusicLikedListLoadingView musicLikedListLoadingView;
        jx.e eVar = (jx.e) getMViewBinding();
        if (eVar != null && (musicLikedListLoadingView = eVar.f66363e) != null) {
            musicLikedListLoadingView.setVisibility(8);
        }
        jx.e eVar2 = (jx.e) getMViewBinding();
        if (eVar2 != null && (musicLikedListEmptyView = eVar2.f66360b) != null) {
            musicLikedListEmptyView.setVisibility(8);
        }
        jx.e eVar3 = (jx.e) getMViewBinding();
        if (eVar3 != null && (recyclerView = eVar3.f66362d) != null) {
            recyclerView.setVisibility(0);
        }
        if (x0() == MusicLikedUITypeEnum.MUSIC_DETAIL) {
            jx.e eVar4 = (jx.e) getMViewBinding();
            if (eVar4 != null && (appCompatTextView4 = eVar4.f66365g) != null) {
                appCompatTextView4.setVisibility(8);
            }
            jx.e eVar5 = (jx.e) getMViewBinding();
            if (eVar5 == null || (appCompatTextView3 = eVar5.f66364f) == null) {
                return;
            }
            appCompatTextView3.setVisibility(8);
            return;
        }
        jx.e eVar6 = (jx.e) getMViewBinding();
        if (eVar6 != null && (appCompatTextView2 = eVar6.f66365g) != null) {
            appCompatTextView2.setVisibility(0);
        }
        jx.e eVar7 = (jx.e) getMViewBinding();
        if (eVar7 == null || (appCompatTextView = eVar7.f66364f) == null) {
            return;
        }
        appCompatTextView.setVisibility(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void showLoading() {
        RecyclerView recyclerView;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        MusicLikedListEmptyView musicLikedListEmptyView;
        MusicLikedListLoadingView musicLikedListLoadingView;
        jx.e eVar = (jx.e) getMViewBinding();
        if (eVar != null && (musicLikedListLoadingView = eVar.f66363e) != null) {
            musicLikedListLoadingView.setVisibility(0);
        }
        jx.e eVar2 = (jx.e) getMViewBinding();
        if (eVar2 != null && (musicLikedListEmptyView = eVar2.f66360b) != null) {
            musicLikedListEmptyView.setVisibility(8);
        }
        jx.e eVar3 = (jx.e) getMViewBinding();
        if (eVar3 != null && (appCompatTextView2 = eVar3.f66365g) != null) {
            appCompatTextView2.setVisibility(8);
        }
        jx.e eVar4 = (jx.e) getMViewBinding();
        if (eVar4 != null && (appCompatTextView = eVar4.f66364f) != null) {
            appCompatTextView.setVisibility(8);
        }
        jx.e eVar5 = (jx.e) getMViewBinding();
        if (eVar5 == null || (recyclerView = eVar5.f66362d) == null) {
            return;
        }
        recyclerView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(View view) {
    }

    public abstract void E0();

    public abstract void F0(BaseQuickAdapter adapter, View view, int position);

    public abstract void G0(String subjectId, String path, boolean fromItemClick);

    public abstract void H0(ao.e mediaSource);

    public final void K0(String pageName, boolean fromItemCLick) {
        Intrinsics.h(pageName, "pageName");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, fromItemCLick ? WebConstants.FIELD_ITEM : "play_all");
        hj.i.f64505a.p(pageName, linkedHashMap);
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    public abstract String getPageName();

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        MusicLikedListEmptyView musicLikedListEmptyView;
        FragmentActivity activity = getActivity();
        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
        if (appCompatActivity != null) {
            appCompatActivity.getLifecycle().a(new a());
        }
        jx.e eVar = (jx.e) getMViewBinding();
        if (eVar == null || (musicLikedListEmptyView = eVar.f66360b) == null) {
            return;
        }
        musicLikedListEmptyView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.music.ui.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseMusicLikedFragment.z0(view);
            }
        });
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        A0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        u0().C().j(this, new c(new Function1() { // from class: com.transsion.videodetail.music.ui.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BaseMusicLikedFragment.D0(this.f57795a, (List) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        super.loadDefaultData();
        showLoading();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    public final MusicLikedMultiItemEntity o0() {
        List<Object> data;
        MediaItem mediaItemI;
        com.transsion.videodetail.music.adapter.a aVar = this.mMusicAdapter;
        if (aVar != null && (data = aVar.getData()) != null) {
            int i11 = 0;
            for (Object obj : data) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                MusicLikedMultiItemEntity musicLikedMultiItemEntity = (MusicLikedMultiItemEntity) obj;
                ao.e eVar = this.mCurrentMediaSource;
                String subjectId = (eVar == null || (mediaItemI = eVar.i()) == null) ? null : mediaItemI.getSubjectId();
                MusicLikedDbBean musicLikedDbBean = musicLikedMultiItemEntity.getMusicLikedDbBean();
                if (TextUtils.equals(subjectId, musicLikedDbBean != null ? musicLikedDbBean.getSubjectId() : null)) {
                    return musicLikedMultiItemEntity;
                }
                i11 = i12;
            }
        }
        return null;
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
    public void onCompletion(ao.e eVar) {
        com.transsion.player.orplayer.f.a.e(this, eVar);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        u0().y("onConnected()");
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        kx.a.f68401a.a(getClassTag() + " --> onCreate() --> 音乐收藏列表");
        MusicFloatManager.f43454h.b().k(this);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MusicFloatManager.f43454h.b().z(this);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, nh.n
    public void onDisconnected() {
        super.onDisconnected();
        u0().y("onDisconnected()");
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

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError playError, ao.e eVar) {
        com.transsion.player.orplayer.f.a.q(this, playError, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.t(this, mediaSource);
        kx.a.f68401a.a(getClassTag() + " --> onPlayerRelease()");
        J0(null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        com.transsion.player.orplayer.f.a.v(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e eVar) {
        com.transsion.player.orplayer.f.a.w(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long progress, ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.y(this, progress, mediaSource);
        J0(mediaSource);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.f.a.A(this);
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
    public void onVideoPause(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.F(this, mediaSource);
        J0(null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.I(this, mediaSource);
        J0(mediaSource);
    }

    public final int p0() {
        List<Object> data;
        MediaItem mediaItemI;
        com.transsion.videodetail.music.adapter.a aVar = this.mMusicAdapter;
        if (aVar == null || (data = aVar.getData()) == null) {
            return -1;
        }
        int i11 = 0;
        for (Object obj : data) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            MusicLikedMultiItemEntity musicLikedMultiItemEntity = (MusicLikedMultiItemEntity) obj;
            ao.e eVar = this.mCurrentMediaSource;
            String subjectId = (eVar == null || (mediaItemI = eVar.i()) == null) ? null : mediaItemI.getSubjectId();
            MusicLikedDbBean musicLikedDbBean = musicLikedMultiItemEntity.getMusicLikedDbBean();
            if (TextUtils.equals(subjectId, musicLikedDbBean != null ? musicLikedDbBean.getSubjectId() : null)) {
                return i11;
            }
            i11 = i12;
        }
        return -1;
    }

    public final int q0(String subjectId) {
        List<Object> data;
        com.transsion.videodetail.music.adapter.a aVar = this.mMusicAdapter;
        int i11 = -1;
        if (aVar != null && (data = aVar.getData()) != null) {
            int i12 = 0;
            for (Object obj : data) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                MusicLikedDbBean musicLikedDbBean = ((MusicLikedMultiItemEntity) obj).getMusicLikedDbBean();
                if (TextUtils.equals(subjectId, musicLikedDbBean != null ? musicLikedDbBean.getSubjectId() : null)) {
                    i11 = i12;
                }
                i12 = i13;
            }
        }
        return i11;
    }

    public final MusicLikedMultiItemEntity r0() {
        com.transsion.videodetail.music.adapter.a aVar;
        List<Object> data;
        List<Object> data2;
        com.transsion.videodetail.music.adapter.a aVar2 = this.mMusicAdapter;
        if ((aVar2 != null && (data2 = aVar2.getData()) != null && data2.isEmpty()) || (aVar = this.mMusicAdapter) == null || (data = aVar.getData()) == null) {
            return null;
        }
        return (MusicLikedMultiItemEntity) data.get(0);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    /* JADX INFO: renamed from: s0, reason: from getter */
    protected final ao.e getMCurrentMediaSource() {
        return this.mCurrentMediaSource;
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void showEmpty() {
        RecyclerView recyclerView;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        MusicLikedListLoadingView musicLikedListLoadingView;
        MusicLikedListEmptyView musicLikedListEmptyView;
        jx.e eVar = (jx.e) getMViewBinding();
        if (eVar != null && (musicLikedListEmptyView = eVar.f66360b) != null) {
            musicLikedListEmptyView.setVisibility(0);
        }
        jx.e eVar2 = (jx.e) getMViewBinding();
        if (eVar2 != null && (musicLikedListLoadingView = eVar2.f66363e) != null) {
            musicLikedListLoadingView.setVisibility(8);
        }
        jx.e eVar3 = (jx.e) getMViewBinding();
        if (eVar3 != null && (appCompatTextView2 = eVar3.f66365g) != null) {
            appCompatTextView2.setVisibility(8);
        }
        jx.e eVar4 = (jx.e) getMViewBinding();
        if (eVar4 != null && (appCompatTextView = eVar4.f66364f) != null) {
            appCompatTextView.setVisibility(8);
        }
        jx.e eVar5 = (jx.e) getMViewBinding();
        if (eVar5 == null || (recyclerView = eVar5.f66362d) == null) {
            return;
        }
        recyclerView.setVisibility(8);
    }

    /* JADX INFO: renamed from: t0, reason: from getter */
    protected final com.transsion.videodetail.music.adapter.a getMMusicAdapter() {
        return this.mMusicAdapter;
    }

    protected final MusicLikedFragmentViewModel u0() {
        return (MusicLikedFragmentViewModel) this.mViewModel.getValue();
    }

    public final String v0() {
        Object objM454constructorimpl;
        List<Object> data;
        MusicLikedMultiItemEntity musicLikedMultiItemEntity;
        MusicLikedDbBean musicLikedDbBean;
        List<Object> data2;
        MusicLikedMultiItemEntity musicLikedMultiItemEntity2;
        MusicLikedDbBean musicLikedDbBean2;
        List<Object> data3;
        List<Object> data4;
        com.transsion.videodetail.music.adapter.a aVar = this.mMusicAdapter;
        Object obj = null;
        if (aVar != null && (data4 = aVar.getData()) != null && data4.size() == 0) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            int iP0 = p0();
            if (iP0 < 0) {
                return null;
            }
            int i11 = iP0 + 1;
            com.transsion.videodetail.music.adapter.a aVar2 = this.mMusicAdapter;
            if (i11 >= ((aVar2 == null || (data3 = aVar2.getData()) == null) ? 0 : data3.size())) {
                com.transsion.videodetail.music.adapter.a aVar3 = this.mMusicAdapter;
                if (aVar3 == null || (data2 = aVar3.getData()) == null || (musicLikedMultiItemEntity2 = (MusicLikedMultiItemEntity) data2.get(0)) == null || (musicLikedDbBean2 = musicLikedMultiItemEntity2.getMusicLikedDbBean()) == null) {
                    return null;
                }
                return musicLikedDbBean2.getSubjectId();
            }
            com.transsion.videodetail.music.adapter.a aVar4 = this.mMusicAdapter;
            objM454constructorimpl = Result.m454constructorimpl((aVar4 == null || (data = aVar4.getData()) == null || (musicLikedMultiItemEntity = (MusicLikedMultiItemEntity) data.get(i11)) == null || (musicLikedDbBean = musicLikedMultiItemEntity.getMusicLikedDbBean()) == null) ? null : musicLikedDbBean.getSubjectId());
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl == null) {
                obj = objM454constructorimpl;
            } else {
                kx.a.f68401a.b(getClassTag() + " --> getNext() --> it = " + thM457exceptionOrNullimpl);
            }
            return (String) obj;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final String w0(String subjectId) {
        Object objM454constructorimpl;
        List<Object> data;
        MusicLikedMultiItemEntity musicLikedMultiItemEntity;
        MusicLikedDbBean musicLikedDbBean;
        List<Object> data2;
        MusicLikedMultiItemEntity musicLikedMultiItemEntity2;
        MusicLikedDbBean musicLikedDbBean2;
        List<Object> data3;
        List<Object> data4;
        com.transsion.videodetail.music.adapter.a aVar = this.mMusicAdapter;
        Object obj = null;
        if (aVar != null && (data4 = aVar.getData()) != null && data4.size() == 0) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            int iQ0 = q0(subjectId);
            if (iQ0 < 0) {
                return null;
            }
            int i11 = iQ0 + 1;
            com.transsion.videodetail.music.adapter.a aVar2 = this.mMusicAdapter;
            if (i11 >= ((aVar2 == null || (data3 = aVar2.getData()) == null) ? 0 : data3.size())) {
                com.transsion.videodetail.music.adapter.a aVar3 = this.mMusicAdapter;
                if (aVar3 == null || (data2 = aVar3.getData()) == null || (musicLikedMultiItemEntity2 = (MusicLikedMultiItemEntity) data2.get(0)) == null || (musicLikedDbBean2 = musicLikedMultiItemEntity2.getMusicLikedDbBean()) == null) {
                    return null;
                }
                return musicLikedDbBean2.getSubjectId();
            }
            com.transsion.videodetail.music.adapter.a aVar4 = this.mMusicAdapter;
            objM454constructorimpl = Result.m454constructorimpl((aVar4 == null || (data = aVar4.getData()) == null || (musicLikedMultiItemEntity = (MusicLikedMultiItemEntity) data.get(i11)) == null || (musicLikedDbBean = musicLikedMultiItemEntity.getMusicLikedDbBean()) == null) ? null : musicLikedDbBean.getSubjectId());
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl == null) {
                obj = objM454constructorimpl;
            } else {
                kx.a.f68401a.b(getClassTag() + " --> getNext() --> it = " + thM457exceptionOrNullimpl);
            }
            return (String) obj;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public abstract MusicLikedUITypeEnum x0();

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: y0, reason: merged with bridge method [inline-methods] */
    public jx.e getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        jx.e eVarC = jx.e.c(getLayoutInflater());
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }
}
