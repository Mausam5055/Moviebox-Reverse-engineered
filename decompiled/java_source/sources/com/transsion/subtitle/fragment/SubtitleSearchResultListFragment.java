package com.transsion.subtitle.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.NetworkUtils;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.DefaultView;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.SubtitleLanguageMapBean;
import com.transsion.baseui.fragment.LazyFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.SubtitleItem;
import com.transsion.push.PushConstants;
import com.transsion.subtitle.R$drawable;
import com.transsion.subtitle.R$string;
import com.transsion.subtitle.bean.SubtitleSearchListBean;
import com.transsion.subtitle.helper.SubtitleSearchHelper;
import com.transsion.subtitle.view.SubtitleDialogLoadMoreView;
import com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000º\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0010%\n\u0002\b\u0013\u0018\u0000 \u0094\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001fB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\u000b\u001a\u00020\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000e\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\tH\u0016¢\u0006\u0004\b \u0010\u0006J!\u0010!\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b!\u0010\u0015J\u000f\u0010!\u001a\u00020\tH\u0016¢\u0006\u0004\b!\u0010\u0006J\u000f\u0010\"\u001a\u00020\tH\u0016¢\u0006\u0004\b\"\u0010\u0006J\u000f\u0010#\u001a\u00020\tH\u0016¢\u0006\u0004\b#\u0010\u0006J\u000f\u0010$\u001a\u00020\tH\u0016¢\u0006\u0004\b$\u0010\u0006J\u0017\u0010&\u001a\u00020\t2\u0006\u0010%\u001a\u00020\bH\u0016¢\u0006\u0004\b&\u0010'J\u001f\u0010,\u001a\u00020\t2\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\t2\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b.\u0010/J#\u00103\u001a\u00020\t2\n\u00102\u001a\u000600j\u0002`12\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\tH\u0016¢\u0006\u0004\b5\u0010\u0006J\u000f\u00106\u001a\u00020\tH\u0016¢\u0006\u0004\b6\u0010\u0006J\u0017\u00108\u001a\u00020\t2\b\u00107\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b8\u00109J/\u0010>\u001a\u00020\t2\b\u0010;\u001a\u0004\u0018\u00010:2\b\u0010=\u001a\u0004\u0018\u00010<2\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u00020\tH\u0002¢\u0006\u0004\b@\u0010\u0006J\u000f\u0010A\u001a\u00020\tH\u0002¢\u0006\u0004\bA\u0010\u0006J\u0017\u0010B\u001a\u00020\t2\u0006\u0010%\u001a\u00020\bH\u0002¢\u0006\u0004\bB\u0010'J%\u0010F\u001a\b\u0012\u0004\u0012\u00020\b0C2\u000e\u0010E\u001a\n\u0012\u0004\u0012\u00020D\u0018\u00010CH\u0002¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020\tH\u0002¢\u0006\u0004\bH\u0010\u0006J\u000f\u0010I\u001a\u00020\tH\u0002¢\u0006\u0004\bI\u0010\u0006J\u000f\u0010J\u001a\u00020\tH\u0002¢\u0006\u0004\bJ\u0010\u0006J%\u0010M\u001a\u00020\t2\f\u0010K\u001a\b\u0012\u0004\u0012\u00020\b0C2\u0006\u0010L\u001a\u00020\u001dH\u0002¢\u0006\u0004\bM\u0010NJ\u0017\u0010P\u001a\u00020\t2\u0006\u0010O\u001a\u00020\u001dH\u0002¢\u0006\u0004\bP\u0010QJ\u000f\u0010R\u001a\u00020\tH\u0002¢\u0006\u0004\bR\u0010\u0006J\u000f\u0010S\u001a\u00020\tH\u0002¢\u0006\u0004\bS\u0010\u0006J\u000f\u0010T\u001a\u00020\tH\u0002¢\u0006\u0004\bT\u0010\u0006J\u0017\u0010W\u001a\u00020\u00102\u0006\u0010V\u001a\u00020UH\u0002¢\u0006\u0004\bW\u0010XJ\u0017\u0010Y\u001a\u00020\u00102\u0006\u0010V\u001a\u00020UH\u0002¢\u0006\u0004\bY\u0010XJ\u0017\u0010Z\u001a\u00020\u00102\u0006\u0010V\u001a\u00020UH\u0002¢\u0006\u0004\bZ\u0010XJ)\u0010]\u001a\u00020\u00102\u0006\u0010V\u001a\u00020U2\u0006\u0010[\u001a\u00020\u001a2\b\b\u0002\u0010\\\u001a\u00020\u001dH\u0002¢\u0006\u0004\b]\u0010^J\u0017\u0010`\u001a\u00020\t2\u0006\u0010_\u001a\u00020\bH\u0002¢\u0006\u0004\b`\u0010'J\u001f\u0010c\u001a\u00020\t2\u0006\u0010a\u001a\u00020\u001d2\u0006\u0010b\u001a\u00020(H\u0002¢\u0006\u0004\bc\u0010dR\u0018\u0010h\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010l\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0016\u0010o\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0018\u0010q\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010nR\u0018\u0010t\u001a\u0004\u0018\u00010r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010sR\u0016\u0010v\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010nR\u001c\u0010y\u001a\b\u0012\u0004\u0012\u00020<0w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010xR\u0018\u0010;\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0018\u00107\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010nR\u0018\u0010=\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R&\u0010\u0085\u0001\u001a\u000f\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020(0\u0082\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0088\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R'\u0010\u008b\u0001\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R!\u0010\u008e\u0001\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0019\u0010\u0091\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u0019\u0010\u0093\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0090\u0001¨\u0006\u0095\u0001"}, d2 = {"Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;", "Lcom/transsion/baseui/fragment/LazyFragment;", "Lfu/b;", "Lcom/transsion/subtitle_download/a;", "Lhu/c;", "<init>", "()V", "Lkotlin/Function1;", "Leu/a;", "", "callback", "U0", "(Lkotlin/jvm/functions/Function1;)V", "Lkotlin/Function0;", "T0", "(Lkotlin/jvm/functions/Function0;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "E0", "(Landroid/view/LayoutInflater;)Lfu/b;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "initListener", "initViewData", "initViewModel", "lazyLoadData", "loadDefaultData", "bean", "g", "(Leu/a;)V", "", NotificationCompat.CATEGORY_PROGRESS, "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;", "dbBean", "onDownloading", "(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "onComplete", "(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "onFail", "(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "onDestroy", "retryLoadData", "searchName", "Q0", "(Ljava/lang/String;)V", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;", "languageBean", "S0", "(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Ljava/lang/String;)V", "K0", "w0", "Y0", "", "Lcom/transsion/moviedetailapi/bean/SubtitleItem;", "items", "F0", "(Ljava/util/List;)Ljava/util/List;", "loadData", "P0", "loadMore", "list", "hasMore", "Z0", "(Ljava/util/List;Z)V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "W0", "(Z)V", "X0", "showEmpty", "V0", "Landroid/content/Context;", "context", "getEmptyView", "(Landroid/content/Context;)Landroid/view/View;", "D0", "C0", "desText", "showLeftBtn", "y0", "(Landroid/content/Context;Ljava/lang/String;Z)Landroid/view/View;", WebConstants.FIELD_ITEM, "x0", "isSuccess", NativeComponentConstants.KEY_COMPONENT_TYPE, "R0", "(ZI)V", "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;", "a", "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;", "viewModel", "Lcom/transsion/subtitle/adapter/c;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/subtitle/adapter/c;", "resultAdapter", "c", "Ljava/lang/String;", "nextPage", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "pageName", "Lcom/transsion/subtitle/fragment/i;", "Lcom/transsion/subtitle/fragment/i;", "keyword", "f", "languages", "", "Ljava/util/List;", "languageList", "h", "Lcom/transsion/baselib/db/download/DownloadBean;", "i", "j", "Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;", CampaignEx.JSON_KEY_AD_K, "Leu/a;", "currentSelectItem", "", "l", "Ljava/util/Map;", "curDownloadedMap", "m", "I", "currentSelectPosition", "n", "Lkotlin/jvm/functions/Function1;", "selectSubtitleCallback", "o", "Lkotlin/jvm/functions/Function0;", "onGetDataResultCallback", TtmlNode.TAG_P, "Z", "hasSubDownloading", CampaignEx.JSON_KEY_AD_Q, "isOpenSubtitle", CampaignEx.JSON_KEY_AD_R, "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubtitleSearchResultListFragment extends LazyFragment<fu.b> implements com.transsion.subtitle_download.a, hu.c {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private SubtitleDownloadViewModel viewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private com.transsion.subtitle.adapter.c resultAdapter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private i keyword;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private DownloadBean downloadBean;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String searchName;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private SubtitleLanguageMapBean languageBean;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private eu.a currentSelectItem;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private Function1 selectSubtitleCallback;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private Function0 onGetDataResultCallback;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean hasSubDownloading;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String nextPage = "1";

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String languages = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private List languageList = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private Map curDownloadedMap = new LinkedHashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private int currentSelectPosition = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private boolean isOpenSubtitle = true;

    /* JADX INFO: renamed from: com.transsion.subtitle.fragment.SubtitleSearchResultListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubtitleSearchResultListFragment a(DownloadBean downloadBean, SubtitleLanguageMapBean subtitleLanguageMapBean, String str, String str2) {
            SubtitleSearchResultListFragment subtitleSearchResultListFragment = new SubtitleSearchResultListFragment();
            subtitleSearchResultListFragment.S0(downloadBean, subtitleLanguageMapBean, str);
            subtitleSearchResultListFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("KEY_PAGE_NAME", str2)));
            return subtitleSearchResultListFragment;
        }
    }

    public static final class b extends RecyclerView.r {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i11);
            if (i11 != 0 || recyclerView.canScrollVertically(1)) {
                return;
            }
            SubtitleSearchResultListFragment.this.K0();
        }
    }

    public static final class c extends DiffUtil.e {
        c() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(eu.a oldItem, eu.a newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.b().getId(), newItem.b().getId()) && Intrinsics.c(oldItem.b().getUrl(), newItem.b().getUrl()) && oldItem.b().getStatus() == newItem.b().getStatus();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(eu.a oldItem, eu.a newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.b().getUrl(), newItem.b().getUrl());
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f54837a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54837a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f54837a;
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
            this.f54837a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(SubtitleSearchResultListFragment subtitleSearchResultListFragment, DefaultView defaultView, View view) {
        subtitleSearchResultListFragment.W0(true);
        subtitleSearchResultListFragment.loadData();
        defaultView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(DefaultView defaultView, View view) {
        try {
            Result.Companion companion = Result.INSTANCE;
            NetworkUtils.v();
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final View C0(Context context) {
        String string = context.getString(R$string.subtitle_load_failed);
        Intrinsics.g(string, "getString(...)");
        return z0(this, context, string, false, 4, null);
    }

    private final View D0(Context context) {
        String string = context.getString(com.tn.lib.widget.R$string.no_network_title);
        Intrinsics.g(string, "getString(...)");
        return y0(context, string, true);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x013d A[PHI: r4
  0x013d: PHI (r4v43 java.lang.String) = (r4v24 java.lang.String), (r4v44 java.lang.String) binds: [B:109:0x014a, B:102:0x013a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:17:0x002b  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b5  */
    private final List F0(List items) {
        String resourceId;
        int i11;
        String str;
        String resourceId2;
        String str2;
        String name;
        String str3;
        boolean z10;
        eu.a aVar;
        SubtitleDownloadTable subtitleDownloadTableB;
        eu.a aVar2;
        SubtitleDownloadTable subtitleDownloadTableB2;
        String path;
        androidx.p009lifecycle.b0 b0VarM;
        if (items == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        DownloadBean downloadBean = this.downloadBean;
        String subjectId = downloadBean != null ? downloadBean.getSubjectId() : null;
        if (subjectId == null || subjectId.length() == 0) {
            DownloadBean downloadBean2 = this.downloadBean;
            if (downloadBean2 != null) {
                resourceId = downloadBean2.getResourceId();
            } else {
                resourceId = null;
            }
        } else {
            DownloadBean downloadBean3 = this.downloadBean;
            if (downloadBean3 != null) {
                resourceId = downloadBean3.getSubjectId();
            } else {
                resourceId = null;
            }
        }
        SubtitleDownloadViewModel subtitleDownloadViewModel = this.viewModel;
        Map map = (subtitleDownloadViewModel == null || (b0VarM = subtitleDownloadViewModel.m()) == null) ? null : (Map) b0VarM.f();
        DownloadBean downloadBean4 = this.downloadBean;
        boolean z11 = true;
        if (downloadBean4 == null || !downloadBean4.isUGCVideo()) {
            DownloadBean downloadBean5 = this.downloadBean;
            i11 = (downloadBean5 == null || !downloadBean5.getIsStream()) ? 1 : 2;
        } else {
            i11 = 4;
        }
        Iterator it = items.iterator();
        while (it.hasNext()) {
            SubtitleItem subtitleItem = (SubtitleItem) it.next();
            String id2 = subtitleItem.getId();
            String str4 = id2 == null ? "" : id2;
            DownloadBean downloadBean6 = this.downloadBean;
            if (downloadBean6 == null || (postIdNotNull = downloadBean6.getSubtitleResId()) == null) {
                DownloadBean downloadBean7 = this.downloadBean;
                if (downloadBean7 != null) {
                    String postIdNotNull = downloadBean7.getPostIdNotNull();
                    str = postIdNotNull;
                } else {
                    str = "";
                }
            } else {
                str = postIdNotNull;
            }
            DownloadBean downloadBean8 = this.downloadBean;
            if (downloadBean8 == null || downloadBean8.isOutside() != z11) {
                DownloadBean downloadBean9 = this.downloadBean;
                if (downloadBean9 == null || (resourceId2 = downloadBean9.getPostId()) == null) {
                    DownloadBean downloadBean10 = this.downloadBean;
                    if (downloadBean10 != null) {
                        resourceId2 = downloadBean10.getResourceId();
                    } else {
                        str2 = null;
                    }
                }
                str2 = resourceId2;
            } else {
                DownloadBean downloadBean11 = this.downloadBean;
                if (downloadBean11 != null) {
                    resourceId2 = downloadBean11.getPostIdNotNull();
                    str2 = resourceId2;
                } else {
                    str2 = null;
                }
            }
            String url = subtitleItem.getUrl();
            String str5 = url == null ? "" : url;
            String str6 = (map == null || map.containsKey(subtitleItem.getId()) != z11 || (aVar2 = (eu.a) map.get(subtitleItem.getId())) == null || (subtitleDownloadTableB2 = aVar2.b()) == null || (path = subtitleDownloadTableB2.getPath()) == null) ? "" : path;
            String lan = subtitleItem.getLan();
            String lanName = subtitleItem.getLanName();
            String str7 = lanName == null ? "" : lanName;
            String name2 = subtitleItem.getName();
            Long size = subtitleItem.getSize();
            Integer episode = subtitleItem.getEpisode();
            int iIntValue = episode != null ? episode.intValue() : 0;
            Integer season = subtitleItem.getSeason();
            int iIntValue2 = season != null ? season.intValue() : 0;
            DownloadBean downloadBean12 = this.downloadBean;
            if (downloadBean12 == null || (name = downloadBean12.getSubjectName()) == null) {
                DownloadBean downloadBean13 = this.downloadBean;
                name = downloadBean13 != null ? downloadBean13.getName() : null;
                if (name == null) {
                    str3 = "";
                } else {
                    str3 = name;
                }
            } else {
                str3 = name;
            }
            int status = (map == null || map.containsKey(subtitleItem.getId()) != z11 || (aVar = (eu.a) map.get(subtitleItem.getId())) == null || (subtitleDownloadTableB = aVar.b()) == null) ? 0 : subtitleDownloadTableB.getStatus();
            Integer type = subtitleItem.getType();
            int iIntValue3 = type != null ? type.intValue() : 2;
            DownloadBean downloadBean14 = this.downloadBean;
            String ugcVideoId = downloadBean14 != null ? downloadBean14.getUgcVideoId() : null;
            DownloadBean downloadBean15 = this.downloadBean;
            String ugcVideoCollectionId = downloadBean15 != null ? downloadBean15.getUgcVideoCollectionId() : null;
            DownloadBean downloadBean16 = this.downloadBean;
            Map map2 = map;
            eu.a aVar3 = new eu.a(new SubtitleDownloadTable(str4, i11, str, lan, str7, str5, size, null, null, iIntValue3, str2, name2, resourceId, iIntValue, iIntValue2, 0, str3, status, null, str6, null, null, 0, ugcVideoId, ugcVideoCollectionId, downloadBean16 != null ? downloadBean16.getOps() : null, 7635328, null));
            if (subtitleItem.getIsOpenSubNewApi()) {
                aVar3.i(subtitleItem.getFileId());
                z10 = true;
                aVar3.j(true);
            } else {
                z10 = true;
            }
            String id3 = aVar3.b().getId();
            DownloadBean downloadBean17 = this.downloadBean;
            aVar3.l(Intrinsics.c(id3, downloadBean17 != null ? downloadBean17.getSubtitleSelectId() : null));
            if (aVar3.f()) {
                this.curDownloadedMap.put(aVar3, -1);
            }
            arrayList.add(aVar3);
            z11 = z10;
            map = map2;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(SubtitleSearchResultListFragment subtitleSearchResultListFragment) {
        subtitleSearchResultListFragment.K0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(SubtitleSearchResultListFragment subtitleSearchResultListFragment, BaseQuickAdapter adapter, View view, int i11) {
        com.transsion.subtitle.adapter.c cVar;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        Intrinsics.f(item, "null cannot be cast to non-null type com.transsion.subtitle.bean.VideoSubtitleBean");
        eu.a aVar = (eu.a) item;
        if (aVar.b().getStatus() == 2) {
            return;
        }
        if (!aVar.d() && subtitleSearchResultListFragment.hasSubDownloading) {
            uh.b.f76753a.d(R$string.subtitle_is_downloading);
            return;
        }
        if (aVar.f()) {
            return;
        }
        aVar.l(true);
        if (subtitleSearchResultListFragment.currentSelectPosition == i11) {
            subtitleSearchResultListFragment.currentSelectPosition = -1;
            subtitleSearchResultListFragment.currentSelectItem = null;
            return;
        }
        eu.a aVar2 = subtitleSearchResultListFragment.currentSelectItem;
        if (aVar2 != null) {
            aVar2.l(false);
        }
        int i12 = subtitleSearchResultListFragment.currentSelectPosition;
        if (i12 >= 0 && (cVar = subtitleSearchResultListFragment.resultAdapter) != null) {
            cVar.notifyItemChanged(i12, subtitleSearchResultListFragment.currentSelectItem);
        }
        String str = subtitleSearchResultListFragment.pageName;
        if (str == null) {
            str = "";
        }
        aVar.k(str);
        subtitleSearchResultListFragment.currentSelectItem = aVar;
        subtitleSearchResultListFragment.currentSelectPosition = i11;
        com.transsion.subtitle.adapter.c cVar2 = subtitleSearchResultListFragment.resultAdapter;
        if (cVar2 != null) {
            cVar2.notifyItemChanged(i11, aVar);
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "ORSubtitle_search", "select item = " + aVar.b().getName() + ", position = " + i11 + "， status:" + aVar.b().getStatus(), false, 4, null);
        if (aVar.d()) {
            Function1 function1 = subtitleSearchResultListFragment.selectSubtitleCallback;
            if (function1 != null) {
                function1.invoke(aVar);
                return;
            }
            return;
        }
        aVar.b().setStatus(2);
        lg.a.C0828a.r(c0828a, "ORSubtitle_search", new String[]{"itemClick, resourceId:" + aVar.b().getId() + ", name:" + aVar.b().getName() + " index:" + i11 + ", isOpenSubNewApi:" + aVar.e()}, false, 4, null);
        subtitleSearchResultListFragment.curDownloadedMap.put(aVar, Integer.valueOf(i11));
        subtitleSearchResultListFragment.x0(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(SubtitleSearchResultListFragment subtitleSearchResultListFragment, SubtitleSearchListBean subtitleSearchListBean) {
        String nextPage;
        Boolean hasMore;
        r6.f fVarH0;
        r6.f fVarH1;
        com.transsion.subtitle.adapter.c cVar;
        r6.f fVarH2;
        List<Object> data;
        boolean zBooleanValue = false;
        subtitleSearchResultListFragment.W0(false);
        Function0 function0 = subtitleSearchResultListFragment.onGetDataResultCallback;
        if (function0 != null) {
            function0.invoke();
        }
        subtitleSearchResultListFragment.isOpenSubtitle = subtitleSearchListBean != null && subtitleSearchListBean.getSearchType() == 2;
        if (subtitleSearchListBean == null || !subtitleSearchListBean.isRefresh()) {
            subtitleSearchResultListFragment.R0(false, 2);
        } else {
            subtitleSearchResultListFragment.R0(true, subtitleSearchListBean.getSearchType());
        }
        if (subtitleSearchListBean != null) {
            Pager pager = subtitleSearchListBean.getPager();
            if (pager == null || (nextPage = pager.getNextPage()) == null) {
                nextPage = "1";
            }
            subtitleSearchResultListFragment.nextPage = nextPage;
            List listF0 = subtitleSearchResultListFragment.F0(subtitleSearchListBean.getItems());
            Pager pager2 = subtitleSearchListBean.getPager();
            if (pager2 != null && (hasMore = pager2.getHasMore()) != null) {
                zBooleanValue = hasMore.booleanValue();
            }
            subtitleSearchResultListFragment.Z0(listF0, zBooleanValue);
            return Unit.f67061a;
        }
        com.transsion.subtitle.adapter.c cVar2 = subtitleSearchResultListFragment.resultAdapter;
        if (cVar2 == null || (data = cVar2.getData()) == null || data.size() != 0) {
            com.transsion.subtitle.adapter.c cVar3 = subtitleSearchResultListFragment.resultAdapter;
            if (cVar3 != null && (fVarH1 = cVar3.h0()) != null && fVarH1.r() && (cVar = subtitleSearchResultListFragment.resultAdapter) != null && (fVarH2 = cVar.h0()) != null) {
                fVarH2.v();
            }
            com.transsion.subtitle.adapter.c cVar4 = subtitleSearchResultListFragment.resultAdapter;
            if (cVar4 != null && (fVarH0 = cVar4.h0()) != null) {
                r6.f.u(fVarH0, false, 1, null);
            }
        } else if (nh.m.f70474a.e()) {
            subtitleSearchResultListFragment.V0();
        } else {
            subtitleSearchResultListFragment.X0();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J0(SubtitleSearchResultListFragment subtitleSearchResultListFragment, eu.a aVar) {
        if (aVar != null) {
            String url = aVar.b().getUrl();
            if (url == null || url.length() == 0) {
                aVar.b().setStatus(6);
                subtitleSearchResultListFragment.Y0(aVar);
            } else {
                subtitleSearchResultListFragment.x0(aVar);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void K0() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        r6.f fVarH0;
        r6.f fVarH1;
        if (this.isOpenSubtitle) {
            return;
        }
        com.transsion.subtitle.adapter.c cVar = this.resultAdapter;
        if (cVar == null || (fVarH1 = cVar.h0()) == null || !fVarH1.r()) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
                fu.b bVar = (fu.b) getMViewBinding();
                if (bVar == null || (recyclerView = bVar.f62478d) == null) {
                    return;
                }
                recyclerView.postDelayed(new Runnable() { // from class: com.transsion.subtitle.fragment.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        SubtitleSearchResultListFragment.M0(this.f54871a);
                    }
                }, 500L);
                return;
            }
            com.transsion.subtitle.adapter.c cVar2 = this.resultAdapter;
            if (cVar2 != null && (fVarH0 = cVar2.h0()) != null) {
                fVarH0.w();
            }
            fu.b bVar2 = (fu.b) getMViewBinding();
            if (bVar2 == null || (recyclerView2 = bVar2.f62478d) == null) {
                return;
            }
            recyclerView2.postDelayed(new Runnable() { // from class: com.transsion.subtitle.fragment.n
                @Override // java.lang.Runnable
                public final void run() {
                    SubtitleSearchResultListFragment.L0(this.f54870a);
                }
            }, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(SubtitleSearchResultListFragment subtitleSearchResultListFragment) {
        subtitleSearchResultListFragment.loadMore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(SubtitleSearchResultListFragment subtitleSearchResultListFragment) {
        r6.f fVarH0;
        com.transsion.subtitle.adapter.c cVar = subtitleSearchResultListFragment.resultAdapter;
        if (cVar == null || (fVarH0 = cVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(SubtitleSearchResultListFragment subtitleSearchResultListFragment, SubtitleDownloadTable subtitleDownloadTable) {
        List<Object> data;
        Object next;
        com.transsion.subtitle.adapter.c cVar = subtitleSearchResultListFragment.resultAdapter;
        if (cVar == null || (data = cVar.getData()) == null) {
            return;
        }
        Iterator<T> it = data.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((eu.a) next).b().getId(), subtitleDownloadTable.getId()));
        eu.a aVar = (eu.a) next;
        if (aVar != null) {
            aVar.h(subtitleDownloadTable);
            lg.a.C0828a c0828a = lg.a.f68839a;
            String strA = com.transsion.baselib.report.a.f43340a.a();
            DownloadBean downloadBean = subtitleSearchResultListFragment.downloadBean;
            String totalTitleName = downloadBean != null ? downloadBean.getTotalTitleName() : null;
            c0828a.c(strA, "搜索字幕下载成功，name = " + totalTitleName + ", subtype = " + aVar.b().getType() + ", download subtitleName = " + aVar.b().getSubtitleName() + ", lan = " + aVar.b().getLan() + "~", true);
            com.transsion.subtitle.adapter.c cVar2 = subtitleSearchResultListFragment.resultAdapter;
            Intrinsics.e(cVar2);
            aVar.l(cVar2.getData().indexOf(aVar) == subtitleSearchResultListFragment.currentSelectPosition);
            subtitleSearchResultListFragment.Y0(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(SubtitleSearchResultListFragment subtitleSearchResultListFragment, SubtitleDownloadTable subtitleDownloadTable) {
        List<Object> data;
        Object next;
        subtitleSearchResultListFragment.currentSelectPosition = -1;
        subtitleSearchResultListFragment.currentSelectItem = null;
        com.transsion.subtitle.adapter.c cVar = subtitleSearchResultListFragment.resultAdapter;
        if (cVar == null || (data = cVar.getData()) == null) {
            return;
        }
        Iterator<T> it = data.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((eu.a) next).b().getId(), subtitleDownloadTable.getId()));
        eu.a aVar = (eu.a) next;
        if (aVar != null) {
            aVar.h(subtitleDownloadTable);
            lg.a.C0828a c0828a = lg.a.f68839a;
            String strA = com.transsion.baselib.report.a.f43340a.a();
            DownloadBean downloadBean = subtitleSearchResultListFragment.downloadBean;
            String totalTitleName = downloadBean != null ? downloadBean.getTotalTitleName() : null;
            c0828a.x(strA, "搜索字幕下载失败TnT，name = " + totalTitleName + ", subtype = " + aVar.b().getType() + ", download subtitleName = " + aVar.b().getSubtitleName() + ", lan = " + aVar.b().getLan() + "~ , url：" + aVar.b().getUrl(), true);
            subtitleSearchResultListFragment.Y0(aVar);
        }
    }

    private final void P0() {
        this.nextPage = "1";
        com.transsion.subtitle.adapter.c cVar = this.resultAdapter;
        if (cVar != null) {
            cVar.n1(CollectionsKt.l());
        }
        if (!nh.m.f70474a.e()) {
            X0();
            return;
        }
        W0(true);
        SubtitleDownloadViewModel subtitleDownloadViewModel = this.viewModel;
        if (subtitleDownloadViewModel != null) {
            SubtitleDownloadViewModel.u(subtitleDownloadViewModel, this.keyword, this.languages, this.languageList, this.downloadBean, this.nextPage, 0, 32, null);
        }
    }

    private final void R0(boolean isSuccess, int type) {
        DownloadBean downloadBean;
        SubtitleLanguageMapBean subtitleLanguageMapBean;
        String lan;
        String str = this.pageName;
        if (str == null || (downloadBean = this.downloadBean) == null || (subtitleLanguageMapBean = this.languageBean) == null || (lan = subtitleLanguageMapBean.getLan()) == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("result", isSuccess ? "1" : "0");
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(type));
        linkedHashMap.put("lan", lan);
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = "";
        }
        linkedHashMap.put("resource_id", resourceId);
        String subjectId = downloadBean.getSubjectId();
        linkedHashMap.put("subject_id", subjectId != null ? subjectId : "");
        if (downloadBean.getEp() > 0) {
            linkedHashMap.put("ep", String.valueOf(downloadBean.getEp()));
        }
        if (downloadBean.getSe() > 0) {
            linkedHashMap.put("se", String.valueOf(downloadBean.getSe()));
        }
        hj.i.f64505a.s(str, "subtitle_search", linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S0(DownloadBean downloadBean, SubtitleLanguageMapBean languageBean, String searchName) {
        this.downloadBean = downloadBean;
        this.searchName = searchName;
        if (languageBean != null) {
            this.languageBean = languageBean;
            this.languages = languageBean.getLan();
            this.languageList.add(languageBean);
        }
    }

    private final void V0() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "ORSubtitle_search", "showFail~", false, 4, null);
        W0(false);
        com.transsion.subtitle.adapter.c cVar = this.resultAdapter;
        if (cVar != null) {
            cVar.Y0(C0(context));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void W0(boolean show) {
        LinearLayoutCompat linearLayoutCompat;
        fu.b bVar = (fu.b) getMViewBinding();
        if (bVar == null || (linearLayoutCompat = bVar.f62477c) == null) {
            return;
        }
        linearLayoutCompat.setVisibility(show ? 0 : 8);
    }

    private final void X0() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "ORSubtitle_search", "showNotNet~", false, 4, null);
        W0(false);
        com.transsion.subtitle.adapter.c cVar = this.resultAdapter;
        if (cVar != null) {
            cVar.Y0(D0(context));
        }
    }

    private final void Y0(eu.a bean) {
        int iIndexOf;
        com.transsion.subtitle.adapter.c cVar;
        com.transsion.subtitle.adapter.c cVar2 = this.resultAdapter;
        if (cVar2 == null || (iIndexOf = cVar2.getData().indexOf(bean)) < 0 || !isAdded() || (cVar = this.resultAdapter) == null) {
            return;
        }
        cVar.notifyItemChanged(iIndexOf, bean);
    }

    private final void Z0(List list, boolean hasMore) {
        List<Object> listL;
        r6.f fVarH0;
        r6.f fVarH1;
        com.transsion.subtitle.adapter.c cVar;
        r6.f fVarH2;
        List<Object> data;
        r6.f fVarH3;
        r6.f fVarH4;
        com.transsion.subtitle.adapter.c cVar2;
        r6.f fVarH5;
        r6.f fVarH6;
        List<Object> data2;
        if (list.isEmpty()) {
            com.transsion.subtitle.adapter.c cVar3 = this.resultAdapter;
            if (cVar3 != null && (data2 = cVar3.getData()) != null && data2.size() == 0) {
                if (nh.m.f70474a.e()) {
                    showEmpty();
                } else {
                    X0();
                }
            }
            com.transsion.subtitle.adapter.c cVar4 = this.resultAdapter;
            if (cVar4 == null || (fVarH6 = cVar4.h0()) == null) {
                return;
            }
            r6.f.u(fVarH6, false, 1, null);
            return;
        }
        com.transsion.subtitle.adapter.c cVar5 = this.resultAdapter;
        if (cVar5 != null && (data = cVar5.getData()) != null && data.isEmpty()) {
            com.transsion.subtitle.adapter.c cVar6 = this.resultAdapter;
            if (cVar6 != null) {
                cVar6.n1(list);
            }
            if (!hasMore) {
                com.transsion.subtitle.adapter.c cVar7 = this.resultAdapter;
                if (cVar7 == null || (fVarH3 = cVar7.h0()) == null) {
                    return;
                }
                r6.f.u(fVarH3, false, 1, null);
                return;
            }
            com.transsion.subtitle.adapter.c cVar8 = this.resultAdapter;
            if (cVar8 == null || (fVarH4 = cVar8.h0()) == null || !fVarH4.r() || (cVar2 = this.resultAdapter) == null || (fVarH5 = cVar2.h0()) == null) {
                return;
            }
            fVarH5.s();
            return;
        }
        com.transsion.subtitle.adapter.c cVar9 = this.resultAdapter;
        if (cVar9 == null || (listL = cVar9.getData()) == null) {
            listL = CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            eu.a aVar = (eu.a) obj;
            List<Object> list2 = listL;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator<T> it = list2.iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (!Intrinsics.c(aVar.b().getUrl(), ((eu.a) it.next()).b().getUrl()));
            }
            arrayList.add(obj);
        }
        if (arrayList.isEmpty()) {
            lg.a.C0828a.f(lg.a.f68839a, "ORSubtitle_search", "全部去重了~", false, 4, null);
            return;
        }
        com.transsion.subtitle.adapter.c cVar10 = this.resultAdapter;
        if (cVar10 != null) {
            cVar10.q(arrayList);
        }
        if (!hasMore) {
            com.transsion.subtitle.adapter.c cVar11 = this.resultAdapter;
            if (cVar11 == null || (fVarH0 = cVar11.h0()) == null) {
                return;
            }
            r6.f.u(fVarH0, false, 1, null);
            return;
        }
        com.transsion.subtitle.adapter.c cVar12 = this.resultAdapter;
        if (cVar12 == null || (fVarH1 = cVar12.h0()) == null || !fVarH1.r() || (cVar = this.resultAdapter) == null || (fVarH2 = cVar.h0()) == null) {
            return;
        }
        fVarH2.s();
    }

    private final View getEmptyView(Context context) {
        String string = context.getString(R$string.subtitle_no_subtitles_found);
        Intrinsics.g(string, "getString(...)");
        return z0(this, context, string, false, 4, null);
    }

    private final void loadData() {
        if (!nh.m.f70474a.e()) {
            X0();
            return;
        }
        SubtitleDownloadViewModel subtitleDownloadViewModel = this.viewModel;
        if (subtitleDownloadViewModel != null) {
            SubtitleDownloadViewModel.u(subtitleDownloadViewModel, this.keyword, this.languages, this.languageList, this.downloadBean, this.nextPage, 0, 32, null);
        }
    }

    private final void loadMore() {
        SubtitleDownloadViewModel subtitleDownloadViewModel = this.viewModel;
        if (subtitleDownloadViewModel != null) {
            SubtitleDownloadViewModel.u(subtitleDownloadViewModel, this.keyword, this.languages, this.languageList, this.downloadBean, this.nextPage, 0, 32, null);
        }
    }

    private final void showEmpty() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "ORSubtitle_search", "showEmpty~", false, 4, null);
        W0(false);
        com.transsion.subtitle.adapter.c cVar = this.resultAdapter;
        if (cVar != null) {
            cVar.Y0(getEmptyView(context));
        }
    }

    private final void w0() {
        com.transsion.subtitle.h.a aVar = com.transsion.subtitle.h.f54887a;
        aVar.b().b(this);
        aVar.b().d(this);
    }

    private final void x0(eu.a item) {
        String url;
        if (item.e() && ((url = item.b().getUrl()) == null || url.length() == 0)) {
            lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), "搜索下载字幕，是opensubtitle 新api，需要先请求才能下载", true);
            SubtitleDownloadViewModel subtitleDownloadViewModel = this.viewModel;
            if (subtitleDownloadViewModel != null) {
                subtitleDownloadViewModel.k(item);
                return;
            }
            return;
        }
        this.hasSubDownloading = true;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String strA = com.transsion.baselib.report.a.f43340a.a();
        DownloadBean downloadBean = this.downloadBean;
        String totalTitleName = downloadBean != null ? downloadBean.getTotalTitleName() : null;
        c0828a.c(strA, "搜索下载字幕，name = " + totalTitleName + ", subtype = " + item.b().getType() + ", download subtitleName = " + item.b().getSubtitleName() + ", subResourceId = " + item.b().getId() + "~", true);
        item.b().setSetImmediately(true);
        com.transsion.subtitle.h.f54887a.b().j(item);
    }

    private final View y0(Context context, String desText, boolean showLeftBtn) {
        final DefaultView defaultView = new DefaultView(context, DefaultView.ModelStyle.MODEL_STYLE_NIGHT);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_DES_BTN);
        defaultView.setDescText(desText);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_NO_IMAGE);
        defaultView.setBtnVisibility(0);
        String string = context.getString(com.transsion.baseui.R$string.retry_text);
        Intrinsics.g(string, "getString(...)");
        defaultView.setBtnText(string);
        defaultView.setTipOperationVisibility(8);
        defaultView.setBtnBg(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.post_detail_shape_subtitle_empty_btn_bg));
        defaultView.setBtnTextColor(-1);
        defaultView.setBackgroundColor(0);
        defaultView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.subtitle.fragment.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubtitleSearchResultListFragment.A0(this.f54872a, defaultView, view);
            }
        });
        defaultView.setLeftBtnVisibility(showLeftBtn ? 0 : 8);
        String string2 = context.getString(com.tn.lib.widget.R$string.go_to_setting);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setLeftBtnText(string2);
        defaultView.setLeftBtnBg(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.post_detail_shape_subtitle_empty_btn_bg));
        defaultView.setLeftBtnTextColor(-1);
        defaultView.setLeftBtnClickListener(new View.OnClickListener() { // from class: com.transsion.subtitle.fragment.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubtitleSearchResultListFragment.B0(defaultView, view);
            }
        });
        defaultView.setTitleViewVisibility(8);
        int iA = com.blankj.utilcode.util.a0.a(16.0f);
        defaultView.setPadding(iA, com.blankj.utilcode.util.a0.a(30.0f), iA, 0);
        defaultView.setVisibility(0);
        return defaultView;
    }

    static /* synthetic */ View z0(SubtitleSearchResultListFragment subtitleSearchResultListFragment, Context context, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return subtitleSearchResultListFragment.y0(context, str, z10);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: E0, reason: merged with bridge method [inline-methods] */
    public fu.b getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        fu.b bVarC = fu.b.c(inflater);
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override // hu.c
    public void J(boolean z10, DownloadBean downloadBean) {
        hu.c.a.a(this, z10, downloadBean);
    }

    public final void Q0(String searchName) {
        if (searchName == null || searchName.length() == 0) {
            return;
        }
        this.searchName = searchName;
        DownloadBean downloadBean = this.downloadBean;
        int se2 = downloadBean != null ? downloadBean.getSe() : 0;
        DownloadBean downloadBean2 = this.downloadBean;
        this.keyword = new i(searchName, se2, downloadBean2 != null ? downloadBean2.getEp() : 0);
        P0();
    }

    public final void T0(Function0 callback) {
        this.onGetDataResultCallback = callback;
    }

    public final void U0(Function1 callback) {
        this.selectSubtitleCallback = callback;
    }

    @Override // hu.c
    public void g(eu.a bean) {
        com.transsion.subtitle.adapter.c cVar;
        List<Object> data;
        Intrinsics.h(bean, "bean");
        for (Map.Entry entry : this.curDownloadedMap.entrySet()) {
            eu.a aVar = (eu.a) entry.getKey();
            int iIntValue = ((Number) entry.getValue()).intValue();
            if (!Intrinsics.c(bean.b().getId(), aVar.b().getId())) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                lg.a.C0828a.v(c0828a, "ORSubtitle_search", "subtitleSelected, resourceId = " + aVar.b().getId() + ", name = " + aVar.b().getName(), false, 4, null);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    aVar.l(false);
                    if (iIntValue < 0) {
                        com.transsion.subtitle.adapter.c cVar2 = this.resultAdapter;
                        iIntValue = (cVar2 == null || (data = cVar2.getData()) == null) ? -1 : data.indexOf(aVar);
                    }
                    lg.a.C0828a.v(c0828a, "ORSubtitle_search", "subtitleSelected2, index = " + iIntValue, false, 4, null);
                    if (iIntValue >= 0 && (cVar = this.resultAdapter) != null) {
                        cVar.notifyItemChanged(iIntValue, aVar);
                    }
                    Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m454constructorimpl(ResultKt.a(th2));
                }
            }
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        RecyclerView recyclerView;
        com.transsion.subtitle.adapter.c cVar = new com.transsion.subtitle.adapter.c(true, new ArrayList());
        cVar.h0().C(new SubtitleDialogLoadMoreView());
        cVar.h0().z(true);
        cVar.h0().y(true);
        cVar.h0().E(2);
        cVar.h0().D(new p6.f() { // from class: com.transsion.subtitle.fragment.l
            @Override // p6.f
            public final void a() {
                SubtitleSearchResultListFragment.G0(this.f54868a);
            }
        });
        cVar.R0(new c());
        cVar.w1(new p6.d() { // from class: com.transsion.subtitle.fragment.m
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                SubtitleSearchResultListFragment.H0(this.f54869a, baseQuickAdapter, view, i11);
            }
        });
        this.resultAdapter = cVar;
        fu.b bVar = (fu.b) getMViewBinding();
        if (bVar == null || (recyclerView = bVar.f62478d) == null) {
            return;
        }
        recyclerView.setAdapter(this.resultAdapter);
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        Intrinsics.h(view, "view");
        super.initViewData(view, savedInstanceState);
        fu.b bVar = (fu.b) getMViewBinding();
        if (bVar == null || (recyclerView = bVar.f62478d) == null) {
            return;
        }
        recyclerView.addOnScrollListener(new b());
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        String strE;
        androidx.p009lifecycle.b0 b0VarL;
        androidx.p009lifecycle.b0 b0VarO;
        String subtitleResId;
        SubtitleDownloadViewModel subtitleDownloadViewModel = (SubtitleDownloadViewModel) new v0(this).a(SubtitleDownloadViewModel.class);
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean != null && (subtitleResId = downloadBean.getSubtitleResId()) != null) {
            subtitleDownloadViewModel.g(subtitleResId);
        }
        this.viewModel = subtitleDownloadViewModel;
        String str = this.searchName;
        if (str == null || str.length() == 0) {
            strE = SubtitleSearchHelper.f54890c.a().e(this.downloadBean);
        } else {
            strE = this.searchName;
            Intrinsics.e(strE);
        }
        DownloadBean downloadBean2 = this.downloadBean;
        int se2 = downloadBean2 != null ? downloadBean2.getSe() : 0;
        DownloadBean downloadBean3 = this.downloadBean;
        this.keyword = new i(strE, se2, downloadBean3 != null ? downloadBean3.getEp() : 0);
        SubtitleDownloadViewModel subtitleDownloadViewModel2 = this.viewModel;
        if (subtitleDownloadViewModel2 != null && (b0VarO = subtitleDownloadViewModel2.o()) != null) {
            b0VarO.j(this, new d(new Function1() { // from class: com.transsion.subtitle.fragment.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubtitleSearchResultListFragment.I0(this.f54866a, (SubtitleSearchListBean) obj);
                }
            }));
        }
        SubtitleDownloadViewModel subtitleDownloadViewModel3 = this.viewModel;
        if (subtitleDownloadViewModel3 == null || (b0VarL = subtitleDownloadViewModel3.l()) == null) {
            return;
        }
        b0VarL.j(this, new d(new Function1() { // from class: com.transsion.subtitle.fragment.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubtitleSearchResultListFragment.J0(this.f54867a, (eu.a) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
        w0();
        W0(true);
        loadData();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
    }

    @Override // com.transsion.subtitle_download.a
    public void onComplete(final SubtitleDownloadTable dbBean) {
        Intrinsics.h(dbBean, "dbBean");
        this.hasSubDownloading = false;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.transsion.subtitle.fragment.r
                @Override // java.lang.Runnable
                public final void run() {
                    SubtitleSearchResultListFragment.N0(this.f54875a, dbBean);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.transsion.subtitle.h.a aVar = com.transsion.subtitle.h.f54887a;
        aVar.b().c(this);
        aVar.b().f(this);
    }

    @Override // com.transsion.subtitle_download.a
    public void onDownloading(int progress, SubtitleDownloadTable dbBean) {
        Intrinsics.h(dbBean, "dbBean");
    }

    @Override // com.transsion.subtitle_download.a
    public void onFail(Exception e11, final SubtitleDownloadTable dbBean) {
        Intrinsics.h(e11, "e");
        Intrinsics.h(dbBean, "dbBean");
        this.hasSubDownloading = false;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.transsion.subtitle.fragment.s
                @Override // java.lang.Runnable
                public final void run() {
                    SubtitleSearchResultListFragment.O0(this.f54877a, dbBean);
                }
            });
        }
    }

    @Override // com.transsion.subtitle_download.a
    public void onSaveDownload(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0673a.a(this, subtitleDownloadTable);
    }

    @Override // com.transsion.subtitle_download.a
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0673a.b(this, subtitleDownloadTable);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.pageName = arguments.getString("KEY_PAGE_NAME", "");
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        W0(true);
        loadData();
    }
}
