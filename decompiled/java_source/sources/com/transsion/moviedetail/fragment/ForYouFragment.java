package com.transsion.moviedetail.fragment;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.adapter.ForYouEduAdapter;
import com.transsion.moviedetail.view.ForYouLoadMoreView;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.LayoutStyle;
import com.transsion.moviedetailapi.bean.PlayUrl;
import com.transsion.moviedetailapi.bean.RoomEntranceResponse;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001f\u0018\u0000 ~2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002KOB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\bJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000f\u0010\u0005J\u001f\u0010\u0013\u001a\u00020\n2\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J+\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00110\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u00152\u0006\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001b\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001e\u0010\u0005J\u0017\u0010 \u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u0011H\u0002¢\u0006\u0004\b \u0010!J\u001f\u0010%\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b%\u0010&J\u001f\u0010(\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u0011H\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\nH\u0002¢\u0006\u0004\b*\u0010\u0005J\u000f\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b,\u0010-J\u0017\u00100\u001a\u00020\u00022\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020+H\u0016¢\u0006\u0004\b2\u0010-J\u000f\u00104\u001a\u000203H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\nH\u0016¢\u0006\u0004\b6\u0010\u0005J\u000f\u00107\u001a\u00020\nH\u0016¢\u0006\u0004\b7\u0010\u0005J\u000f\u00108\u001a\u00020\nH\u0016¢\u0006\u0004\b8\u0010\u0005J\u000f\u00109\u001a\u00020\nH\u0016¢\u0006\u0004\b9\u0010\u0005J\u000f\u0010:\u001a\u00020\nH\u0016¢\u0006\u0004\b:\u0010\u0005J\u000f\u0010;\u001a\u00020\nH\u0016¢\u0006\u0004\b;\u0010\u0005J\u000f\u0010<\u001a\u00020\nH\u0016¢\u0006\u0004\b<\u0010\u0005J\u0017\u0010?\u001a\u00020>2\u0006\u0010=\u001a\u000203H\u0016¢\u0006\u0004\b?\u0010@J\u0017\u0010A\u001a\u00020>2\u0006\u0010=\u001a\u000203H\u0016¢\u0006\u0004\bA\u0010@J\u0017\u0010C\u001a\u00020\n2\u0006\u0010B\u001a\u000203H\u0016¢\u0006\u0004\bC\u0010DJ\u000f\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bF\u0010GJ\u0017\u0010I\u001a\u00020\n2\u0006\u0010H\u001a\u000203H\u0016¢\u0006\u0004\bI\u0010DR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0018\u0010U\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR*\u0010Z\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010+0Vj\n\u0012\u0006\u0012\u0004\u0018\u00010+`W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010]\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010_\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010\\R\u001b\u0010e\u001a\u00020`8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\ba\u0010b\u001a\u0004\bc\u0010dR$\u0010h\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010k\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0018\u0010m\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010jR\u0018\u0010'\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0018\u0010q\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010jR\u0018\u0010t\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0016\u0010w\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010vR\u0016\u0010y\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010vR\u0016\u0010{\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010vR\u0016\u0010}\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010v¨\u0006\u007f"}, d2 = {"Lcom/transsion/moviedetail/fragment/ForYouFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lcn/f;", "Lix/a;", "<init>", "()V", "", "z0", "()I", "y0", "", "I0", "x0", "initExposureHelper", "C0", "lazyLoadData", "", "Lcom/transsion/moviedetailapi/bean/Subject;", "list", "M0", "(Ljava/util/List;)V", "", "newList", "currentItemCount", "J0", "(Ljava/util/List;I)Ljava/util/List;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "u0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "s0", WebConstants.FIELD_ITEM, "B0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", RequestParameters.POSITION, "", "duration", "K0", "(IJ)V", "subject", "L0", "(ILcom/transsion/moviedetailapi/bean/Subject;)V", "localLogPause", "", "pageName", "()Ljava/lang/String;", "Landroid/view/LayoutInflater;", "inflater", "A0", "(Landroid/view/LayoutInflater;)Lcn/f;", "getPageStateLayoutTitle", "", "isAudioShowNoNetworkLayout", "()Z", "initViewData", "initViewModel", "initListener", "retryLoadData", "onPause", "onResume", "onDestroy", "isShowTitleLayout", "Landroid/view/View;", "getLocalNoNetworkView", "(Z)Landroid/view/View;", "getEmptyView", "hidden", "onHiddenChanged", "(Z)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "fullscreen", "onScreenChange", "Lsj/b;", "a", "Lsj/b;", "mExposureHelper", "Landroid/widget/ImageView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/ImageView;", "refreshProgress", "Lcom/transsion/moviedetail/fragment/ForYouFragment$b;", "c", "Lcom/transsion/moviedetail/fragment/ForYouFragment$b;", "listExposureCtrl", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/HashSet;", "subjectIdSet", "e", "I", "pageIndex", "f", "totalRequestCount", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "g", "Lkotlin/Lazy;", "w0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "h", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "forYouAdapter", "i", "Ljava/lang/String;", "curPageName", "j", "curOps", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/moviedetailapi/bean/Subject;", "l", "subjectId", "m", "Ljava/lang/Integer;", "subjectType", "n", "Z", "isLocalVideo", "o", "isOutsideVideo", TtmlNode.TAG_P, "loading", CampaignEx.JSON_KEY_AD_Q, "isFirst", CampaignEx.JSON_KEY_AD_R, "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ForYouFragment extends PageStatusFragment<cn.f> implements ix.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f46972s = "sa_detail_for_you_insert_posts";

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private sj.b mExposureHelper;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ImageView refreshProgress;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private b listExposureCtrl;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private BaseQuickAdapter forYouAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String curPageName;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String curOps;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private Subject subject;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private Integer subjectType;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean isLocalVideo;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean isOutsideVideo;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean loading;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private HashSet subjectIdSet = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int pageIndex = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int totalRequestCount = 30;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.moviedetail.fragment.ForYouFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.moviedetail.fragment.ForYouFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private boolean isFirst = true;

    /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.ForYouFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ForYouFragment a(Subject subject, String str, String str2, boolean z10, boolean z11) {
            ForYouFragment forYouFragment = new ForYouFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("subject", subject);
            bundle.putString("ops", str);
            bundle.putString("page_name", str2);
            bundle.putBoolean("isLocalVideo", z10);
            bundle.putBoolean("isOutsideVideo", z11);
            forYouFragment.setArguments(bundle);
            return forYouFragment;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final RecyclerView f46990a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Function2 f46991b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final SparseArray f46992c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f46993d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f46994e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f46995f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List f46996g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f46997h;

        public b(RecyclerView recyclerView, Function2 callback) {
            Intrinsics.h(recyclerView, "recyclerView");
            Intrinsics.h(callback, "callback");
            this.f46990a = recyclerView;
            this.f46991b = callback;
            this.f46992c = new SparseArray();
            this.f46993d = -1;
            this.f46994e = -1;
            this.f46995f = 3;
            List listEmptyList = Collections.emptyList();
            Intrinsics.g(listEmptyList, "emptyList(...)");
            this.f46996g = listEmptyList;
            this.f46997h = com.blankj.utilcode.util.i.e(40.0f);
        }

        private final void b(int i11) {
            lg.a.C0828a.r(lg.a.f68839a, "Foryou", new String[]{"reportItemView line:" + i11}, false, 4, null);
            Long l11 = (Long) this.f46992c.get(i11);
            if (l11 != null) {
                long jLongValue = l11.longValue();
                if (jLongValue > 0) {
                    int i12 = this.f46995f;
                    int i13 = i12 * (i11 + 1);
                    for (int i14 = i12 * i11; i14 < i13; i14++) {
                        this.f46991b.invoke(Integer.valueOf(i14), Long.valueOf(SystemClock.elapsedRealtime() - jLongValue));
                    }
                }
            }
        }

        public final void a() {
            IntIterator intIteratorA = androidx.core.util.k.a(this.f46992c);
            while (intIteratorA.hasNext()) {
                b(intIteratorA.next().intValue());
            }
            this.f46992c.clear();
        }

        public final void c() {
            d(this.f46993d, this.f46994e);
        }

        public final void d(int i11, int i12) {
            if (i11 < 0 || i12 < 0) {
                return;
            }
            this.f46993d = i11;
            this.f46994e = i12;
            lg.a.C0828a.r(lg.a.f68839a, "Foryou", new String[]{"scrollWithLine startLine:" + i11 + ", endLine:" + i12}, false, 4, null);
            ArrayList arrayList = new ArrayList();
            IntIterator intIteratorA = androidx.core.util.k.a(this.f46992c);
            while (intIteratorA.hasNext()) {
                int iIntValue = intIteratorA.next().intValue();
                int i13 = this.f46993d;
                if (iIntValue >= this.f46994e || i13 > iIntValue) {
                    b(iIntValue);
                    arrayList.add(Integer.valueOf(iIntValue));
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f46992c.remove(((Number) it.next()).intValue());
            }
            int i14 = this.f46994e;
            for (int i15 = this.f46993d; i15 < i14; i15++) {
                if (((Long) this.f46992c.get(i15)) == null) {
                    this.f46992c.put(i15, Long.valueOf(SystemClock.elapsedRealtime()));
                }
            }
        }

        public final void e(List list) {
            a();
            if (list == null) {
                list = Collections.emptyList();
                Intrinsics.g(list, "emptyList(...)");
            }
            this.f46996g = list;
        }
    }

    public static final class c implements sj.a {
        c() {
        }

        @Override // sj.a
        public void a(int i11, long j11, View view) {
            ForYouFragment forYouFragment = ForYouFragment.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                forYouFragment.K0(i11, j11);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final class d extends RecyclerView.l {
        d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            if (parent.getChildAdapterPosition(view) == -1) {
                return;
            }
            outRect.set(dk.a.b(4), dk.a.b(8), dk.a.b(4), 0);
        }
    }

    static final class e implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f46999a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f46999a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f46999a;
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
            this.f46999a.invoke(obj);
        }
    }

    private final void B0(Subject item) {
        String playUrl;
        String playUrl2;
        Integer subjectType = item.getSubjectType();
        int value = SubjectType.SHORT_TV.getValue();
        if (subjectType != null && subjectType.intValue() == value) {
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            downloadManagerApiA.d0((FragmentActivity) context, "subjectdetail", (384 & 4) != 0 ? "" : "", item.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : item, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
            return;
        }
        if (item.isJumpBrowser()) {
            PlayUrl playUrl3 = item.getPlayUrl();
            if (playUrl3 == null || (playUrl2 = playUrl3.getPlayUrl()) == null) {
                return;
            }
            ak.k.i(playUrl2);
            return;
        }
        if (!item.isJumpWebview()) {
            Navigator navigatorC = TheRouter.c("/movie/detail");
            Integer subjectType2 = item.getSubjectType();
            Navigator.x(navigatorC.F("subject_type", subjectType2 != null ? subjectType2.intValue() : SubjectType.MOVIE.getValue()).K("ops", item.getOps()).K("id", item.getSubjectId()), requireContext(), null, 2, null);
        } else {
            PlayUrl playUrl4 = item.getPlayUrl();
            if (playUrl4 == null || (playUrl = playUrl4.getPlayUrl()) == null) {
                return;
            }
            ak.k.h(playUrl, null, 1, null);
        }
    }

    private final void C0() {
        Integer num = this.subjectType;
        int value = SubjectType.EDUCATION.getValue();
        if (num != null && num.intValue() == value) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new ForYouFragment$initData$1(this, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(ForYouFragment forYouFragment) {
        forYouFragment.I0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(ForYouFragment forYouFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Subject subject;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        BaseQuickAdapter baseQuickAdapter2 = forYouFragment.forYouAdapter;
        if (baseQuickAdapter2 == null || (subject = (Subject) baseQuickAdapter2.getItem(i11)) == null) {
            return;
        }
        Integer subjectType = subject.getSubjectType();
        if (subjectType == null || subjectType.intValue() != -9901) {
            forYouFragment.B0(subject);
        }
        forYouFragment.L0(i11, subject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F0(ForYouFragment forYouFragment, int i11, long j11) {
        try {
            forYouFragment.K0(i11, j11);
        } catch (Exception unused) {
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G0(RoomEntranceResponse roomEntranceResponse) {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H0(ForYouFragment forYouFragment, List list) {
        forYouFragment.M0(list);
        return Unit.f67061a;
    }

    private final void I0() {
        boolean z10 = false;
        if (this.isLocalVideo) {
            MovieDetailViewModel movieDetailViewModelW0 = w0();
            boolean z11 = this.isOutsideVideo;
            String str = this.subjectId;
            Integer num = this.subjectType;
            int i11 = this.pageIndex + 1;
            this.pageIndex = i11;
            Context context = getContext();
            movieDetailViewModelW0.s(z11, str, num, i11, context != null && com.transsion.baseui.util.b.a(context));
            return;
        }
        MovieDetailViewModel movieDetailViewModelW1 = w0();
        String str2 = this.subjectId;
        Integer num2 = this.subjectType;
        int i12 = this.pageIndex + 1;
        this.pageIndex = i12;
        Context context2 = getContext();
        if (context2 != null && com.transsion.baseui.util.b.a(context2)) {
            z10 = true;
        }
        movieDetailViewModelW1.t(str2, num2, i12, z10);
    }

    private final List J0(List newList, int currentItemCount) {
        int iZ0;
        if (w0().B() && currentItemCount <= (iZ0 = z0()) && newList.size() > iZ0) {
            lg.a.C0828a.f(lg.a.f68839a, "MovieDetailViewModel", "ForYouFragment 插入推荐帖子", false, 4, null);
            Subject subject = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -1, 134217727, null);
            subject.setSubjectType(Integer.valueOf(com.transsion.moviedetail.adapter.c.I));
            newList.add(iZ0, subject);
        }
        return newList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K0(int position, long duration) {
        Subject subject;
        lg.a.C0828a.f(lg.a.f68839a, "Foryou", "reportBrowseEvent position:" + position + ", duration:" + duration + " ", false, 4, null);
        BaseQuickAdapter baseQuickAdapter = this.forYouAdapter;
        if (baseQuickAdapter == null || (subject = (Subject) baseQuickAdapter.getItem(position)) == null) {
            return;
        }
        Integer subjectType = subject.getSubjectType();
        if ((subjectType != null && subjectType.intValue() == -9901) || !this.subjectIdSet.add(subject.getSubjectId())) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", "subject");
        linkedHashMap.put("opt_type", "");
        String subjectId = subject.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        linkedHashMap.put("group_id", "");
        String ops = subject.getOps();
        if (ops == null) {
            ops = "";
        }
        linkedHashMap.put("ops", ops);
        Boolean hasResource = subject.getHasResource();
        linkedHashMap.put("has_resource", String.valueOf(hasResource != null ? hasResource.booleanValue() : false));
        linkedHashMap.put("deeplink", "");
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(position));
        linkedHashMap.put("cover", "");
        linkedHashMap.put("browse_duration", String.valueOf(duration));
        linkedHashMap.put("builtin", "0");
        linkedHashMap.put("tab_name", "for_you");
        com.transsion.baselib.helper.a.f43262a.e("subjectdetail", linkedHashMap);
    }

    private final void L0(int position, Subject subject) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "subject");
        linkedHashMap.put("item_type", "subject");
        linkedHashMap.put("opt_type", "");
        String subjectId = subject.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        String ops = subject.getOps();
        linkedHashMap.put("ops", ops != null ? ops : "");
        Boolean hasResource = subject.getHasResource();
        linkedHashMap.put("has_resource", String.valueOf(hasResource != null ? hasResource.booleanValue() : false));
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(position));
        linkedHashMap.put("builtin", "0");
        linkedHashMap.put("tab_name", "for_you");
        com.transsion.baselib.helper.a.f43262a.f("subjectdetail", linkedHashMap);
    }

    private final void M0(List list) {
        List<Object> data;
        BaseQuickAdapter baseQuickAdapter;
        r6.f fVarH0;
        List<Object> listL;
        r6.f fVarH1;
        r6.f fVarH2;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null) {
            logViewConfig2.n(this.curOps);
        }
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            lg.a.C0828a.f(lg.a.f68839a, "MovieDetailViewModel", "ForYouFragment 没有更多数据了，加载更多结束", false, 4, null);
            BaseQuickAdapter baseQuickAdapter2 = this.forYouAdapter;
            if (baseQuickAdapter2 != null && (fVarH0 = baseQuickAdapter2.h0()) != null) {
                fVarH0.t(false);
            }
            BaseQuickAdapter baseQuickAdapter3 = this.forYouAdapter;
            if (baseQuickAdapter3 != null && (data = baseQuickAdapter3.getData()) != null && data.isEmpty() && (baseQuickAdapter = this.forYouAdapter) != null) {
                baseQuickAdapter.Y0(getEmptyView(false));
            }
        } else {
            BaseQuickAdapter baseQuickAdapter4 = this.forYouAdapter;
            if (baseQuickAdapter4 == null || (listL = baseQuickAdapter4.getData()) == null) {
                listL = CollectionsKt.l();
            }
            List<Object> list3 = listL;
            ArrayList arrayList = new ArrayList(CollectionsKt.v(list3, 10));
            Iterator<T> it = list3.iterator();
            while (it.hasNext()) {
                arrayList.add(((Subject) it.next()).getSubjectId());
            }
            Set setW0 = CollectionsKt.W0(arrayList);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (!setW0.contains(((Subject) obj).getSubjectId())) {
                    arrayList2.add(obj);
                }
            }
            BaseQuickAdapter baseQuickAdapter5 = this.forYouAdapter;
            int itemCount = baseQuickAdapter5 != null ? baseQuickAdapter5.getItemCount() : 0;
            if (arrayList2.isEmpty() || itemCount >= this.totalRequestCount) {
                lg.a.C0828a.f(lg.a.f68839a, "MovieDetailViewModel", "ForYouFragment 全部去重或超出最大上限，加载更多结束 totalCount:" + itemCount, false, 4, null);
                BaseQuickAdapter baseQuickAdapter6 = this.forYouAdapter;
                if (baseQuickAdapter6 != null && (fVarH1 = baseQuickAdapter6.h0()) != null) {
                    fVarH1.t(false);
                }
            } else {
                lg.a.C0828a.f(lg.a.f68839a, "MovieDetailViewModel", "ForYouFragment count: " + (arrayList2.size() + itemCount), false, 4, null);
                List listJ0 = J0(CollectionsKt.U0(arrayList2), itemCount);
                BaseQuickAdapter baseQuickAdapter7 = this.forYouAdapter;
                if (baseQuickAdapter7 != null && (fVarH2 = baseQuickAdapter7.h0()) != null) {
                    fVarH2.s();
                }
                BaseQuickAdapter baseQuickAdapter8 = this.forYouAdapter;
                if (baseQuickAdapter8 != null) {
                    baseQuickAdapter8.q(listJ0);
                }
                b bVar = this.listExposureCtrl;
                if (bVar != null) {
                    bVar.e(listJ0);
                }
            }
        }
        s0();
        this.loading = false;
    }

    private final void initExposureHelper() {
        RecyclerView recyclerView;
        sj.b bVar = new sj.b(0.6f, new c(), false, 4, null);
        bVar.n(2);
        cn.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f17351b) != null) {
            recyclerView.addOnScrollListener(bVar);
        }
        this.mExposureHelper = bVar;
    }

    private final void lazyLoadData() {
        String value;
        if (getParentFragment() != null) {
            w0().A().j(this, new e(new Function1() { // from class: com.transsion.moviedetail.fragment.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ForYouFragment.H0(this.f47148a, (List) obj);
                }
            }));
            boolean z10 = false;
            if (this.isLocalVideo) {
                if (!nh.m.f70474a.e()) {
                    BaseQuickAdapter baseQuickAdapter = this.forYouAdapter;
                    if (baseQuickAdapter != null) {
                        baseQuickAdapter.Y0(getLocalNoNetworkView(false));
                        return;
                    }
                    return;
                }
                MovieDetailViewModel movieDetailViewModelW0 = w0();
                boolean z11 = this.isOutsideVideo;
                String str = this.subjectId;
                Integer num = this.subjectType;
                Context context = getContext();
                movieDetailViewModelW0.s(z11, str, num, 0, context != null && com.transsion.baseui.util.b.a(context));
            }
            ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), f46972s, false, 2, null);
            if (configBeanD != null && (value = configBeanD.getValue()) != null) {
                z10 = Boolean.parseBoolean(value);
            }
            if (!z10 || !aq.h.f16093a.b() || this.isLocalVideo || this.isOutsideVideo) {
                return;
            }
            Integer num2 = this.subjectType;
            int value2 = SubjectType.TV.getValue();
            if (num2 == null || num2.intValue() != value2) {
                Integer num3 = this.subjectType;
                int value3 = SubjectType.MOVIE.getValue();
                if (num3 == null || num3.intValue() != value3) {
                    return;
                }
            }
            lg.a.C0828a.f(lg.a.f68839a, "MovieDetailViewModel", "ForYouFragment 请求推荐帖子------", false, 4, null);
            w0().J();
        }
    }

    private final void localLogPause() {
        sj.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    private final String pageName() {
        String str = this.curPageName;
        return str == null ? "" : str;
    }

    private final void s0() {
        ViewPropertyAnimator viewPropertyAnimatorAnimate;
        ImageView imageView = this.refreshProgress;
        if (imageView == null || (viewPropertyAnimatorAnimate = imageView.animate()) == null) {
            return;
        }
        viewPropertyAnimatorAnimate.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(ForYouFragment forYouFragment, View view) {
        forYouFragment.retryLoadData();
    }

    private final BaseQuickAdapter u0() {
        Integer num = this.subjectType;
        int value = SubjectType.EDUCATION.getValue();
        if (num != null && num.intValue() == value) {
            return new ForYouEduAdapter(new ArrayList());
        }
        String str = this.curPageName;
        if (str == null) {
            str = "subjectdetail";
        }
        return new com.transsion.moviedetail.adapter.c(this, str, z0(), w0(), this.subject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(ForYouFragment forYouFragment, View view) {
        forYouFragment.retryLoadData();
    }

    private final MovieDetailViewModel w0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final int x0() {
        Integer num = this.subjectType;
        int value = SubjectType.MUSIC.getValue();
        if (num == null || num.intValue() != value) {
            Integer num2 = this.subjectType;
            int value2 = SubjectType.EDUCATION.getValue();
            if (num2 == null || num2.intValue() != value2) {
                return 6;
            }
        }
        return 4;
    }

    private final int y0() {
        Integer numV;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_for_you_request_count", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || value.length() == 0 || (numV = StringsKt.v(value)) == null) {
            return 30;
        }
        return numV.intValue();
    }

    private final int z0() {
        if (this.subject == null) {
            return 3;
        }
        Integer num = this.subjectType;
        int value = SubjectType.MUSIC.getValue();
        if (num != null && num.intValue() == value) {
            return 2;
        }
        Integer num2 = this.subjectType;
        int value2 = SubjectType.EDUCATION.getValue();
        if (num2 != null && num2.intValue() == value2) {
            return 2;
        }
        Subject subject = this.subject;
        Intrinsics.e(subject);
        LayoutStyle style = subject.getStyle();
        if (style != null) {
            return style.getColNum();
        }
        return 3;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: A0, reason: merged with bridge method [inline-methods] */
    public cn.f getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        cn.f fVarC = cn.f.c(inflater);
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getEmptyView(boolean isShowTitleLayout) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.layout_state_view, (ViewGroup) null);
        cn.y yVarA = cn.y.a(viewInflate);
        Intrinsics.g(yVarA, "bind(...)");
        yVarA.f17533b.setImageResource(R$mipmap.ic_no_content);
        yVarA.f17534c.setText(viewInflate.getResources().getString(R$string.no_content));
        yVarA.f17535d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ForYouFragment.t0(this.f47153a, view);
            }
        });
        Intrinsics.g(viewInflate, "apply(...)");
        return viewInflate;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLocalNoNetworkView(boolean isShowTitleLayout) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.layout_state_view, (ViewGroup) null);
        cn.y yVarA = cn.y.a(viewInflate);
        Intrinsics.g(yVarA, "bind(...)");
        yVarA.f17535d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ForYouFragment.v0(this.f47177a, view);
            }
        });
        Intrinsics.g(viewInflate, "apply(...)");
        return viewInflate;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        initExposureHelper();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        HashMap mapG;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        hj.b logViewConfig;
        HashMap mapG2;
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("subject") : null;
        this.subject = serializable instanceof Subject ? (Subject) serializable : null;
        Bundle arguments2 = getArguments();
        this.curPageName = arguments2 != null ? arguments2.getString("page_name") : null;
        Bundle arguments3 = getArguments();
        this.curOps = arguments3 != null ? arguments3.getString("ops") : null;
        Bundle arguments4 = getArguments();
        this.isLocalVideo = arguments4 != null ? arguments4.getBoolean("isLocalVideo") : false;
        Bundle arguments5 = getArguments();
        this.isOutsideVideo = arguments5 != null ? arguments5.getBoolean("isOutsideVideo") : false;
        this.totalRequestCount = y0();
        Subject subject = this.subject;
        this.subjectId = subject != null ? subject.getSubjectId() : null;
        Subject subject2 = this.subject;
        this.subjectType = subject2 != null ? subject2.getSubjectType() : null;
        String str = this.subjectId;
        if (str != null && (logViewConfig = getLogViewConfig()) != null && (mapG2 = logViewConfig.g()) != null) {
        }
        BaseQuickAdapter baseQuickAdapterU0 = u0();
        r6.f fVarH0 = baseQuickAdapterU0.h0();
        fVarH0.C(new ForYouLoadMoreView());
        fVarH0.z(true);
        fVarH0.y(true);
        fVarH0.E(x0());
        fVarH0.D(new p6.f() { // from class: com.transsion.moviedetail.fragment.e
            @Override // p6.f
            public final void a() {
                ForYouFragment.D0(this.f47162a);
            }
        });
        baseQuickAdapterU0.w1(new p6.d() { // from class: com.transsion.moviedetail.fragment.f
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                ForYouFragment.E0(this.f47167a, baseQuickAdapter, view, i11);
            }
        });
        this.forYouAdapter = baseQuickAdapterU0;
        cn.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView2 = mViewBinding.f17351b) != null) {
            recyclerView2.addItemDecoration(new d());
            StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(z0(), 1);
            staggeredGridLayoutManager.f0(2);
            recyclerView2.setLayoutManager(staggeredGridLayoutManager);
            recyclerView2.setAdapter(this.forYouAdapter);
        }
        cn.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView = mViewBinding2.f17351b) != null) {
            this.listExposureCtrl = new b(recyclerView, new Function2() { // from class: com.transsion.moviedetail.fragment.g
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ForYouFragment.F0(this.f47172a, ((Integer) obj).intValue(), ((Long) obj2).longValue());
                }
            });
        }
        C0();
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 == null || (mapG = logViewConfig2.g()) == null) {
            return;
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        w0().I().j(this, new e(new Function1() { // from class: com.transsion.moviedetail.fragment.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ForYouFragment.G0((RoomEntranceResponse) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(pageName(), false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        s0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
                localLogPause();
            } else {
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        localLogPause();
        b bVar = this.listExposureCtrl;
        if (bVar != null) {
            bVar.a();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        b bVar = this.listExposureCtrl;
        if (bVar != null) {
            bVar.c();
        }
        if (this.isFirst) {
            this.isFirst = false;
            lazyLoadData();
        }
    }

    @Override // ix.a
    public void onScreenChange(boolean fullscreen) {
        if (isAdded() && !isHidden() && isResumed()) {
            if (!fullscreen) {
                logResume();
            } else {
                logPause();
                localLogPause();
            }
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        lazyLoadData();
    }
}
