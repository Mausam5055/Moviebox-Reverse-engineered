package com.transsion.shorttv_pugc.ui.widget;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.bean.BannerData;
import com.transsion.shorttv_pugc.bean.CustomData;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.ui.adapter.ShortTvOpCustomAdapter;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010B1\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0011B;\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0012J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J)\u0010\u001a\u001a\u00020\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001c\u001a\u00020\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u001e\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u0006/"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/widget/ShortTvOpCustomView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "pageName", "Lcom/transsion/shorttv_pugc/bean/OperateItem;", WebConstants.FIELD_ITEM, "", "tabId", "", "isTablet", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/OperateItem;IZLandroid/content/Context;Landroid/util/AttributeSet;I)V", "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/OperateItem;IZLandroid/content/Context;)V", "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/OperateItem;IZLandroid/content/Context;Landroid/util/AttributeSet;)V", "Lcom/transsion/shorttv_pugc/bean/BannerData;", "bannerData", "", "l", "(Lcom/transsion/shorttv_pugc/bean/BannerData;)V", RequestParameters.POSITION, "operateItem", CampaignEx.JSON_KEY_AD_K, "(Lcom/transsion/shorttv_pugc/bean/BannerData;ILcom/transsion/shorttv_pugc/bean/OperateItem;)V", "j", "(Lcom/transsion/shorttv_pugc/bean/OperateItem;)V", "updateData", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/shorttv_pugc/bean/OperateItem;", "c", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "Lms/i;", "e", "Lms/i;", "viewBinding", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpCustomAdapter;", "f", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpCustomAdapter;", "mAdapter", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvOpCustomView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String pageName;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final OperateItem item;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final boolean isTablet;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final ms.i viewBinding;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ShortTvOpCustomAdapter mAdapter;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvOpCustomView(String pageName, OperateItem item, int i11, boolean z10, Context context) {
        this(pageName, item, i11, z10, context, null);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvOpCustomView(String pageName, OperateItem item, int i11, boolean z10, Context context, AttributeSet attributeSet) {
        this(pageName, item, i11, z10, context, attributeSet, 0);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvOpCustomView(String pageName, OperateItem item, int i11, boolean z10, Context context, AttributeSet attributeSet, int i12) {
        List<BannerData> items;
        List<BannerData> items2;
        super(context, attributeSet, i12);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
        this.pageName = pageName;
        this.item = item;
        this.tabId = i11;
        this.isTablet = z10;
        View.inflate(context, R$layout.short_tv_op_custom, this);
        ms.i iVarA = ms.i.a(this);
        Intrinsics.g(iVarA, "bind(...)");
        this.viewBinding = iVarA;
        iVarA.f69793c.setText(item.getTitle());
        RecyclerView subOperationVariableRecycle = iVarA.f69792b;
        Intrinsics.g(subOperationVariableRecycle, "subOperationVariableRecycle");
        CustomData customData = item.getCustomData();
        CustomData customData2 = item.getCustomData();
        ShortTvOpCustomAdapter shortTvOpCustomAdapter = new ShortTvOpCustomAdapter(0, pageName, customData, (customData2 == null || (items2 = customData2.getItems()) == null) ? null : items2.get(0), z10, 1, null);
        this.mAdapter = shortTvOpCustomAdapter;
        subOperationVariableRecycle.setAdapter(shortTvOpCustomAdapter);
        subOperationVariableRecycle.setLayoutManager(new LinearLayoutManager(context, 0, false));
        if (subOperationVariableRecycle.getItemDecorationCount() == 0) {
            subOperationVariableRecycle.addItemDecoration(new com.transsion.shorttv_pugc.base.widget.k(8.0f, 0.0f, 12.0f, 2, null));
        }
        CustomData customData3 = item.getCustomData();
        shortTvOpCustomAdapter.n1((customData3 == null || (items = customData3.getItems()) == null) ? new ArrayList<>() : items);
        shortTvOpCustomAdapter.w1(new p6.d() { // from class: com.transsion.shorttv_pugc.ui.widget.n
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i13) {
                ShortTvOpCustomView.i(this.f54401a, baseQuickAdapter, view, i13);
            }
        });
        j(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ShortTvOpCustomView shortTvOpCustomView, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<BannerData> items;
        BannerData bannerData;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        CustomData customData = shortTvOpCustomView.item.getCustomData();
        if (customData == null || (items = customData.getItems()) == null || (bannerData = items.get(i11)) == null) {
            return;
        }
        shortTvOpCustomView.l(bannerData);
        shortTvOpCustomView.k(bannerData, i11, shortTvOpCustomView.item);
    }

    private final void j(OperateItem item) {
        String title;
        String opId;
        HashMap map = new HashMap();
        map.put("event_type", "browse_custom");
        String str = "";
        if (item == null || (title = item.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        if (item != null && (opId = item.getOpId()) != null) {
            str = opId;
        }
        map.put("opId", str);
        if (item != null) {
            ShortTvExtKt.a(item, map);
        }
        hj.i.f64505a.D(this.pageName, map);
    }

    private final void k(BannerData item, int position, OperateItem operateItem) {
        HashMap map = new HashMap();
        map.put("event_type", "click_custom_item");
        map.put("sequence", String.valueOf(position));
        CustomData customData = operateItem.getCustomData();
        map.put("rowCount", String.valueOf(customData != null ? Integer.valueOf(customData.getRowCount()) : null));
        if (item != null) {
            ShortTvExtKt.b(item, map);
        }
        ShortTvExtKt.a(operateItem, map);
        hj.i.f64505a.p(this.pageName, map);
    }

    private final void l(BannerData bannerData) {
        String deepLink = bannerData.getDeepLink();
        if (deepLink != null) {
            Uri uriA = dt.a.f61432a.a(Uri.parse(deepLink + "&module_name=opt_custom&ops=" + bannerData.getOps()));
            if (uriA != null) {
                ds.c.j(uriA);
            }
        }
    }

    public final void updateData(OperateItem item) {
        List<BannerData> items;
        Intrinsics.h(item, "item");
        ShortTvOpCustomAdapter shortTvOpCustomAdapter = this.mAdapter;
        if (shortTvOpCustomAdapter != null) {
            shortTvOpCustomAdapter.D1(item);
        }
        this.viewBinding.f69793c.setText(item.getTitle());
        ShortTvOpCustomAdapter shortTvOpCustomAdapter2 = this.mAdapter;
        if (shortTvOpCustomAdapter2 != null) {
            CustomData customData = item.getCustomData();
            shortTvOpCustomAdapter2.n1((customData == null || (items = customData.getItems()) == null) ? new ArrayList<>() : items);
        }
    }
}
