package com.transsion.moviedetail.fragment;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.play.detail.fragment.BaseBottomDialogFragment;
import com.transsnet.downloader.R$anim;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.bean.SeasonListBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u000b\u0018\u0000 ;2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001<B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J!\u0010\u000e\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u0015\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u001a\u0010\tJ\u000f\u0010\u001b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J2\u0010!\u001a\u00020\u00072#\u0010 \u001a\u001f\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c¢\u0006\u0004\b!\u0010\"J)\u0010(\u001a\u0004\u0018\u00010'2\u0006\u0010#\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010)R\u0018\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00107\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010-R3\u0010:\u001a\u001f\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109¨\u0006="}, d2 = {"Lcom/transsion/moviedetail/fragment/VideoDetailSeasonsSelectFragment;", "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;", "Lcn/v;", "<init>", "()V", "", "season", "", "t0", "(I)V", "u0", "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "seasonList", "subjectType", "v0", "(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;Ljava/lang/Integer;)V", "Landroid/view/LayoutInflater;", "inflater", "q0", "(Landroid/view/LayoutInflater;)Lcn/v;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewModel", "initListener", "retryLoadData", "x0", "initViewData", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "index", "callback", "w0", "(Lkotlin/jvm/functions/Function1;)V", "transit", "", "enter", "nextAnim", "Landroid/view/animation/Animation;", "onCreateAnimation", "(IZI)Landroid/view/animation/Animation;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "c", "Ljava/lang/Integer;", "Lcom/transsnet/downloader/adapter/s;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsnet/downloader/adapter/s;", "seasonAdapter", "", "e", "J", "lastClickTime", "f", "curSeason", "g", "Lkotlin/jvm/functions/Function1;", "selSelectCallback", "h", "a", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class VideoDetailSeasonsSelectFragment extends BaseBottomDialogFragment<cn.v> {

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ResourcesSeasonList seasonList;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Integer subjectType;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private com.transsnet.downloader.adapter.s seasonAdapter;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private long lastClickTime;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Integer curSeason;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Function1 selSelectCallback;

    /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.VideoDetailSeasonsSelectFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final VideoDetailSeasonsSelectFragment a(ResourcesSeasonList resourcesSeasonList, Integer num) {
            VideoDetailSeasonsSelectFragment videoDetailSeasonsSelectFragment = new VideoDetailSeasonsSelectFragment();
            videoDetailSeasonsSelectFragment.v0(resourcesSeasonList, num);
            return videoDetailSeasonsSelectFragment;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(VideoDetailSeasonsSelectFragment videoDetailSeasonsSelectFragment, View view) {
        videoDetailSeasonsSelectFragment.u0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(VideoDetailSeasonsSelectFragment videoDetailSeasonsSelectFragment, BaseQuickAdapter adapter, View view, int i11) {
        SeasonListBean seasonListBean;
        List<Object> data;
        List<Object> data2;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        Intrinsics.f(item, "null cannot be cast to non-null type com.transsnet.downloader.bean.SeasonListBean");
        SeasonListBean seasonListBean2 = (SeasonListBean) item;
        if (videoDetailSeasonsSelectFragment.lastClickTime == 0 || System.currentTimeMillis() - videoDetailSeasonsSelectFragment.lastClickTime > 1000) {
            videoDetailSeasonsSelectFragment.lastClickTime = System.currentTimeMillis();
            com.transsnet.downloader.adapter.s sVar = videoDetailSeasonsSelectFragment.seasonAdapter;
            int i12 = -1;
            if (sVar != null && (data2 = sVar.getData()) != null) {
                Iterator<Object> it = data2.iterator();
                int i13 = 0;
                while (it.hasNext()) {
                    SeasonListBean seasonListBean3 = (SeasonListBean) it.next();
                    Integer num = videoDetailSeasonsSelectFragment.curSeason;
                    int season = seasonListBean3.getSeason();
                    if (num != null && num.intValue() == season) {
                        i12 = i13;
                        break;
                    }
                    i13++;
                }
            }
            if (i12 >= 0) {
                com.transsnet.downloader.adapter.s sVar2 = videoDetailSeasonsSelectFragment.seasonAdapter;
                if (i12 < ((sVar2 == null || (data = sVar2.getData()) == null) ? 0 : data.size())) {
                    com.transsnet.downloader.adapter.s sVar3 = videoDetailSeasonsSelectFragment.seasonAdapter;
                    if (sVar3 != null && (seasonListBean = (SeasonListBean) sVar3.getItem(i12)) != null) {
                        seasonListBean.setSelected(false);
                    }
                    com.transsnet.downloader.adapter.s sVar4 = videoDetailSeasonsSelectFragment.seasonAdapter;
                    if (sVar4 != null) {
                        sVar4.notifyItemChanged(i12, Boolean.FALSE);
                    }
                }
            }
            seasonListBean2.setSelected(true);
            videoDetailSeasonsSelectFragment.curSeason = Integer.valueOf(seasonListBean2.getSeason());
            com.transsnet.downloader.adapter.s sVar5 = videoDetailSeasonsSelectFragment.seasonAdapter;
            if (sVar5 != null) {
                sVar5.notifyItemChanged(i11, Boolean.TRUE);
            }
            videoDetailSeasonsSelectFragment.t0(seasonListBean2.getSeason());
            videoDetailSeasonsSelectFragment.u0();
        }
    }

    private final void t0(int season) {
        Function1 function1 = this.selSelectCallback;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(season));
        }
    }

    private final void u0() {
        l0(true);
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
        List<ResourcesSeason> seasons;
        AppCompatTextView appCompatTextView;
        List<ResourcesSeason> seasons2;
        AppCompatTextView appCompatTextView2;
        List<ResourcesSeason> seasons3;
        cn.v vVar = (cn.v) getMViewBinding();
        if (vVar != null) {
            vVar.f17516d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.f3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VideoDetailSeasonsSelectFragment.r0(this.f47171a, view);
                }
            });
            ResourcesSeasonList resourcesSeasonList = this.seasonList;
            if (resourcesSeasonList == null || (seasons3 = resourcesSeasonList.getSeasons()) == null || seasons3.size() != 1) {
                AppCompatTextView tvAllEpisodes = vVar.f17518f;
                Intrinsics.g(tvAllEpisodes, "tvAllEpisodes");
                jg.c.h(tvAllEpisodes);
                AppCompatTextView tvTitle = vVar.f17519g;
                Intrinsics.g(tvTitle, "tvTitle");
                jg.c.k(tvTitle);
            } else {
                AppCompatTextView tvAllEpisodes2 = vVar.f17518f;
                Intrinsics.g(tvAllEpisodes2, "tvAllEpisodes");
                jg.c.k(tvAllEpisodes2);
                AppCompatTextView tvTitle2 = vVar.f17519g;
                Intrinsics.g(tvTitle2, "tvTitle");
                jg.c.h(tvTitle2);
            }
            Integer num = this.subjectType;
            int value = SubjectType.EDUCATION.getValue();
            String string = null;
            if (num != null && num.intValue() == value) {
                cn.v vVar2 = (cn.v) getMViewBinding();
                if (vVar2 != null && (appCompatTextView2 = vVar2.f17518f) != null) {
                    appCompatTextView2.setText(Utils.a().getString(R$string.download_series_all_lessons));
                }
                AppCompatTextView appCompatTextView3 = vVar.f17519g;
                Context context = getContext();
                if (context != null) {
                    int i11 = R$string.download_video_detail_units;
                    ResourcesSeasonList resourcesSeasonList2 = this.seasonList;
                    string = context.getString(i11, String.valueOf((resourcesSeasonList2 == null || (seasons2 = resourcesSeasonList2.getSeasons()) == null) ? 1 : seasons2.size()));
                }
                appCompatTextView3.setText(string);
            } else {
                cn.v vVar3 = (cn.v) getMViewBinding();
                if (vVar3 != null && (appCompatTextView = vVar3.f17518f) != null) {
                    appCompatTextView.setText(Utils.a().getString(R$string.download_series_all_episodes));
                }
                AppCompatTextView appCompatTextView4 = vVar.f17519g;
                Context context2 = getContext();
                if (context2 != null) {
                    int i12 = R$string.download_video_detail_seasons;
                    ResourcesSeasonList resourcesSeasonList3 = this.seasonList;
                    string = context2.getString(i12, String.valueOf((resourcesSeasonList3 == null || (seasons = resourcesSeasonList3.getSeasons()) == null) ? 1 : seasons.size()));
                }
                appCompatTextView4.setText(string);
            }
            RecyclerView recyclerView = vVar.f17517e;
            Context context3 = getContext();
            recyclerView.setLayoutManager((context3 == null || !com.transsion.baseui.util.b.a(context3)) ? new NpaLinearLayoutManager(requireContext(), 1, false) : new NpaGridLayoutManager(requireContext(), 2));
            RecyclerView recyclerView2 = vVar.f17517e;
            com.transsnet.downloader.adapter.s sVar = new com.transsnet.downloader.adapter.s(this.subjectType);
            this.seasonAdapter = sVar;
            sVar.w1(new p6.d() { // from class: com.transsion.moviedetail.fragment.g3
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i13) {
                    VideoDetailSeasonsSelectFragment.s0(this.f47176a, baseQuickAdapter, view, i13);
                }
            });
            recyclerView2.setAdapter(sVar);
        }
        ResourcesSeasonList resourcesSeasonList4 = this.seasonList;
        if (resourcesSeasonList4 != null) {
            ArrayList arrayList = new ArrayList();
            List<ResourcesSeason> seasons4 = resourcesSeasonList4.getSeasons();
            if (seasons4 != null) {
                for (ResourcesSeason resourcesSeason : seasons4) {
                    int se2 = resourcesSeason.getSe();
                    Integer num2 = this.curSeason;
                    arrayList.add(new SeasonListBean(se2, num2 != null && num2.intValue() == resourcesSeason.getSe()));
                }
            }
            com.transsnet.downloader.adapter.s sVar2 = this.seasonAdapter;
            if (sVar2 != null) {
                sVar2.n1(arrayList);
            }
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
    }

    @Override // com.transsion.play.detail.fragment.BaseBottomDialogFragment, androidx.fragment.app.Fragment
    public Animation onCreateAnimation(int transit, boolean enter, int nextAnim) {
        return enter ? AnimationUtils.loadAnimation(getActivity(), R$anim.enter_bottom_menu) : AnimationUtils.loadAnimation(getActivity(), R$anim.exit_bottom_menu);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public cn.v getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        cn.v vVarC = cn.v.c(inflater);
        Intrinsics.g(vVarC, "inflate(...)");
        return vVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    public final void v0(ResourcesSeasonList seasonList, Integer subjectType) {
        this.seasonList = seasonList;
        this.subjectType = subjectType;
    }

    public final void w0(Function1 callback) {
        this.selSelectCallback = callback;
    }

    public final void x0(int season) {
        this.curSeason = Integer.valueOf(season);
    }
}
