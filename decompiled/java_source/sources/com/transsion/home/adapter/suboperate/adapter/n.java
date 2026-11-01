package com.transsion.home.adapter.suboperate.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.BffCommonOpData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0007\u0018\u0000 02\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00011B+\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u0010\u001a\u00020\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010 \u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0004H\u0014¢\u0006\u0004\b \u0010!J\u001f\u0010#\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0014¢\u0006\u0004\b#\u0010$R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010+\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010(R\u0014\u0010-\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010(R\u0016\u0010/\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010(¨\u00062"}, d2 = {"Lcom/transsion/home/adapter/suboperate/adapter/n;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/BffCommonOpData;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "tabId", "", "isTablet", "<init>", "(ILcom/transsion/home/bean/OperateItem;IZ)V", WebConstants.FIELD_ITEM, RequestParameters.POSITION, "", "D1", "(Lcom/transsion/home/bean/BffCommonOpData;I)V", "C1", "(Lcom/transsion/home/bean/BffCommonOpData;)Z", "newOperateItem", "E1", "(Lcom/transsion/home/bean/OperateItem;)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onAttachedToRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "P", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "y0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/BffCommonOpData;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "I", "H", "Z", "itemWidth", "J", "itemHeight", "K", "titleAreaHeight", "L", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class n extends BaseQuickAdapter {
    public static final int M = 8;
    public static final int N = 100;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private OperateItem operateItem;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean isTablet;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final int itemWidth;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final int itemHeight;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private int titleAreaHeight;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(int i11, OperateItem operateItem, int i12, boolean z10) {
        super(i11, null, 2, null);
        Intrinsics.h(operateItem, "operateItem");
        this.operateItem = operateItem;
        this.tabId = i12;
        this.isTablet = z10;
        this.titleAreaHeight = a0.a(28.0f);
        int i13 = z10 ? 4 : 3;
        int iA = a0.a(((((a0.b(RangesKt.i(y.e(), y.c())) - 12) - (i13 * 8)) - 24) * 1.0f) / i13);
        this.itemWidth = iA;
        this.itemHeight = (int) (iA * 1.39f);
    }

    public /* synthetic */ n(int i11, OperateItem operateItem, int i12, boolean z10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? R$layout.item_sub_post_list_card : i11, operateItem, i12, (i13 & 8) != 0 ? false : z10);
    }

    private final boolean C1(BffCommonOpData item) {
        Integer postType = item.getPostType();
        return postType != null && postType.intValue() == 4;
    }

    private final void D1(BffCommonOpData item, int position) {
        HashMap map = new HashMap();
        map.put("event_type", "browse_post_list_item");
        map.put("sequence", String.valueOf(position));
        map.put("tabId", String.valueOf(this.tabId));
        if (item != null) {
            il.b.d(item, map);
        }
        il.b.a(this.operateItem, map);
        com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.tabId), map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, BffCommonOpData item) {
        String url;
        String thumbnail;
        String url2;
        String thumbnail2;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (this.itemWidth < 10 || this.itemHeight < 10) {
            return;
        }
        String str = "";
        if (P(holder.getBindingAdapterPosition()) == 100) {
            int i11 = this.itemHeight + this.titleAreaHeight;
            ImageView imageView = (ImageView) holder.getViewOrNull(R$id.main_op_movie_rank_image);
            if (imageView != null) {
                Cover image = item.getImage();
                ej.f.b bVarM = ej.f.f61882a.m(getContext());
                if (image == null || (url2 = image.getUrl()) == null) {
                    url2 = "";
                }
                ej.f.b bVarG = bVarM.g(url2);
                if (image != null && (thumbnail2 = image.getThumbnail()) != null) {
                    str = thumbnail2;
                }
                bVarG.l(str).m(this.itemWidth).c(i11).d(imageView);
                return;
            }
            return;
        }
        TextView textView = (TextView) holder.getView(R$id.postTitle);
        holder.getView(R$id.videoPlay).setVisibility(C1(item) ? 0 : 8);
        ImageView imageView2 = (ImageView) holder.getView(R$id.postCover);
        imageView2.getLayoutParams().width = this.itemWidth;
        imageView2.getLayoutParams().height = this.itemHeight;
        textView.setMaxWidth(this.itemWidth);
        Cover image2 = item.getImage();
        ej.f.b bVarM2 = ej.f.f61882a.m(getContext());
        if (image2 == null || (url = image2.getUrl()) == null) {
            url = "";
        }
        ej.f.b bVarG2 = bVarM2.g(url);
        if (image2 != null && (thumbnail = image2.getThumbnail()) != null) {
            str = thumbnail;
        }
        bVarG2.l(str).m(this.itemWidth).c(this.itemHeight).d(imageView2);
        textView.setText(item.getContent());
        D1(item, getData().indexOf(item));
    }

    public final void E1(OperateItem newOperateItem) {
        Intrinsics.h(newOperateItem, "newOperateItem");
        this.operateItem = newOperateItem;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int P(int position) {
        BffCommonOpData bffCommonOpData = (BffCommonOpData) f0(position);
        if (position == getItemCount() - 1) {
            if (Intrinsics.c(bffCommonOpData != null ? bffCommonOpData.getId() : null, "0")) {
                return 100;
            }
        }
        return super.P(position);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        View viewFindViewById = LayoutInflater.from(recyclerView.getContext()).inflate(R$layout.item_sub_post_list_card, (ViewGroup) recyclerView, false).findViewById(R$id.postTitle);
        viewFindViewById.measure(View.MeasureSpec.makeMeasureSpec(this.itemWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        this.titleAreaHeight = viewFindViewById.getMeasuredHeight();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        if (viewType != 100) {
            BaseViewHolder baseViewHolderY0 = super.y0(parent, viewType);
            ImageView imageView = (ImageView) baseViewHolderY0.getViewOrNull(R$id.postCover);
            if (imageView != null) {
                imageView.getLayoutParams().width = this.itemWidth;
                imageView.getLayoutParams().height = this.itemHeight;
            }
            return baseViewHolderY0;
        }
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_main_operation_movie_rank_more, parent, false);
        int i11 = this.itemHeight + this.titleAreaHeight;
        View viewFindViewById = viewInflate.findViewById(R$id.main_op_movie_rank_image);
        if (viewFindViewById != null) {
            viewFindViewById.getLayoutParams().width = this.itemWidth;
            viewFindViewById.getLayoutParams().height = i11;
        }
        View viewFindViewById2 = viewInflate.findViewById(R$id.main_op_movie_rank_more_mask);
        if (viewFindViewById2 != null) {
            viewFindViewById2.getLayoutParams().width = this.itemWidth;
            viewFindViewById2.getLayoutParams().height = i11;
        }
        Intrinsics.e(viewInflate);
        return new BaseViewHolder(viewInflate);
    }
}
