package com.transsnet.downloader.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLTextView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$string;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.moviedetailapi.bean.DownloadResolutionItem;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0013\u0010\u000eJ'\u0010\u0017\u001a\u00020\f2\u000e\u0010\u0015\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00142\u0006\u0010\u0016\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\t¢\u0006\u0004\b\u001e\u0010\u0012J\u0015\u0010 \u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\t¢\u0006\u0004\b \u0010\u0012J#\u0010%\u001a\u00020\f2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!2\u0006\u0010$\u001a\u00020\t¢\u0006\u0004\b%\u0010&J#\u0010)\u001a\u00020\f2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020'0!2\u0006\u0010(\u001a\u00020\t¢\u0006\u0004\b)\u0010&J'\u0010,\u001a\u00020\f2\u0018\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\f0*¢\u0006\u0004\b,\u0010-J'\u0010.\u001a\u00020\f2\u0018\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\f0*¢\u0006\u0004\b.\u0010-J\u001b\u00100\u001a\u00020\f2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\f0/¢\u0006\u0004\b0\u00101J\u001b\u00102\u001a\u00020\f2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\f0/¢\u0006\u0004\b2\u00101J\u0017\u00105\u001a\u00020\f2\b\u00104\u001a\u0004\u0018\u000103¢\u0006\u0004\b5\u00106R\u0014\u00109\u001a\u0002038\u0002X\u0082D¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010@\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR*\u0010G\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\f\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR*\u0010I\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\f\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010FR\u001e\u0010L\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u001e\u0010N\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010KR\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010?R\u0016\u0010R\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010?R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010\u0010\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010?R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010V¨\u0006W"}, d2 = {"Lcom/transsnet/downloader/widget/DownloadResolutionTabView;", "Lcom/noober/background/view/BLConstraintLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "n", "()V", TtmlNode.TAG_P, "curSeason", "t", "(I)V", "l", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", RequestParameters.POSITION, "o", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "setSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "seasons", "setSeasons", "season", "setSeason", "", "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;", "data", "resolutionPosition", "setResolutionContentData", "(Ljava/util/List;I)V", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "audioPosition", "setAudioContentData", "Lkotlin/Function2;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setResolutionItemClickListener", "(Lkotlin/jvm/functions/Function2;)V", "setAudioItemClickListener", "Lkotlin/Function0;", "setSeasonClickListener", "(Lkotlin/jvm/functions/Function0;)V", "setAudioClickListener", "", "name", "updateAudioTrack", "(Ljava/lang/String;)V", "a", "Ljava/lang/String;", "TAG", "Lpy/y0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lpy/y0;", "viewBinding", "c", "I", "dp16", "Lcom/transsnet/downloader/adapter/r;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsnet/downloader/adapter/r;", "resolutionTabAdapter", "e", "Lkotlin/jvm/functions/Function2;", "resolutionItemClickListener", "f", "audioItemClickListener", "g", "Lkotlin/jvm/functions/Function0;", "audioClickListener", "h", "seasonClickListener", "i", "curResPosition", "j", "curAudioPosition", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/moviedetailapi/bean/Subject;", "m", "Ljava/lang/Integer;", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"ViewConstructor"})
@SourceDebugExtension
public final class DownloadResolutionTabView extends BLConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final py.y0 viewBinding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int dp16;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private com.transsnet.downloader.adapter.r resolutionTabAdapter;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function2 resolutionItemClickListener;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function2 audioItemClickListener;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Function0 audioClickListener;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private Function0 seasonClickListener;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int curResPosition;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private int curAudioPosition;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private Subject subject;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int curSeason;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private Integer seasons;

    public static final class a implements zm.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BaseQuickAdapter f60145b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60146c;

        a(BaseQuickAdapter baseQuickAdapter, int i11) {
            this.f60145b = baseQuickAdapter;
            this.f60146c = i11;
        }

        @Override // zm.a
        public void a(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.f(this, memberCheckResult);
        }

        @Override // zm.a
        public void b(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.d(this, memberCheckResult);
        }

        @Override // zm.a
        public void c(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.g(this, memberCheckResult);
        }

        @Override // zm.a
        public void d(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.e(this, memberCheckResult);
        }

        @Override // zm.a
        public void e() {
            zm.a.C0979a.c(this);
            DownloadResolutionTabView downloadResolutionTabView = DownloadResolutionTabView.this;
            BaseQuickAdapter baseQuickAdapter = this.f60145b;
            Intrinsics.e(baseQuickAdapter);
            downloadResolutionTabView.o(baseQuickAdapter, this.f60146c);
        }

        @Override // zm.a
        public void f(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.a(this, memberCheckResult);
        }

        @Override // zm.a
        public void onFail(String errorMsg) {
            Intrinsics.h(errorMsg, "errorMsg");
            zm.a.C0979a.b(this, errorMsg);
            lg.a.C0828a.f(lg.a.f68839a, "co_mem", "DownloadResolutionTabView --> initRvAndAdapter() --> 剧集选择分辨率 -->  " + errorMsg, false, 4, null);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadResolutionTabView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadResolutionTabView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadResolutionTabView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.TAG = "DownloadResolutionTabView";
        this.dp16 = com.blankj.utilcode.util.a0.a(16.0f);
        this.curResPosition = -1;
        this.curAudioPosition = -1;
        this.curSeason = 1;
        View.inflate(context, R$layout.layout_download_re_resolution_tab, this);
        py.y0 y0VarA = py.y0.a(this);
        Intrinsics.g(y0VarA, "bind(...)");
        this.viewBinding = y0VarA;
        n();
    }

    private final void l() {
        com.transsnet.downloader.adapter.r rVar = new com.transsnet.downloader.adapter.r();
        rVar.E1(this.subject);
        rVar.w1(new p6.d() { // from class: com.transsnet.downloader.widget.v
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                DownloadResolutionTabView.m(this.f60234a, baseQuickAdapter, view, i11);
            }
        });
        this.resolutionTabAdapter = rVar;
        RecyclerView recyclerView = this.viewBinding.f72991h;
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 4));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.a(dk.a.b(8), 0, 0, 0));
        }
        recyclerView.setAdapter(this.resolutionTabAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(DownloadResolutionTabView downloadResolutionTabView, BaseQuickAdapter adapter, View view, int i11) {
        IMemberApi iMemberApi;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (i11 == downloadResolutionTabView.curResPosition) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_tips);
            return;
        }
        Object objF0 = adapter.f0(i11);
        DownloadResolutionItem downloadResolutionItem = objF0 instanceof DownloadResolutionItem ? (DownloadResolutionItem) objF0 : null;
        if (downloadResolutionItem == null || (iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0])) == null) {
            return;
        }
        iMemberApi.o(Integer.valueOf(downloadResolutionItem.getResolution()), downloadResolutionTabView.new a(adapter, i11));
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0013  */
    private final void n() {
        ConstraintLayout.b bVar;
        if (getLayoutParams() != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            bVar = (ConstraintLayout.b) layoutParams;
            if (bVar == null) {
                bVar = new ConstraintLayout.b(-1, -2);
            }
        } else {
            bVar = new ConstraintLayout.b(-1, -2);
        }
        bVar.setMarginStart(this.dp16);
        bVar.setMarginEnd(this.dp16);
        setLayoutParams(bVar);
        l();
        p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(BaseQuickAdapter adapter, int position) {
        Function2 function2;
        try {
            Object objF0 = adapter.f0(this.curResPosition);
            DownloadResolutionItem downloadResolutionItem = objF0 instanceof DownloadResolutionItem ? (DownloadResolutionItem) objF0 : null;
            if (downloadResolutionItem != null) {
                downloadResolutionItem.setSelected(false);
            }
            adapter.notifyItemChanged(this.curResPosition, Boolean.FALSE);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        Object objF1 = adapter.f0(position);
        DownloadResolutionItem downloadResolutionItem2 = objF1 instanceof DownloadResolutionItem ? (DownloadResolutionItem) objF1 : null;
        if (downloadResolutionItem2 != null) {
            downloadResolutionItem2.setSelected(true);
        }
        adapter.notifyItemChanged(position, Boolean.TRUE);
        this.curResPosition = position;
        if (downloadResolutionItem2 == null || (function2 = this.resolutionItemClickListener) == null) {
            return;
        }
        function2.invoke(Integer.valueOf(position), downloadResolutionItem2);
    }

    private final void p() {
        this.viewBinding.f72985b.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadResolutionTabView.q(this.f60228a, view);
            }
        });
        this.viewBinding.f72992i.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadResolutionTabView.r(this.f60230a, view);
            }
        });
        this.viewBinding.f72989f.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadResolutionTabView.s(this.f60232a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(DownloadResolutionTabView downloadResolutionTabView, View view) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_DETAIL");
        Subject subject = downloadResolutionTabView.subject;
        Navigator.x(navigatorK.K("subject_id", subject != null ? subject.getSubjectId() : null), downloadResolutionTabView.getContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(DownloadResolutionTabView downloadResolutionTabView, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "DownloadDialog", "innerTvTitle click then switch audio track", false, 4, null);
        Function0 function0 = downloadResolutionTabView.audioClickListener;
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(DownloadResolutionTabView downloadResolutionTabView, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "DownloadDialog", "Switch seasons", false, 4, null);
        com.blankj.utilcode.util.a.b();
        Function0 function0 = downloadResolutionTabView.seasonClickListener;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void t(int curSeason) {
        this.curSeason = curSeason;
        Subject subject = this.subject;
        if (subject != null && subject.isTvType()) {
            BLTextView bLTextView = this.viewBinding.f72989f;
            Context context = getContext();
            bLTextView.setText(context != null ? context.getString(com.transsnet.downloader.R$string.download_video_detail_season_index, jn.f.a(curSeason)) : null);
            return;
        }
        Subject subject2 = this.subject;
        if (subject2 == null || !subject2.isEduType()) {
            BLTextView ivSeasons = this.viewBinding.f72989f;
            Intrinsics.g(ivSeasons, "ivSeasons");
            jg.c.g(ivSeasons);
        } else {
            BLTextView bLTextView2 = this.viewBinding.f72989f;
            Context context2 = getContext();
            bLTextView2.setText(context2 != null ? context2.getString(com.transsnet.downloader.R$string.download_video_detail_unit_index, jn.f.a(curSeason)) : null);
        }
    }

    public final void setAudioClickListener(Function0<Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.audioClickListener = listener;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0041  */
    public final void setAudioContentData(List<DubsInfo> data, int audioPosition) {
        boolean z10;
        Intrinsics.h(data, "data");
        lg.a.C0828a.f(lg.a.f68839a, "DownloadDialog", "setAudioContentData size:" + data.size(), false, 4, null);
        this.curAudioPosition = audioPosition;
        BLTextView tvLanguage = this.viewBinding.f72992i;
        Intrinsics.g(tvLanguage, "tvLanguage");
        if (!data.isEmpty()) {
            z10 = data.size() > 1;
        }
        tvLanguage.setVisibility(z10 ? 0 : 8);
        if (audioPosition < 0 || audioPosition >= data.size()) {
            return;
        }
        this.viewBinding.f72992i.setText(data.get(audioPosition).getLanName());
    }

    public final void setAudioItemClickListener(Function2<? super Integer, ? super DubsInfo, Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.audioItemClickListener = listener;
    }

    public final void setResolutionContentData(List<DownloadResolutionItem> data, int resolutionPosition) {
        Intrinsics.h(data, "data");
        RecyclerView qualityRecyclerView = this.viewBinding.f72991h;
        Intrinsics.g(qualityRecyclerView, "qualityRecyclerView");
        jg.c.k(qualityRecyclerView);
        View vLine = this.viewBinding.f72994k;
        Intrinsics.g(vLine, "vLine");
        jg.c.k(vLine);
        this.curResPosition = resolutionPosition;
        com.transsnet.downloader.adapter.r rVar = this.resolutionTabAdapter;
        if (rVar != null) {
            List<DownloadResolutionItem> list = data;
            rVar.n1(list);
            if (list.isEmpty()) {
                return;
            }
            o(rVar, resolutionPosition);
        }
    }

    public final void setResolutionItemClickListener(Function2<? super Integer, ? super DownloadResolutionItem, Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.resolutionItemClickListener = listener;
    }

    public final void setSeason(int season) {
        t(season);
    }

    public final void setSeasonClickListener(Function0<Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.seasonClickListener = listener;
    }

    public final void setSeasons(int seasons) {
        this.seasons = Integer.valueOf(seasons);
        if (seasons <= 1) {
            BLTextView ivSeasons = this.viewBinding.f72989f;
            Intrinsics.g(ivSeasons, "ivSeasons");
            jg.c.g(ivSeasons);
        } else {
            BLTextView ivSeasons2 = this.viewBinding.f72989f;
            Intrinsics.g(ivSeasons2, "ivSeasons");
            jg.c.k(ivSeasons2);
        }
    }

    public final void setSubject(Subject subject) {
        ResourceDetectors resourceDetectors;
        Intrinsics.h(subject, "subject");
        this.subject = subject;
        List<ResourceDetectors> resourceDetectors2 = subject.getResourceDetectors();
        if (resourceDetectors2 == null || (resourceDetectors = (ResourceDetectors) CollectionsKt.k0(resourceDetectors2)) == null) {
            return;
        }
        this.viewBinding.f72987d.setText(resourceDetectors.getUploadBy());
    }

    public final void updateAudioTrack(String name) {
        this.viewBinding.f72992i.setText(name);
    }
}
