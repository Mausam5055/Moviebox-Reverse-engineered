package com.transsion.home.fragment.film;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.os.d;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.gslb.Utils;
import com.transsion.home.adapter.e;
import com.transsion.home.bean.UGCRankAllData;
import com.transsion.home.bean.UgcGenreTopRespGenreItem;
import com.transsion.home.fragment.film.UGCFilmListFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.viewmodel.UGCFilmListViewModel;
import com.transsion.home.viewmodel.UGCRankingViewModel;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.n;
import hj.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import nh.m;
import nl.a;
import oh.h;
import r6.f;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\b\u0007\u0018\u0000 a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00019B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0003¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u001d\u0010\u0012\u001a\u00020\u00072\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\r\u0010\u001d\u001a\u00020\u0007¢\u0006\u0004\b\u001d\u0010\u0004J\r\u0010\u001e\u001a\u00020\u0007¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0007H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020!H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0007H\u0016¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0007H\u0016¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0007H\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0007H\u0016¢\u0006\u0004\b-\u0010\u0004J\u001f\u00101\u001a\u00020\u00072\b\u0010/\u001a\u0004\u0018\u00010.2\u0006\u00100\u001a\u00020\u0018¢\u0006\u0004\b1\u00102J\u0015\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u000203¢\u0006\u0004\b5\u00106J\r\u00107\u001a\u00020\u0018¢\u0006\u0004\b7\u0010\u001aR\u0018\u00104\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010=\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010?\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010<R\u0016\u0010A\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010<R\u0016\u0010C\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010<R\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010J\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010L\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010<R\u0016\u0010O\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0016\u0010Q\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010<R\u0016\u0010S\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010<R\u0018\u0010V\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0018\u0010Z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010^\u001a\u00020[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010`\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010N¨\u0006b"}, d2 = {"Lcom/transsion/home/fragment/film/UGCFilmListFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lgl/n;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Cover;", "cover", "", "G0", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "B0", "Lcom/transsion/home/adapter/e;", "x0", "()Lcom/transsion/home/adapter/e;", "reload", "", "Lcom/transsion/home/bean/UgcGenreTopRespGenreItem;", "filmList", "K0", "(Ljava/util/List;)V", "Landroid/view/LayoutInflater;", "inflater", "w0", "(Landroid/view/LayoutInflater;)Lgl/n;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "receiveArguments", "initViewData", "hideLoading", "startLoading", "initViewModel", "initListener", "", "isMonitorNetworkState", "()Z", "hidden", "onHiddenChanged", "(Z)V", "onPause", "retryLoadData", "loadDefaultData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onDestroy", "Lcom/transsion/home/bean/UGCRankAllData;", "data", "rankCategory", "L0", "(Lcom/transsion/home/bean/UGCRankAllData;Ljava/lang/String;)V", "Lcom/transsion/home/viewmodel/UGCRankingViewModel;", "viewModel", "H0", "(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)V", "getPageName", "Lcom/transsion/home/viewmodel/UGCFilmListViewModel;", "a", "Lcom/transsion/home/viewmodel/UGCFilmListViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "tabId", "c", "fromOptId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "filmType", "e", "mFilmListTitle", "Lhl/b;", "f", "Lhl/b;", "mExposureHelper", "g", "Lcom/transsion/home/adapter/e;", "mFilmListAdapter", "h", "mFilmListCover", "i", "Z", "isRankingMode", "j", "rankingCategory", CampaignEx.JSON_KEY_AD_K, "videoType", "l", "Lcom/transsion/home/viewmodel/UGCRankingViewModel;", "rankingViewModel", "Lnl/a;", "m", "Lnl/a;", "headerMaskManager", "", "n", "J", "firstLoadStartTimeMillis", "o", "hasRecordedFirstLoadDuration", TtmlNode.TAG_P, "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCFilmListFragment extends PageStatusFragment<n> {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f44945q = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private UGCFilmListViewModel viewModel;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private hl.b mExposureHelper;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private e mFilmListAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean isRankingMode;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private UGCRankingViewModel rankingViewModel;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private a headerMaskManager;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private long firstLoadStartTimeMillis;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean hasRecordedFirstLoadDuration;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String tabId = "0";

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String fromOptId = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String filmType = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mFilmListTitle = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String mFilmListCover = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String rankingCategory = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String videoType = "";

    /* JADX INFO: renamed from: com.transsion.home.fragment.film.UGCFilmListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ UGCFilmListFragment b(Companion companion, String str, String str2, String str3, boolean z10, String str4, String str5, int i11, Object obj) {
            if ((i11 & 8) != 0) {
                z10 = false;
            }
            return companion.a(str, str2, str3, z10, str4, str5);
        }

        public final UGCFilmListFragment a(String tabId, String filmType, String mFilmListTitle, boolean z10, String videoType, String fromOptId) {
            Intrinsics.h(tabId, "tabId");
            Intrinsics.h(filmType, "filmType");
            Intrinsics.h(mFilmListTitle, "mFilmListTitle");
            Intrinsics.h(videoType, "videoType");
            Intrinsics.h(fromOptId, "fromOptId");
            UGCFilmListFragment uGCFilmListFragment = new UGCFilmListFragment();
            uGCFilmListFragment.setArguments(d.b(TuplesKt.a("tabId", tabId), TuplesKt.a("filmType", filmType), TuplesKt.a("filmListTitle", mFilmListTitle), TuplesKt.a("onlyShowList", Boolean.valueOf(z10)), TuplesKt.a("videoType", videoType), TuplesKt.a("fromOptId", fromOptId)));
            return uGCFilmListFragment;
        }
    }

    public static final class b implements hl.a {
        b() {
        }

        @Override // hl.a
        public void a(int i11, long j11, View view) {
            String collectionId;
            String ugcVideoId;
            String subjectId;
            UGCVideo video;
            String ops;
            UGCVideo video2;
            UGCVideo video3;
            UGCVideo video4;
            UGCVideoBelongToCollection belongToCollection;
            List<Object> data;
            e eVar = UGCFilmListFragment.this.mFilmListAdapter;
            if (i11 >= ((eVar == null || (data = eVar.getData()) == null) ? 0 : data.size())) {
                return;
            }
            e eVar2 = UGCFilmListFragment.this.mFilmListAdapter;
            UGCContent uGCContent = eVar2 != null ? (UGCContent) eVar2.getItem(i11) : null;
            HashMap map = new HashMap();
            map.put("browse_duration", String.valueOf(j11));
            map.put("module_name", WebConstants.FIELD_ITEM);
            if (UGCFilmListFragment.this.isRankingMode) {
                map.put("rank_category", UGCFilmListFragment.this.rankingCategory);
            }
            String str = "";
            if (uGCContent == null || (video4 = uGCContent.getVideo()) == null || (belongToCollection = video4.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
                collectionId = "";
            }
            map.put("belong_to_collection_id", collectionId);
            if (uGCContent == null || (video3 = uGCContent.getVideo()) == null || (ugcVideoId = video3.getUgcVideoId()) == null) {
                ugcVideoId = "";
            }
            map.put("content_id", ugcVideoId);
            if (uGCContent == null || (video2 = uGCContent.getVideo()) == null || (subjectId = video2.getSubjectId()) == null) {
                subjectId = "";
            }
            map.put("refer_subject_id", subjectId);
            map.put("content_type", "ugc_video");
            if (uGCContent != null && (video = uGCContent.getVideo()) != null && (ops = video.getOps()) != null) {
                str = ops;
            }
            map.put("ops", str);
            map.put(CampaignEx.JSON_KEY_TITLE, UGCFilmListFragment.this.isRankingMode ? UGCFilmListFragment.this.rankingCategory : UGCFilmListFragment.this.mFilmListTitle);
            com.transsion.baselib.helper.a.f43262a.e(UGCFilmListFragment.this.getPageName(), map);
        }
    }

    static final class c implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f44962a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f44962a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f44962a;
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
            this.f44962a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(UGCFilmListFragment uGCFilmListFragment, BaseQuickAdapter adapter, View view, int i11) {
        String subjectId;
        String ops;
        UGCVideoBelongToCollection belongToCollection;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i11);
        if (item instanceof UGCContent) {
            UGCContent uGCContent = (UGCContent) item;
            String collectionId = null;
            ov.c.f(uGCContent, null, null, 3, null);
            UGCVideo video = uGCContent.getVideo();
            String ugcVideoId = video != null ? video.getUgcVideoId() : null;
            UGCVideo video2 = uGCContent.getVideo();
            if (video2 != null && (belongToCollection = video2.getBelongToCollection()) != null) {
                collectionId = belongToCollection.getCollectionId();
            }
            lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "initFilmListAdapter: item clicked, position=" + i11 + ", topicType=" + uGCContent.getTopicType() + ", videoId=" + ugcVideoId + ", collectionId=" + collectionId, false, 4, null);
            HashMap map = new HashMap();
            map.put("module_name", WebConstants.FIELD_ITEM);
            if (uGCFilmListFragment.isRankingMode) {
                map.put("rank_category", uGCFilmListFragment.rankingCategory);
            }
            String str = "";
            if (collectionId == null) {
                collectionId = "";
            }
            map.put("belong_to_collection_id", collectionId);
            if (ugcVideoId == null) {
                ugcVideoId = "";
            }
            map.put("content_id", ugcVideoId);
            UGCVideo video3 = uGCContent.getVideo();
            if (video3 == null || (subjectId = video3.getSubjectId()) == null) {
                subjectId = "";
            }
            map.put("refer_subject_id", subjectId);
            map.put("content_type", "ugc_video");
            UGCVideo video4 = uGCContent.getVideo();
            if (video4 != null && (ops = video4.getOps()) != null) {
                str = ops;
            }
            map.put("ops", str);
            com.transsion.baselib.helper.a.f43262a.f(uGCFilmListFragment.getPageName(), map);
        }
    }

    private final void B0() {
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout;
        n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout = mViewBinding.f63791f) != null) {
            swipeRefreshLayout.setEnabled(true);
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: kl.e
                @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                public final void a() {
                    UGCFilmListFragment.C0(this.f66904a);
                }
            });
        }
        n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f63790e) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setItemAnimator(null);
        hl.b bVar = new hl.b(0.6f, new b(), false, 4, null);
        bVar.l(2);
        recyclerView.addOnScrollListener(bVar);
        this.mExposureHelper = bVar;
        recyclerView.setAdapter(x0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(UGCFilmListFragment uGCFilmListFragment) {
        lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "initRecyclerView: user pull to refresh", false, 4, null);
        hl.b bVar = uGCFilmListFragment.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        if (uGCFilmListFragment.isRankingMode) {
            UGCRankingViewModel uGCRankingViewModel = uGCFilmListFragment.rankingViewModel;
            if (uGCRankingViewModel != null) {
                uGCRankingViewModel.n();
                return;
            }
            return;
        }
        UGCFilmListViewModel uGCFilmListViewModel = uGCFilmListFragment.viewModel;
        if (uGCFilmListViewModel != null) {
            uGCFilmListViewModel.p();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(UGCFilmListFragment uGCFilmListFragment, View view) {
        FragmentActivity activity = uGCFilmListFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(UGCFilmListFragment uGCFilmListFragment, String str) {
        TitleLayout titleLayout;
        TitleLayout titleLayout2;
        TnTextView tvTitleText;
        CharSequence text;
        if (!uGCFilmListFragment.isRankingMode) {
            n mViewBinding = uGCFilmListFragment.getMViewBinding();
            String string = (mViewBinding == null || (titleLayout2 = mViewBinding.f63792g) == null || (tvTitleText = titleLayout2.getTvTitleText()) == null || (text = tvTitleText.getText()) == null) ? null : text.toString();
            if ((string == null || string.length() == 0) && str != null && str.length() > 0) {
                lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "filmListDescLiveData: set title from desc='" + str + "'", false, 4, null);
                uGCFilmListFragment.mFilmListTitle = str;
                n mViewBinding2 = uGCFilmListFragment.getMViewBinding();
                if (mViewBinding2 != null && (titleLayout = mViewBinding2.f63792g) != null) {
                    titleLayout.setTitleText(str);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F0(UGCFilmListFragment uGCFilmListFragment, List list) {
        List listL;
        e eVar;
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        f fVarH0;
        List<Object> data2;
        List<Object> data3;
        HashMap mapG;
        List<Object> data4;
        f fVarH1;
        e eVar2;
        f fVarH2;
        SwipeRefreshLayout swipeRefreshLayout2;
        if (list != null) {
            List list2 = list;
            listL = new ArrayList(CollectionsKt.v(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                listL.add(((UgcGenreTopRespGenreItem) it.next()).getUgcContent());
            }
        } else {
            listL = CollectionsKt.l();
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        Integer numValueOf = list != null ? Integer.valueOf(list.size()) : null;
        int size = listL.size();
        boolean z10 = list == null;
        lg.a.C0828a.f(c0828a, "FilmListFragment", "filmListLiveData: data received, rawItems=" + numValueOf + ", flattened=" + size + ", isNull=" + z10 + ", isRankingMode=" + uGCFilmListFragment.isRankingMode, false, 4, null);
        if (!uGCFilmListFragment.isRankingMode) {
            uGCFilmListFragment.showContentView();
        }
        n mViewBinding = uGCFilmListFragment.getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout2 = mViewBinding.f63791f) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        e eVar3 = uGCFilmListFragment.mFilmListAdapter;
        if (eVar3 != null && (fVarH1 = eVar3.h0()) != null && fVarH1.r() && (eVar2 = uGCFilmListFragment.mFilmListAdapter) != null && (fVarH2 = eVar2.h0()) != null) {
            fVarH2.s();
        }
        if (list != null) {
            e eVar4 = uGCFilmListFragment.mFilmListAdapter;
            boolean z11 = (eVar4 == null || (data4 = eVar4.getData()) == null || !data4.isEmpty()) ? false : true;
            if (!uGCFilmListFragment.isRankingMode && z11 && !uGCFilmListFragment.hasRecordedFirstLoadDuration && uGCFilmListFragment.firstLoadStartTimeMillis > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - uGCFilmListFragment.firstLoadStartTimeMillis;
                hj.b logViewConfig = uGCFilmListFragment.getLogViewConfig();
                if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
                    mapG.put("load_duration", String.valueOf(jCurrentTimeMillis));
                }
                uGCFilmListFragment.hasRecordedFirstLoadDuration = true;
            }
            int size2 = listL.size();
            e eVar5 = uGCFilmListFragment.mFilmListAdapter;
            Integer numValueOf2 = (eVar5 == null || (data3 = eVar5.getData()) == null) ? null : Integer.valueOf(data3.size());
            UGCFilmListViewModel uGCFilmListViewModel = uGCFilmListFragment.viewModel;
            lg.a.C0828a.f(c0828a, "FilmListFragment", "filmListLiveData: received " + size2 + " contents, currentListSize=" + numValueOf2 + ", hasMore=" + (uGCFilmListViewModel != null ? Boolean.valueOf(uGCFilmListViewModel.l()) : null), false, 4, null);
            UGCFilmListViewModel uGCFilmListViewModel2 = uGCFilmListFragment.viewModel;
            if (uGCFilmListViewModel2 == null || !uGCFilmListViewModel2.l()) {
                lg.a.C0828a.f(c0828a, "FilmListFragment", "filmListLiveData: no more data, load more end", false, 4, null);
                e eVar6 = uGCFilmListFragment.mFilmListAdapter;
                if (eVar6 != null && (fVarH0 = eVar6.h0()) != null) {
                    f.u(fVarH0, false, 1, null);
                }
            }
            e eVar7 = uGCFilmListFragment.mFilmListAdapter;
            if (eVar7 == null || (data2 = eVar7.getData()) == null || !data2.isEmpty() || size2 != 0) {
                uGCFilmListFragment.K0(list);
            } else {
                lg.a.C0828a.f(c0828a, "FilmListFragment", "filmListLiveData: empty data, isRankingMode=" + uGCFilmListFragment.isRankingMode, false, 4, null);
                if (!uGCFilmListFragment.isRankingMode) {
                    uGCFilmListFragment.showEmptyView(true);
                }
            }
            hj.b logViewConfig2 = uGCFilmListFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.k(true);
            }
        } else {
            c0828a.i("FilmListFragment", "filmListLiveData: data is null, isRankingMode=" + uGCFilmListFragment.isRankingMode, true);
            n mViewBinding2 = uGCFilmListFragment.getMViewBinding();
            if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f63791f) != null) {
                swipeRefreshLayout.setRefreshing(false);
            }
            if (!uGCFilmListFragment.isRankingMode && (eVar = uGCFilmListFragment.mFilmListAdapter) != null && (data = eVar.getData()) != null && data.isEmpty()) {
                uGCFilmListFragment.showEmptyView(true);
            }
        }
        return Unit.f67061a;
    }

    private final void G0(Cover cover) {
        String averageHueDark;
        Object objM454constructorimpl;
        ImageView imageView;
        String url;
        String thumbnail;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        n mViewBinding = getMViewBinding();
        String str = "";
        if (mViewBinding != null && (imageView = mViewBinding.f63788c) != null) {
            ej.f.b bVarM = ej.f.f61882a.m(activity);
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            if (cover == null || (thumbnail = cover.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarG.l(thumbnail).d(imageView);
        }
        if (cover == null || (averageHueDark = cover.getAverageHueDark()) == null) {
            return;
        }
        Unit unit = null;
        if (StringsKt.c0(averageHueDark, Utils.SEPARATOR, false, 2, null)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                String averageHueDark2 = cover.getAverageHueDark();
                if (averageHueDark2 != null) {
                    str = averageHueDark2;
                }
                int color = Color.parseColor(str);
                a aVar = this.headerMaskManager;
                if (aVar != null) {
                    aVar.a(Integer.valueOf(color));
                    unit = Unit.f67061a;
                }
                objM454constructorimpl = Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                lg.a.C0828a.l(lg.a.f68839a, "FilmListFragment", "initRecyclerView: parseColor failed, use default color", false, 4, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(final UGCFilmListFragment uGCFilmListFragment, final UGCRankAllData uGCRankAllData) {
        RecyclerView recyclerView;
        f fVarH0;
        Pager pager;
        List<UGCContent> items;
        lg.a.C0828a c0828a = lg.a.f68839a;
        Boolean hasMore = null;
        Integer numValueOf = (uGCRankAllData == null || (items = uGCRankAllData.getItems()) == null) ? null : Integer.valueOf(items.size());
        if (uGCRankAllData != null && (pager = uGCRankAllData.getPager()) != null) {
            hasMore = pager.getHasMore();
        }
        lg.a.C0828a.f(c0828a, "FilmListFragment", "loadMoreLiveData: received data, items size=" + numValueOf + ", hasMore=" + hasMore, false, 4, null);
        if (uGCRankAllData == null) {
            lg.a.C0828a.z(c0828a, "FilmListFragment", "loadMoreLiveData: data is null, load more failed", false, 4, null);
            e eVar = uGCFilmListFragment.mFilmListAdapter;
            if (eVar != null && (fVarH0 = eVar.h0()) != null) {
                fVarH0.v();
            }
        } else {
            List<UGCContent> items2 = uGCRankAllData.getItems();
            if (items2 == null) {
                items2 = CollectionsKt.l();
            }
            List<UGCContent> list = items2;
            lg.a.C0828a.f(c0828a, "FilmListFragment", "loadMoreLiveData: add " + list.size() + " items to list", false, 4, null);
            e eVar2 = uGCFilmListFragment.mFilmListAdapter;
            if (eVar2 != null) {
                eVar2.q(list);
            }
            n mViewBinding = uGCFilmListFragment.getMViewBinding();
            if (mViewBinding != null && (recyclerView = mViewBinding.f63790e) != null) {
                recyclerView.postDelayed(new Runnable() { // from class: kl.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        UGCFilmListFragment.J0(this.f66905a, uGCRankAllData);
                    }
                }, 300L);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(UGCFilmListFragment uGCFilmListFragment, UGCRankAllData uGCRankAllData) {
        f fVarH0;
        f fVarH1;
        e eVar;
        f fVarH2;
        e eVar2 = uGCFilmListFragment.mFilmListAdapter;
        if (eVar2 != null && (fVarH1 = eVar2.h0()) != null && fVarH1.r() && (eVar = uGCFilmListFragment.mFilmListAdapter) != null && (fVarH2 = eVar.h0()) != null) {
            fVarH2.s();
        }
        Pager pager = uGCRankAllData.getPager();
        if (pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.TRUE) : false) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "loadMoreLiveData: no more data, load more end", false, 4, null);
        e eVar3 = uGCFilmListFragment.mFilmListAdapter;
        if (eVar3 == null || (fVarH0 = eVar3.h0()) == null) {
            return;
        }
        f.u(fVarH0, false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00bb  */
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
    private final void K0(List filmList) {
        boolean z10;
        HashMap mapG;
        UGCVideo video;
        UGCVideo video2;
        UGCCollection collection;
        UGCVideo video3;
        Cover cover;
        List<Object> data;
        List<Object> data2;
        ArrayList arrayList = new ArrayList();
        Iterator it = filmList.iterator();
        while (it.hasNext()) {
            UGCContent ugcContent = ((UgcGenreTopRespGenreItem) it.next()).getUgcContent();
            if (ugcContent != null) {
                arrayList.add(ugcContent);
            }
        }
        e eVar = this.mFilmListAdapter;
        size = 0;
        int size = 0;
        int size2 = (eVar == null || (data2 = eVar.getData()) == null) ? 0 : data2.size();
        UGCFilmListViewModel uGCFilmListViewModel = this.viewModel;
        boolean zN = uGCFilmListViewModel != null ? uGCFilmListViewModel.n() : false;
        Cover cover2 = null;
        if (zN || size2 == 0) {
            hl.b bVar = this.mExposureHelper;
            if (bVar != null) {
                bVar.e();
            }
            UGCContent uGCContent = (UGCContent) CollectionsKt.k0(arrayList);
            if (!Intrinsics.c((uGCContent == null || (video2 = uGCContent.getVideo()) == null) ? null : video2.getCategory(), UGCVideoType.EDUCATION.getValue())) {
                e eVar2 = this.mFilmListAdapter;
                z10 = eVar2 != null ? eVar2.getIsEducationList() : false;
            }
            e eVar3 = this.mFilmListAdapter;
            if (eVar3 != null) {
                eVar3.R1(z10);
            }
            e eVar4 = this.mFilmListAdapter;
            if (eVar4 != null) {
                eVar4.n1(arrayList);
            }
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
                UGCContent uGCContent2 = (UGCContent) CollectionsKt.k0(arrayList);
                mapG.put("ops", (uGCContent2 == null || (video = uGCContent2.getVideo()) == null) ? null : video.getOps());
            }
            lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "updateData: refresh or first load, replace data. size: " + size2 + " -> " + arrayList.size(), false, 4, null);
        } else {
            e eVar5 = this.mFilmListAdapter;
            if (eVar5 != null) {
                eVar5.q(arrayList);
            }
            e eVar6 = this.mFilmListAdapter;
            if (eVar6 != null && (data = eVar6.getData()) != null) {
                size = data.size();
            }
            lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "updateData: load more, add " + arrayList.size() + " items, list size: " + size2 + " -> " + size, false, 4, null);
        }
        if ((zN || size2 == 0) && !arrayList.isEmpty()) {
            UGCContent uGCContent3 = (UGCContent) CollectionsKt.k0(arrayList);
            if (uGCContent3 != null && (video3 = uGCContent3.getVideo()) != null && (cover = video3.getCover()) != null) {
                cover2 = cover;
            } else if (uGCContent3 != null && (collection = uGCContent3.getCollection()) != null) {
                cover2 = collection.getCover();
            }
            lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "updateData: refresh or first load, set top ", false, 4, null);
            if (this.isRankingMode) {
                return;
            }
            G0(cover2);
        }
    }

    private final void reload() {
        if (m.f70474a.e()) {
            loadDefaultData();
        } else {
            showLoadingView();
            showNoNetworkViewDelayed();
        }
    }

    private final e x0() {
        e eVar = new e(new ArrayList(), this.mExposureHelper, this.isRankingMode, HomeTabId.INSTANCE.h(StringsKt.v(this.tabId), false) || StringsKt.H(UGCVideoType.EDUCATION.getValue(), this.videoType, true));
        eVar.h0().z(true);
        eVar.h0().y(true);
        eVar.h0().D(new p6.f() { // from class: kl.g
            @Override // p6.f
            public final void a() {
                UGCFilmListFragment.y0(this.f66907a);
            }
        });
        eVar.w1(new p6.d() { // from class: kl.h
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UGCFilmListFragment.A0(this.f66908a, baseQuickAdapter, view, i11);
            }
        });
        this.mFilmListAdapter = eVar;
        Intrinsics.e(eVar);
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(final UGCFilmListFragment uGCFilmListFragment) {
        RecyclerView recyclerView;
        if (!m.f70474a.e()) {
            lg.a.C0828a.z(lg.a.f68839a, "FilmListFragment", "initFilmListAdapter: no network, load more failed", false, 4, null);
            n mViewBinding = uGCFilmListFragment.getMViewBinding();
            if (mViewBinding == null || (recyclerView = mViewBinding.f63790e) == null) {
                return;
            }
            recyclerView.postDelayed(new Runnable() { // from class: kl.i
                @Override // java.lang.Runnable
                public final void run() {
                    UGCFilmListFragment.z0(this.f66909a);
                }
            }, 300L);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "initFilmListAdapter: trigger load more, isRankingMode=" + uGCFilmListFragment.isRankingMode, false, 4, null);
        if (uGCFilmListFragment.isRankingMode) {
            UGCRankingViewModel uGCRankingViewModel = uGCFilmListFragment.rankingViewModel;
            if (uGCRankingViewModel != null) {
                uGCRankingViewModel.m();
                return;
            }
            return;
        }
        UGCFilmListViewModel uGCFilmListViewModel = uGCFilmListFragment.viewModel;
        if (uGCFilmListViewModel != null) {
            uGCFilmListViewModel.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(UGCFilmListFragment uGCFilmListFragment) {
        f fVarH0;
        e eVar = uGCFilmListFragment.mFilmListAdapter;
        if (eVar == null || (fVarH0 = eVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public final void H0(UGCRankingViewModel viewModel) {
        Intrinsics.h(viewModel, "viewModel");
        lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "setupRankingViewModel: setup ranking mode, disable self error handling", false, 4, null);
        this.rankingViewModel = viewModel;
        this.isRankingMode = true;
        viewModel.j().p(this);
        viewModel.j().j(this, new c(new Function1() { // from class: kl.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCFilmListFragment.I0(this.f66903a, (UGCRankAllData) obj);
            }
        }));
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00ee  */
    public final void L0(UGCRankAllData data, String rankCategory) {
        List<UGCContent> items;
        boolean z10;
        f fVarH0;
        SwipeRefreshLayout swipeRefreshLayout;
        RecyclerView recyclerView;
        f fVarH1;
        f fVarH2;
        UGCContent uGCContent;
        UGCVideo video;
        HashMap mapG;
        List<UGCContent> items2;
        Intrinsics.h(rankCategory, "rankCategory");
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "FilmListFragment", "updateRankData: items size=" + ((data == null || (items2 = data.getItems()) == null) ? null : Integer.valueOf(items2.size())) + ", title=" + (data != null ? data.getTitle() : null), false, 4, null);
        this.isRankingMode = true;
        if (data == null || (items = data.getItems()) == null || items.isEmpty()) {
            this.rankingCategory = rankCategory;
            showEmptyView(false);
            lg.a.C0828a.z(c0828a, "FilmListFragment", "updateRankData: data is null", false, 4, null);
            return;
        }
        hl.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        this.rankingCategory = rankCategory;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.m(false);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null) {
            logViewConfig2.k(true);
        }
        hj.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null && this.isRankingMode) {
            mapG.put("rank_category", rankCategory);
        }
        List<UGCContent> items3 = data.getItems();
        lg.a.C0828a.f(c0828a, "FilmListFragment", "updateRankData: items from " + (items3 != null ? Integer.valueOf(items3.size()) : null) + " ugcContent", false, 4, null);
        List<UGCContent> items4 = data.getItems();
        if (Intrinsics.c((items4 == null || (uGCContent = (UGCContent) CollectionsKt.k0(items4)) == null || (video = uGCContent.getVideo()) == null) ? null : video.getCategory(), UGCVideoType.EDUCATION.getValue())) {
            z10 = true;
        } else {
            e eVar = this.mFilmListAdapter;
            if (eVar != null ? eVar.getIsEducationList() : false) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        e eVar2 = this.mFilmListAdapter;
        if (eVar2 != null) {
            eVar2.R1(z10);
        }
        e eVar3 = this.mFilmListAdapter;
        if (eVar3 != null) {
            eVar3.n1(data.getItems());
        }
        Pager pager = data.getPager();
        if (pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.TRUE) : false) {
            lg.a.C0828a.f(c0828a, "FilmListFragment", "updateRankData: has more data, enable load more", false, 4, null);
            e eVar4 = this.mFilmListAdapter;
            if (eVar4 != null && (fVarH2 = eVar4.h0()) != null) {
                fVarH2.z(true);
            }
            e eVar5 = this.mFilmListAdapter;
            if (eVar5 != null && (fVarH1 = eVar5.h0()) != null) {
                fVarH1.y(true);
            }
        } else {
            lg.a.C0828a.f(c0828a, "FilmListFragment", "updateRankData: no more data, load more end", false, 4, null);
            e eVar6 = this.mFilmListAdapter;
            if (eVar6 != null && (fVarH0 = eVar6.h0()) != null) {
                f.u(fVarH0, false, 1, null);
            }
        }
        n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f63790e) != null) {
            recyclerView.scrollToPosition(0);
        }
        n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f63791f) != null) {
            swipeRefreshLayout.setRefreshing(false);
        }
        showContentView();
    }

    public final String getPageName() {
        return this.isRankingMode ? "/home/ugc_ranking" : "/home/ugc_film_list";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    public final void hideLoading() {
        SwipeRefreshLayout swipeRefreshLayout;
        n mViewBinding = getMViewBinding();
        if (mViewBinding == null || (swipeRefreshLayout = mViewBinding.f63791f) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(false);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
    }

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
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        TitleLayout titleLayout;
        SwipeRefreshLayout swipeRefreshLayout;
        View view;
        View view2;
        ImageView imageView;
        TitleLayout titleLayout2;
        if (this.isRankingMode) {
            lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "initViewData: onlyShowList mode, hide header views", false, 4, null);
            n mViewBinding = getMViewBinding();
            if (mViewBinding != null && (titleLayout2 = mViewBinding.f63792g) != null) {
                jg.c.g(titleLayout2);
            }
            n mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (imageView = mViewBinding2.f63788c) != null) {
                jg.c.g(imageView);
            }
            n mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (view2 = mViewBinding3.f63789d) != null) {
                jg.c.g(view2);
            }
            n mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (view = mViewBinding4.f63787b) != null) {
                jg.c.g(view);
            }
            n mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (swipeRefreshLayout = mViewBinding5.f63791f) != null) {
                ViewGroup.LayoutParams layoutParams = swipeRefreshLayout.getLayoutParams();
                ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
                if (bVar != null) {
                    bVar.f7678i = 0;
                    swipeRefreshLayout.setLayoutParams(bVar);
                }
            }
        } else {
            n mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (titleLayout = mViewBinding6.f63792g) != null) {
                titleLayout.setLeftOnclick(new View.OnClickListener() { // from class: kl.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        UGCFilmListFragment.D0(this.f66900a, view3);
                    }
                });
                h hVar = h.f71021a;
                Context context = titleLayout.getContext();
                Intrinsics.g(context, "getContext(...)");
                titleLayout.setPadding(0, hVar.d(context), 0, 0);
                titleLayout.setTitleTextColor(titleLayout.getResources().getColor(R$color.white_100));
                titleLayout.setTitleText(this.mFilmListTitle);
                titleLayout.setTitleMaxWidth(Integer.MAX_VALUE);
            }
            n mViewBinding7 = getMViewBinding();
            ImageView imageView2 = mViewBinding7 != null ? mViewBinding7.f63788c : null;
            n mViewBinding8 = getMViewBinding();
            this.headerMaskManager = new a(imageView2, mViewBinding8 != null ? mViewBinding8.f63787b : null);
            pageStateFitStatusBar();
        }
        B0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        b0 b0VarK;
        b0 b0VarJ;
        if (this.isRankingMode) {
            lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "initViewModel: ranking mode, skip init self viewmodel", false, 4, null);
            return;
        }
        UGCFilmListViewModel uGCFilmListViewModel = (UGCFilmListViewModel) new v0(this).a(UGCFilmListViewModel.class);
        this.viewModel = uGCFilmListViewModel;
        if (uGCFilmListViewModel != null) {
            uGCFilmListViewModel.m(this.filmType);
        }
        lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "initViewModel: ViewModel initialized with filmListId=" + this.filmType, false, 4, null);
        if (!this.hasRecordedFirstLoadDuration && this.firstLoadStartTimeMillis == 0) {
            this.firstLoadStartTimeMillis = System.currentTimeMillis();
        }
        UGCFilmListViewModel uGCFilmListViewModel2 = this.viewModel;
        if (uGCFilmListViewModel2 != null && (b0VarJ = uGCFilmListViewModel2.j()) != null) {
            b0VarJ.j(this, new c(new Function1() { // from class: kl.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCFilmListFragment.E0(this.f66901a, (String) obj);
                }
            }));
        }
        UGCFilmListViewModel uGCFilmListViewModel3 = this.viewModel;
        if (uGCFilmListViewModel3 == null || (b0VarK = uGCFilmListViewModel3.k()) == null) {
            return;
        }
        b0VarK.j(this, new c(new Function1() { // from class: kl.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCFilmListFragment.F0(this.f66902a, (List) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return true;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "FilmListFragment", "loadDefaultData: start loading default data, isRankingMode=" + this.isRankingMode, false, 4, null);
        if (this.isRankingMode) {
            lg.a.C0828a.f(c0828a, "FilmListFragment", "loadDefaultData: ranking mode, skip self loading", false, 4, null);
            return;
        }
        if (!m.f70474a.e()) {
            lg.a.C0828a.z(c0828a, "FilmListFragment", "loadDefaultData: no network available", false, 4, null);
            return;
        }
        showLoadingView();
        if (!this.hasRecordedFirstLoadDuration && this.firstLoadStartTimeMillis == 0) {
            this.firstLoadStartTimeMillis = System.currentTimeMillis();
        }
        UGCFilmListViewModel uGCFilmListViewModel = this.viewModel;
        if (uGCFilmListViewModel != null) {
            uGCFilmListViewModel.p();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        hl.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        this.mExposureHelper = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        hl.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        HashMap mapG;
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("tabId", "0");
            Intrinsics.g(string, "getString(...)");
            this.tabId = string;
            String string2 = arguments.getString("filmType", "");
            Intrinsics.g(string2, "getString(...)");
            this.filmType = string2;
            String string3 = arguments.getString("filmListTitle", "");
            Intrinsics.g(string3, "getString(...)");
            this.mFilmListTitle = string3;
            this.isRankingMode = arguments.getBoolean("onlyShowList", false);
            String string4 = arguments.getString("videoType", "");
            Intrinsics.g(string4, "getString(...)");
            this.videoType = string4;
            String string5 = arguments.getString("fromOptId", "");
            Intrinsics.g(string5, "getString(...)");
            this.fromOptId = string5;
        }
        lg.a.C0828a.f(lg.a.f68839a, "FilmListFragment", "receiveArguments: filmListId=" + this.filmType + ", title=" + this.mFilmListTitle + ", cover=" + this.mFilmListCover + ", onlyShowList=" + this.isRankingMode, false, 4, null);
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
        mapG.put(WebConstants.PAGE_FROM, i.f64505a.i());
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        List<Object> data;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "FilmListFragment", "retryLoadData: retry loading data, isRankingMode=" + this.isRankingMode, false, 4, null);
        if (this.isRankingMode) {
            lg.a.C0828a.f(c0828a, "FilmListFragment", "retryLoadData: ranking mode, skip self retry", false, 4, null);
            return;
        }
        e eVar = this.mFilmListAdapter;
        if (eVar != null && (data = eVar.getData()) != null && data.isEmpty()) {
            reload();
            return;
        }
        e eVar2 = this.mFilmListAdapter;
        if (eVar2 == null || eVar2.h0().i() != LoadMoreStatus.Fail) {
            return;
        }
        eVar2.h0().w();
    }

    public final void startLoading() {
        SwipeRefreshLayout swipeRefreshLayout;
        n mViewBinding = getMViewBinding();
        if (mViewBinding == null || (swipeRefreshLayout = mViewBinding.f63791f) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(true);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: w0, reason: merged with bridge method [inline-methods] */
    public n getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        n nVarC = n.c(inflater);
        Intrinsics.g(nVarC, "inflate(...)");
        return nVarC;
    }
}
