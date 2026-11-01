package com.transsion.home.adapter.suboperate.adapter;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.TnTextView;
import com.transsion.gslb.Utils;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$mipmap;
import com.transsion.home.bean.FilterItem;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0007\u0018\u0000 *2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001+B+\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0015\u001a\u00020\u00142\b\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0013\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0017\u001a\u00020\u00142\b\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0013\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010 \u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014¢\u0006\u0004\b \u0010!R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010(\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010)\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010'¨\u0006,"}, d2 = {"Lcom/transsion/home/adapter/suboperate/adapter/SubFilterAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/FilterItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "tabId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "", "isTablet", "<init>", "(ILjava/lang/Integer;Lcom/transsion/home/bean/OperateItem;Z)V", "", TtmlNode.ATTR_TTS_COLOR, "Landroid/graphics/drawable/GradientDrawable;", "E1", "(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;", WebConstants.FIELD_ITEM, RequestParameters.POSITION, "", "G1", "(Lcom/transsion/home/bean/FilterItem;I)V", "F1", "getItemViewType", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "z0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/FilterItem;)V", "F", "Ljava/lang/Integer;", "G", "Lcom/transsion/home/bean/OperateItem;", "H", "I", "itemWidth", "itemHeight", "J", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubFilterAdapter extends BaseQuickAdapter {
    public static final int K = 8;
    public static final int L = 23;
    public static final int M = 3;
    public static final int N = 0;
    public static final int O = 1;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final Integer tabId;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final OperateItem operateItem;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final int itemWidth;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final int itemHeight;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubFilterAdapter(int i11, Integer num, OperateItem operateItem, boolean z10) {
        super(i11, null, 2, null);
        Intrinsics.h(operateItem, "operateItem");
        this.tabId = num;
        this.operateItem = operateItem;
        int i12 = z10 ? 6 : 3;
        this.itemWidth = a0.a(((((a0.b(Math.min(y.e(), y.c())) - 12) - (i12 * 8)) - 12) * 1.0f) / i12);
        this.itemHeight = a0.a(40.0f);
    }

    public /* synthetic */ SubFilterAdapter(int i11, Integer num, OperateItem operateItem, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.item_sub_operation_filter_item : i11, num, operateItem, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(FilterItem filterItem, SubFilterAdapter subFilterAdapter, View view) {
        Uri uriG = com.transsion.baselib.helper.b.f43264a.g(Uri.parse(filterItem.getDeepLink()));
        if (uriG != null) {
            ak.k.o(uriG);
        }
        subFilterAdapter.G1(filterItem, subFilterAdapter.getData().indexOf(filterItem));
    }

    private final GradientDrawable E1(String color) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setGradientType(0);
        gradientDrawable.setColors(new int[]{Color.parseColor(StringsKt.Q(color, Utils.SEPARATOR, "#ff", false, 4, null)), Color.parseColor(StringsKt.Q(color, Utils.SEPARATOR, "#ff", false, 4, null)), Color.parseColor(StringsKt.Q(color, Utils.SEPARATOR, "#00", false, 4, null))});
        gradientDrawable.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
        return gradientDrawable;
    }

    private final void F1(FilterItem item, int position) {
        String title;
        HashMap map = new HashMap();
        map.put("event_type", "browse_filter");
        if (item == null || (title = item.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("sequence", String.valueOf(position));
        map.put("tabId", String.valueOf(this.tabId));
        il.b.a(this.operateItem, map);
        com.transsion.baselib.helper.a aVar = com.transsion.baselib.helper.a.f43262a;
        SubTabFragment.Companion companion = SubTabFragment.INSTANCE;
        Integer num = this.tabId;
        aVar.e(companion.a(num != null ? num.intValue() : 1), map);
    }

    private final void G1(FilterItem item, int position) {
        String title;
        HashMap map = new HashMap();
        map.put("event_type", "click_filter");
        if (item == null || (title = item.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("sequence", String.valueOf(position));
        map.put("tabId", String.valueOf(this.tabId));
        il.b.a(this.operateItem, map);
        com.transsion.baselib.helper.a aVar = com.transsion.baselib.helper.a.f43262a;
        SubTabFragment.Companion companion = SubTabFragment.INSTANCE;
        Integer num = this.tabId;
        aVar.f(companion.a(num != null ? num.intValue() : 1), map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final FilterItem item) {
        Integer num;
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        TnTextView tnTextView = (TnTextView) holder.getView(R$id.sub_operation_filter_title);
        ViewGroup.LayoutParams layoutParams = tnTextView.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
        if (item.isAll()) {
            tnTextView.setGravity(17);
            tnTextView.setTextAlignment(4);
            if (bVar != null) {
                bVar.setMarginStart(0);
            }
        } else {
            tnTextView.setGravity(8388627);
            tnTextView.setTextAlignment(5);
            if (bVar != null) {
                bVar.setMarginStart(a0.a(8.0f));
            }
        }
        tnTextView.setLayoutParams(bVar);
        if (item.isAll()) {
            tnTextView.setTextById(R$string.all);
            ImageView imageView = (ImageView) holder.getView(R$id.sub_operation_filter_icon);
            Integer num2 = this.tabId;
            if ((num2 != null && num2.intValue() == 23) || ((num = this.tabId) != null && num.intValue() == 3)) {
                imageView.setImageResource(R$mipmap.bg_op_filter_kids);
                tnTextView.setVisibility(4);
            } else {
                imageView.setImageResource(R$mipmap.bg_op_filter_all);
            }
        } else {
            String title = item.getTitle();
            String str = "";
            if (title == null) {
                title = "";
            }
            tnTextView.setText(title);
            tnTextView.setTextColor(com.blankj.utilcode.util.h.a(R$color.white_80));
            ImageView imageView2 = (ImageView) holder.getView(R$id.sub_operation_filter_icon);
            if (item.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SubFilterAdapter$convert$1(item, imageView2, null), 3, null);
            } else {
                ej.f.b bVarM = ej.f.f61882a.m(getContext());
                Cover image = item.getImage();
                if (image == null || (url = image.getUrl()) == null) {
                    url = "";
                }
                ej.f.b bVarG = bVarM.g(url);
                Cover image2 = item.getImage();
                if (image2 != null && (thumbnail = image2.getThumbnail()) != null) {
                    str = thumbnail;
                }
                bVarG.l(str).m(this.itemWidth).c(this.itemHeight).d(imageView2);
            }
        }
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.adapter.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubFilterAdapter.D1(item, this, view);
            }
        });
        F1(item, getData().indexOf(item));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        FilterItem filterItem = (FilterItem) CollectionsKt.l0(getData(), position);
        int i11 = 0;
        if (filterItem != null && filterItem.isAll()) {
            i11 = 1;
        }
        return i11 ^ 1;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: z0 */
    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        BaseViewHolder baseViewHolderOnCreateViewHolder = super.onCreateViewHolder(parent, viewType);
        baseViewHolderOnCreateViewHolder.itemView.getLayoutParams().width = viewType == 0 ? a0.a(40.0f) : this.itemWidth;
        baseViewHolderOnCreateViewHolder.itemView.getLayoutParams().height = this.itemHeight;
        return baseViewHolderOnCreateViewHolder;
    }
}
