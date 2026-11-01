package com.transsion.home.adapter.suboperate.provider;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$color;
import com.transsion.edcation.CourseManager;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.ExplainBean;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.widget.DownloadView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SubFeedsEducationProvider extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44512e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f44513f = com.blankj.utilcode.util.y.e();

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\nJ\r\u0010\f\u001a\u00020\b¢\u0006\u0004\b\f\u0010\nJ\u0015\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "tabId", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(ILandroid/view/View;)V", "", CampaignEx.JSON_KEY_AD_K, "()V", "h", "j", "Lcom/transsion/home/bean/OperateItem;", WebConstants.FIELD_ITEM, "i", "(Lcom/transsion/home/bean/OperateItem;)V", "a", "I", "Lkotlinx/coroutines/t1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlinx/coroutines/t1;", "mObserveJob", "c", "Lcom/transsion/home/bean/OperateItem;", "mCurrentItem", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    static final class MyViewHolder extends BaseViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final int tabId;

        /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
        private t1 mObserveJob;

        /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
        private OperateItem mCurrentItem;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyViewHolder(int i11, View view) {
            super(view);
            Intrinsics.h(view, "view");
            this.tabId = i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void k() {
            Subject feedsSubject;
            Integer seenStatus;
            OperateItem operateItem = this.mCurrentItem;
            if (operateItem == null || (feedsSubject = operateItem.getFeedsSubject()) == null || (seenStatus = feedsSubject.getSeenStatus()) == null || seenStatus.intValue() != 1) {
                DownloadView downloadView = (DownloadView) getViewOrNull(R$id.ll_download);
                if (downloadView != null) {
                    downloadView.setAddCourse();
                    return;
                }
                return;
            }
            DownloadView downloadView2 = (DownloadView) getViewOrNull(R$id.ll_download);
            if (downloadView2 != null) {
                downloadView2.setCourseAdded();
            }
        }

        public final void h() {
            if (HomeTabId.INSTANCE.h(Integer.valueOf(this.tabId), true)) {
                this.mObserveJob = kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new SubFeedsEducationProvider$MyViewHolder$registerCourse$1(this, null), 3, null);
            }
        }

        public final void i(OperateItem item) {
            Intrinsics.h(item, "item");
            this.mCurrentItem = item;
        }

        public final void j() {
            t1 t1Var = this.mObserveJob;
            if (t1Var != null) {
                t1.a.b(t1Var, null, 1, null);
            }
            this.mObserveJob = null;
        }
    }

    public SubFeedsEducationProvider(int i11) {
        this.f44512e = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(Subject subject, boolean z10, boolean z11, long j11) {
        subject.setLoadCoverSuccess(z10);
        subject.setCoverCache(z11);
        subject.setLoadCoverDuration(j11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(OperateItem operateItem, SubFeedsEducationProvider subFeedsEducationProvider, View view) {
        List<Object> data;
        Subject feedsSubject = operateItem.getFeedsSubject();
        if (feedsSubject != null) {
            rl.h.f(feedsSubject, "opt_sub_feeds");
            BaseProviderMultiAdapter baseProviderMultiAdapterG = subFeedsEducationProvider.g();
            subFeedsEducationProvider.G((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(operateItem), feedsSubject, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(OperateItem operateItem, Subject subject, SubFeedsEducationProvider subFeedsEducationProvider, View view) {
        CourseManager.v(CourseManager.f44085a, operateItem.getFeedsSubject(), null, 2, null);
        wk.a.b(subject, SubTabFragment.INSTANCE.a(subFeedsEducationProvider.f44512e), "opt_feeds");
    }

    private final String F(int i11) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format("%02d:%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i11 / 3600), Integer.valueOf((i11 % 3600) / 60), Integer.valueOf(i11 % 60)}, 3));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    private final void G(int i11, Subject subject, boolean z10) {
        HashMap map = new HashMap();
        map.put("event_type", z10 ? "browse_feeds_item" : "click_feeds_item");
        map.put("sequence", String.valueOf(i11));
        map.put("item_type", "rec");
        String ops = subject.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        String subjectId = subject.getSubjectId();
        map.put("subject_id", subjectId != null ? subjectId : "");
        map.put("builtin", subject.getBuiltIn() ? "1" : "0");
        map.put("tabId", String.valueOf(this.f44512e));
        StringBuilder sb2 = new StringBuilder();
        List<ExplainBean> explains = subject.getExplains();
        if (explains != null) {
            Iterator<T> it = explains.iterator();
            while (it.hasNext()) {
                sb2.append(((ExplainBean) it.next()).getType());
                sb2.append(",");
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        map.put("rec_explain_type", StringsKt.r1(string, ','));
        il.b.e(subject, map);
        if (z10) {
            com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.f44512e), map);
        } else {
            com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.f44512e), map);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        String subjectId;
        List<Object> data;
        Integer seenStatus;
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (helper instanceof MyViewHolder) {
            ((MyViewHolder) helper).i(item);
        }
        final Subject feedsSubject = item.getFeedsSubject();
        if (feedsSubject == null || (subjectId = feedsSubject.getSubjectId()) == null || subjectId.length() == 0) {
            return;
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView != null) {
            ej.f.a aVar = ej.f.f61882a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            Cover cover = feedsSubject.getCover();
            String str = "";
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            Cover cover2 = feedsSubject.getCover();
            if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarG.l(str).i(R$color.skeleton).m(this.f44513f).b(new Function3() { // from class: com.transsion.home.adapter.suboperate.provider.l
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return SubFeedsEducationProvider.C(feedsSubject, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue(), ((Long) obj3).longValue());
                }
            }).d(shapeableImageView);
        }
        helper.setText(R$id.tv_subject, feedsSubject.getTitle());
        helper.setText(R$id.tv_subject_year, defpackage.a.b(k(), feedsSubject));
        TextView textView = (TextView) helper.getView(R$id.tv_duration);
        jg.c.k(textView);
        Integer durationSeconds = feedsSubject.getDurationSeconds();
        textView.setText(F(durationSeconds != null ? durationSeconds.intValue() : 0));
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubFeedsEducationProvider.D(item, this, view);
            }
        });
        DownloadView downloadView = (DownloadView) helper.getViewOrNull(R$id.ll_download);
        if (downloadView != null) {
            if (Intrinsics.c(feedsSubject.getHasResource(), Boolean.TRUE)) {
                jg.c.k(downloadView);
            } else {
                jg.c.g(downloadView);
            }
            downloadView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubFeedsEducationProvider.E(item, feedsSubject, this, view);
                }
            });
        }
        Subject feedsSubject2 = item.getFeedsSubject();
        if (feedsSubject2 == null || (seenStatus = feedsSubject2.getSeenStatus()) == null || seenStatus.intValue() != 1) {
            DownloadView downloadView2 = (DownloadView) helper.getViewOrNull(R$id.ll_download);
            if (downloadView2 != null) {
                downloadView2.setAddCourse();
            }
        } else {
            DownloadView downloadView3 = (DownloadView) helper.getViewOrNull(R$id.ll_download);
            if (downloadView3 != null) {
                downloadView3.setCourseAdded();
            }
        }
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        G((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(item), feedsSubject, true);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.EDUCATION_SUBJECT.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.post_list_item_subject_education;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public BaseViewHolder r(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        return new MyViewHolder(this.f44512e, s6.a.a(parent, m()));
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.t(holder);
        if (holder instanceof MyViewHolder) {
            ((MyViewHolder) holder).h();
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        if (holder instanceof MyViewHolder) {
            ((MyViewHolder) holder).j();
        }
    }
}
