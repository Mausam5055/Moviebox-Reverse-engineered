package com.transsion.shorttv.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.push.PushConstants;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.bean.Link;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/transsion/shorttv/ui/widget/ShortTvAdView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/transsion/shorttv/bean/ShortTVItem;", WebConstants.FIELD_ITEM, "", "setData", "(Lcom/transsion/shorttv/bean/ShortTVItem;)V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "()V", IntegrationConstants.NAVIGATION_STYLE_HIDE, "", "a", "Z", "isNeedShowShortTvAdView", "Lms/p0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lms/p0;", "bind", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvAdView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private boolean isNeedShowShortTvAdView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ms.p0 bind;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvAdView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvAdView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.bind = ms.p0.a(LayoutInflater.from(getContext()).inflate(R$layout.short_tv_view_ad_layout, this));
        setBackgroundResource(R$drawable.view_ad_short_tv_bg);
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(ShortTVItem shortTVItem, View view) {
        hj.i.f64505a.p("short_tv_ad_btn", new LinkedHashMap());
        com.transsion.ad.strategy.b bVar = com.transsion.ad.strategy.b.f42227a;
        Link link = shortTVItem.getLink();
        String deeplink = link != null ? link.getDeeplink() : null;
        Link link2 = shortTVItem.getLink();
        bVar.a(deeplink, link2 != null ? link2.getUrl() : null, null);
    }

    public final void hide() {
        setVisibility(8);
    }

    public final void setData(final ShortTVItem item) {
        ShapeableImageView shapeableImageView;
        String icon;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        lg.a.f68839a.c("ShortTvAdView", "ShortTvAdView --> setData() --> link = " + (item != null ? item.getLink() : null), false);
        if ((item != null ? item.getLink() : null) == null) {
            this.isNeedShowShortTvAdView = false;
            setVisibility(8);
            return;
        }
        this.isNeedShowShortTvAdView = true;
        setVisibility(0);
        ms.p0 p0Var = this.bind;
        if (p0Var != null && (appCompatTextView3 = p0Var.f69892d) != null) {
            Link link = item.getLink();
            appCompatTextView3.setText(link != null ? link.getTitle() : null);
        }
        ms.p0 p0Var2 = this.bind;
        if (p0Var2 != null && (appCompatTextView2 = p0Var2.f69891c) != null) {
            Link link2 = item.getLink();
            appCompatTextView2.setText(link2 != null ? link2.getBtn() : null);
        }
        ms.p0 p0Var3 = this.bind;
        if (p0Var3 != null && (appCompatTextView = p0Var3.f69891c) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.widget.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTvAdView.b(item, view);
                }
            });
        }
        ms.p0 p0Var4 = this.bind;
        if (p0Var4 == null || (shapeableImageView = p0Var4.f69890b) == null) {
            return;
        }
        as.b.a aVar = as.b.f16104a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        Link link3 = item.getLink();
        if (link3 == null || (icon = link3.getIcon()) == null) {
            icon = "";
        }
        aVar.k(context, shapeableImageView, icon, (4064 & 8) != 0 ? aVar.c() : com.blankj.utilcode.util.a0.a(28.0f), (4064 & 16) != 0 ? aVar.b() : com.blankj.utilcode.util.a0.a(28.0f), (4064 & 32) != 0, (4064 & 64) != 0, (4064 & 128) != 0, (4064 & 256) != 0 ? false : false, (4064 & 512) != 0 ? false : false, (4064 & 1024) != 0 ? false : false, (4064 & 2048) != 0 ? 25 : 0);
    }

    public final void show() {
        if (this.isNeedShowShortTvAdView) {
            setVisibility(0);
        }
    }
}
