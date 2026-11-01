package com.transsion.search_pugc.adapter;

import android.app.Application;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search_pugc.bean.Season;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import oh.h;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0015\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0012R\u0014\u0010\u0018\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0012R\u0014\u0010\u001a\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0012R\u0014\u0010\u001c\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0012R\u0014\u0010\u001e\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001d\u0010\u0012R\u0016\u0010!\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/transsion/search_pugc/adapter/a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/search_pugc/bean/Season;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "<init>", "(I)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/Season;)V", "", "showMore", "C1", "(Z)V", "F", "I", "movieDesignW", "G", "movieDesignH", "H", "size40", "screenW", "J", "movieW", "K", "movieH", "L", "MAX_VALUE", "M", "Z", "mShowMore", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int movieDesignW;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int movieDesignH;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final int size40;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final int screenW;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final int movieW;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final int movieH;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private final int MAX_VALUE;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private boolean mShowMore;

    public a() {
        this(0, 1, null);
    }

    public a(int i11) {
        super(i11, null, 2, null);
        int iA = a0.a(104.0f);
        this.movieDesignW = iA;
        int iA2 = a0.a(32.0f);
        this.movieDesignH = iA2;
        int iA3 = a0.a(40.0f);
        this.size40 = iA3;
        h hVar = h.f71021a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        int iE = hVar.e(applicationA);
        this.screenW = iE;
        int i12 = (iE - iA3) / 3;
        this.movieW = i12;
        this.movieH = (int) (i12 * ((iA2 * 1.0f) / iA));
        this.MAX_VALUE = 5;
        this.mShowMore = true;
    }

    public /* synthetic */ a(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.item_accurate_subject_seasons : i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, Season item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        int iG0 = g0(item);
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
        ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) layoutParams)).height = this.movieH;
        if (iG0 >= this.MAX_VALUE && this.mShowMore) {
            holder.setVisible(R$id.tvName, false);
            holder.setVisible(R$id.tvMore, true);
        } else {
            holder.setVisible(R$id.tvName, true);
            holder.setVisible(R$id.tvMore, false);
            holder.setText(R$id.tvName, getContext().getString(R$string.seasons, String.valueOf(item.getSe())));
        }
    }

    public final void C1(boolean showMore) {
        this.mShowMore = showMore;
    }
}
