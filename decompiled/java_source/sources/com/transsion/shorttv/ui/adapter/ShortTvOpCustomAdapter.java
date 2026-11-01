package com.transsion.shorttv.ui.adapter;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.bean.BannerData;
import com.transsion.shorttv.bean.CustomData;
import com.transsion.shorttv.bean.Image;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B5\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0012\u001a\u00020\u00112\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010!\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010 R\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010 R\u0014\u0010%\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\u001fR\u0018\u0010(\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/transsion/shorttv/ui/adapter/ShortTvOpCustomAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/shorttv/bean/BannerData;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "", "pageName", "Lcom/transsion/shorttv/bean/CustomData;", "customData", "firstItem", "", "isTablet", "<init>", "(ILjava/lang/String;Lcom/transsion/shorttv/bean/CustomData;Lcom/transsion/shorttv/bean/BannerData;Z)V", WebConstants.FIELD_ITEM, RequestParameters.POSITION, "", "C1", "(Lcom/transsion/shorttv/bean/BannerData;I)V", "Lcom/transsion/shorttv/bean/OperateItem;", "D1", "(Lcom/transsion/shorttv/bean/OperateItem;)V", "holder", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/BannerData;)V", "F", "Ljava/lang/String;", "G", "Lcom/transsion/shorttv/bean/CustomData;", "H", "Z", "I", "itemWidth", "J", "itemHeight", "K", "hiddenTitle", "L", "Lcom/transsion/shorttv/bean/OperateItem;", "operateItem", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvOpCustomAdapter extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final String pageName;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final CustomData customData;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean isTablet;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final int itemWidth;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final int itemHeight;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final boolean hiddenTitle;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private OperateItem operateItem;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:29:0x0065  */
    public ShortTvOpCustomAdapter(int i11, String pageName, CustomData customData, BannerData bannerData, boolean z10) {
        Boolean hiddenTitle;
        Image image;
        Integer width;
        Image image2;
        Integer height;
        List<BannerData> items;
        BannerData bannerData2;
        super(i11, null, 2, null);
        Intrinsics.h(pageName, "pageName");
        String content = null;
        this.pageName = pageName;
        this.customData = customData;
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
        int iA = a0.a(((((iB - 12) - (iF * 8)) - 12) * 1.0f) / iF);
        this.itemWidth = iA;
        float fIntValue = ((bannerData == null || (image2 = bannerData.getImage()) == null || (height = image2.getHeight()) == null) ? 1 : height.intValue()) * 1.0f;
        if (bannerData != null && (image = bannerData.getImage()) != null && (width = image.getWidth()) != null) {
            iIntValue = width.intValue();
        }
        this.itemHeight = (int) ((fIntValue / iIntValue) * iA);
    }

    public /* synthetic */ ShortTvOpCustomAdapter(int i11, String str, CustomData customData, BannerData bannerData, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.short_tv_op_custom_item : i11, str, customData, bannerData, z10);
    }

    private final void C1(BannerData item, int position) {
        String ops;
        HashMap map = new HashMap();
        map.put("event_type", "browse_custom_item");
        map.put("sequence", String.valueOf(position));
        if (item != null && (ops = item.getOps()) != null) {
            map.put("ops", ops);
        }
        CustomData customData = this.customData;
        map.put("rowCount", String.valueOf(customData != null ? Integer.valueOf(customData.getRowCount()) : null));
        if (item != null) {
            com.transsion.shorttv.utils.i.b(item, map);
        }
        OperateItem operateItem = this.operateItem;
        if (operateItem != null) {
            com.transsion.shorttv.utils.i.a(operateItem, map);
        }
        ks.b.f68390a.a();
        hj.i.f64505a.D(this.pageName, map);
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
            yr.b.b(textView);
        } else {
            yr.b.e(textView);
        }
        if (item.getBuiltIn()) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ShortTvOpCustomAdapter$convert$1(item, imageView, null), 3, null);
        } else {
            as.b.a aVar = as.b.f16104a;
            Context context = getContext();
            Image image = item.getImage();
            if (image == null || (url = image.getUrl()) == null) {
                url = "";
            }
            Image image2 = item.getImage();
            aVar.j(context, imageView, url, (8096 & 8) != 0 ? aVar.c() : 0, (8096 & 16) != 0 ? aVar.b() : 0, (8096 & 32) != 0, (8096 & 64) != 0 ? "" : (image2 == null || (thumbnail = image2.getThumbnail()) == null) ? "" : thumbnail, (8096 & 128) != 0, (8096 & 256) != 0, (8096 & 512) != 0 ? false : false, (8096 & 1024) != 0 ? false : false, (8096 & 2048) != 0 ? false : false, (8096 & 4096) != 0 ? 25 : 0);
        }
        textView.setText(item.getContent());
        C1(item, getData().indexOf(item));
    }

    public final void D1(OperateItem item) {
        Intrinsics.h(item, "item");
        this.operateItem = item;
    }
}
