package com.transsion.home.adapter.suboperate.adapter;

import android.widget.ImageView;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$mipmap;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.CustomData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0013\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B=\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0013\u001a\u00020\u00122\b\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0014\u0010\"\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u001dR\u0014\u0010$\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u001e¨\u0006%"}, d2 = {"Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/BannerData;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "Lcom/transsion/home/bean/CustomData;", "customData", "firstItem", "tabId", "", "isTablet", "<init>", "(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/CustomData;Lcom/transsion/home/bean/BannerData;IZ)V", WebConstants.FIELD_ITEM, RequestParameters.POSITION, "", "C1", "(Lcom/transsion/home/bean/BannerData;I)V", "holder", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/BannerData;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "Lcom/transsion/home/bean/CustomData;", "H", "I", "Z", "J", "itemWidth", "K", "itemHeight", "L", "hiddenTitle", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubCustomAdapter extends BaseQuickAdapter {
    public static final int M = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final OperateItem operateItem;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final CustomData customData;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final boolean isTablet;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final int itemWidth;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final int itemHeight;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private final boolean hiddenTitle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:29:0x0067  */
    public SubCustomAdapter(int i11, OperateItem operateItem, CustomData customData, BannerData bannerData, int i12, boolean z10) {
        Boolean hiddenTitle;
        Image image;
        Integer width;
        Image image2;
        Integer height;
        List<BannerData> items;
        BannerData bannerData2;
        super(i11, null, 2, null);
        Intrinsics.h(operateItem, "operateItem");
        String content = null;
        this.operateItem = operateItem;
        this.customData = customData;
        this.tabId = i12;
        this.isTablet = z10;
        int iIntValue = 1;
        boolean zBooleanValue = false;
        int iF = RangesKt.f(customData != null ? customData.getRowCount() : 1, 1) + (z10 ? 2 : 0);
        int iB = a0.b(RangesKt.i(y.e(), y.c()));
        List<BannerData> items2 = customData != null ? customData.getItems() : null;
        if (items2 != null && !items2.isEmpty()) {
            if (customData != null && (items = customData.getItems()) != null && (bannerData2 = items.get(0)) != null) {
                content = bannerData2.getContent();
            }
            if (content == null || content.length() == 0) {
                zBooleanValue = true;
            } else if (customData != null) {
                zBooleanValue = hiddenTitle.booleanValue();
            }
        } else if (customData != null && (hiddenTitle = customData.getHiddenTitle()) != null) {
            zBooleanValue = hiddenTitle.booleanValue();
        }
        this.hiddenTitle = zBooleanValue;
        int iA = a0.a(((((iB - 12) - (iF * 8)) - 24) * 1.0f) / iF);
        this.itemWidth = iA;
        float fIntValue = ((bannerData == null || (image2 = bannerData.getImage()) == null || (height = image2.getHeight()) == null) ? 1 : height.intValue()) * 1.0f;
        if (bannerData != null && (image = bannerData.getImage()) != null && (width = image.getWidth()) != null) {
            iIntValue = width.intValue();
        }
        this.itemHeight = (int) ((fIntValue / iIntValue) * iA);
    }

    public /* synthetic */ SubCustomAdapter(int i11, OperateItem operateItem, CustomData customData, BannerData bannerData, int i12, boolean z10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? R$layout.item_sub_operation_variable_item : i11, operateItem, customData, bannerData, i12, z10);
    }

    private final void C1(BannerData item, int position) {
        if (ak.g.f639a.b()) {
            hl.d.f64525c.a(this.tabId, position, this.operateItem, item);
            return;
        }
        HashMap map = new HashMap();
        map.put("event_type", "browse_custom_item");
        map.put("sequence", String.valueOf(position));
        CustomData customData = this.customData;
        map.put("rowCount", String.valueOf(customData != null ? Integer.valueOf(customData.getRowCount()) : null));
        map.put("tabId", String.valueOf(this.tabId));
        if (item != null) {
            il.b.c(item, map);
        }
        il.b.a(this.operateItem, map);
        com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.tabId), map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, BannerData item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (this.itemWidth < 10 || this.itemHeight < 10) {
            return;
        }
        z(holder, getItemViewType(holder.getBindingAdapterPosition()));
        ImageView imageView = (ImageView) holder.getView(R$id.sub_operation_variable_image);
        TextView textView = (TextView) holder.getView(R$id.sub_operation_variable_item_title);
        imageView.getLayoutParams().width = this.itemWidth;
        imageView.getLayoutParams().height = this.itemHeight;
        textView.setMaxWidth(this.itemWidth);
        if (this.hiddenTitle) {
            jg.c.g(textView);
        } else {
            jg.c.k(textView);
        }
        if (item.getBuiltIn()) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SubCustomAdapter$convert$1(item, imageView, null), 3, null);
        } else {
            ej.f.b bVarM = ej.f.f61882a.m(getContext());
            Image image = item.getImage();
            String str = "";
            if (image == null || (url = image.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            Image image2 = item.getImage();
            if (image2 != null && (thumbnail = image2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarG.l(str).i(R$mipmap.ic_img_placeholder).d(imageView);
        }
        textView.setText(item.getContent());
        C1(item, getData().indexOf(item));
    }
}
