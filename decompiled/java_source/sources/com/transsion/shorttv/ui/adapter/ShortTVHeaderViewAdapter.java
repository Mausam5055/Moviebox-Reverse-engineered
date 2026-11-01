package com.transsion.shorttv.ui.adapter;

import android.content.Context;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.ResourceDetectors;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\u000b\u001a\u00020\n*\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\r\u001a\u00020\n*\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\r\u0010\fJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/shorttv/ui/adapter/ShortTVHeaderViewAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/shorttv/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lxr/b;", "exposureHelper", "<init>", "(Lxr/b;)V", "Landroidx/appcompat/widget/AppCompatImageView;", WebConstants.FIELD_ITEM, "", "C1", "(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv/bean/Subject;)V", "D1", "holder", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/Subject;)V", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "F", "Lxr/b;", "Lss/a;", "G", "Lss/a;", "recReport", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTVHeaderViewAdapter extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final xr.b exposureHelper;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final ss.a recReport;

    /* JADX WARN: Multi-variable type inference failed */
    public ShortTVHeaderViewAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public ShortTVHeaderViewAdapter(xr.b bVar) {
        super(R$layout.short_tv_item_history, null, 2, null);
        this.exposureHelper = bVar;
        this.recReport = new ss.a();
    }

    public /* synthetic */ ShortTVHeaderViewAdapter(xr.b bVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : bVar);
    }

    private final void C1(AppCompatImageView appCompatImageView, Subject subject) {
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ShortTVHeaderViewAdapter$loadBuiltInCover$1(subject, appCompatImageView, null), 3, null);
    }

    private final void D1(AppCompatImageView appCompatImageView, Subject subject) {
        String thumbnail;
        String url;
        as.b.a aVar = as.b.f16104a;
        Context context = appCompatImageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        Cover cover = subject.getCover();
        String str = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
        int i11 = R$color.short_tv_module_04;
        Cover cover2 = subject.getCover();
        aVar.j(context, appCompatImageView, str, (8096 & 8) != 0 ? aVar.c() : i11, (8096 & 16) != 0 ? aVar.b() : 0, (8096 & 32) != 0, (8096 & 64) != 0 ? "" : (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail, (8096 & 128) != 0, (8096 & 256) != 0, (8096 & 512) != 0 ? false : false, (8096 & 1024) != 0 ? false : false, (8096 & 2048) != 0 ? false : false, (8096 & 4096) != 0 ? 25 : 0);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        xr.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            bVar.g((LinearLayoutManager) layoutManager, bindingAdapterPosition, true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:13:0x0054  */
    /* JADX WARN: Code duplicated, block: B:18:0x007f  */
    /* JADX WARN: Code duplicated, block: B:20:0x0085  */
    /* JADX WARN: Code duplicated, block: B:21:0x0089  */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, Subject item) {
        List listL;
        int totalEpisode;
        ResourceDetectors resourceDetectors;
        Integer totalEpisode2;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        AppCompatImageView appCompatImageView = (AppCompatImageView) holder.getView(R$id.iv_cover);
        if (item.getBuiltIn()) {
            C1(appCompatImageView, item);
        } else {
            D1(appCompatImageView, item);
        }
        ((TextView) holder.getView(R$id.tv_title)).setText(item.getTitle());
        List tags = item.getTags();
        if (tags == null) {
            listL = CollectionsKt.l();
        } else {
            listL = !tags.isEmpty() ? CollectionsKt.e(CollectionsKt.i0(CollectionsKt.f(tags))) : CollectionsKt.l();
            if (listL == null) {
                listL = CollectionsKt.l();
            }
        }
        s sVar = new s(CollectionsKt.U0(listL));
        RecyclerView recyclerView = (RecyclerView) holder.getView(R$id.rv_list);
        if (item.getShortTVFirstEp() != null) {
            ShortTVItem shortTVFirstEp = item.getShortTVFirstEp();
            Intrinsics.e(shortTVFirstEp);
            if (shortTVFirstEp.getEp() > 0) {
                yr.b.b(recyclerView);
            } else if (listL.isEmpty()) {
                yr.b.b(recyclerView);
            } else {
                FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView.getContext());
                flexboxLayoutManager.c0(0);
                flexboxLayoutManager.d0(1);
                flexboxLayoutManager.e0(0);
                recyclerView.setLayoutManager(flexboxLayoutManager);
                recyclerView.setAdapter(sVar);
                yr.b.e(recyclerView);
            }
        } else if (listL.isEmpty()) {
            yr.b.b(recyclerView);
        } else {
            FlexboxLayoutManager flexboxLayoutManager2 = new FlexboxLayoutManager(recyclerView.getContext());
            flexboxLayoutManager2.c0(0);
            flexboxLayoutManager2.d0(1);
            flexboxLayoutManager2.e0(0);
            recyclerView.setLayoutManager(flexboxLayoutManager2);
            recyclerView.setAdapter(sVar);
            yr.b.e(recyclerView);
        }
        TextView textView = (TextView) holder.getView(R$id.tv_ep);
        if (item.getTotalEpisode() == 0) {
            List resourceDetectors2 = item.getResourceDetectors();
            totalEpisode = (resourceDetectors2 == null || (resourceDetectors = (ResourceDetectors) CollectionsKt.i0(resourceDetectors2)) == null || (totalEpisode2 = resourceDetectors.getTotalEpisode()) == null) ? 0 : totalEpisode2.intValue();
        } else {
            totalEpisode = item.getTotalEpisode();
        }
        textView.setText(Utils.a().getString(R$string.short_tv_watch_ad_tips, String.valueOf(totalEpisode)));
        ss.a.b(this.recReport, "minitv_explore", item, holder.getLayoutPosition(), null, "playlist", 8, null);
    }
}
