package com.transsion.publish.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.blankj.utilcode.util.h;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.TnTextView;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0012\u0010\u0010R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0015R\u0014\u0010\u001e\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0019¨\u0006\u001f"}, d2 = {"Lcom/transsion/publish/view/CustomHeader;", "Landroid/widget/RelativeLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", CampaignEx.JSON_KEY_TITLE, "", "setTitle", "(Ljava/lang/String;)V", "Landroid/view/View$OnClickListener;", "click", "setOnBackClick", "(Landroid/view/View$OnClickListener;)V", "setOnEditClick", "onSearchClick", "Landroid/widget/ImageView;", "a", "Landroid/widget/ImageView;", "iBack", "Lcom/tn/lib/widget/TnTextView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/tn/lib/widget/TnTextView;", "vTitle", "c", "iSearch", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "vEdit", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CustomHeader extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final ImageView iBack;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final TnTextView vTitle;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final ImageView iSearch;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final TnTextView vEdit;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomHeader(Context context, AttributeSet attributeSet) {
        int attributeResourceValue;
        int attributeResourceValue2;
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        LayoutInflater.from(context).inflate(R$layout.common_layout_header, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R$id.iv_back);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.iBack = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R$id.tv_title);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.vTitle = (TnTextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R$id.iv_search);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.iSearch = (ImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R$id.tv_edit);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.vEdit = (TnTextView) viewFindViewById4;
        if (attributeSet == null) {
            attributeResourceValue = 0;
            break;
        }
        int attributeCount = attributeSet.getAttributeCount();
        int i11 = 0;
        while (true) {
            if (i11 >= attributeCount) {
                attributeResourceValue = 0;
                break;
            } else {
                if (Intrinsics.c(attributeSet.getAttributeName(i11), "titleValue")) {
                    attributeResourceValue = attributeSet.getAttributeResourceValue(i11, 0);
                    break;
                }
                i11++;
            }
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CustomHeader);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        if (attributeResourceValue != 0) {
            this.vTitle.setTextById(attributeResourceValue);
        }
        if (attributeSet == null) {
            attributeResourceValue2 = 0;
            break;
        }
        int attributeCount2 = attributeSet.getAttributeCount();
        int i12 = 0;
        while (true) {
            if (i12 >= attributeCount2) {
                attributeResourceValue2 = 0;
                break;
            } else {
                if (Intrinsics.c(attributeSet.getAttributeName(i12), "rightValue")) {
                    attributeResourceValue2 = attributeSet.getAttributeResourceValue(i12, 0);
                    break;
                }
                i12++;
            }
        }
        this.vEdit.setTextColor(h.a(R$color.cl01));
        this.vEdit.setTypeface(Typeface.DEFAULT_BOLD);
        if (attributeResourceValue2 != 0) {
            this.vEdit.setTextById(attributeResourceValue2);
        }
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CustomHeader_showSearch, false);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CustomHeader_showEdit, false);
        this.iSearch.setVisibility(z10 ? 0 : 8);
        this.vEdit.setVisibility(z11 ? 0 : 8);
        this.iBack.setImageResource(typedArrayObtainStyledAttributes.getBoolean(R$styleable.CustomHeader_isBack, true) ? R$mipmap.libui_ic_back_black : R$mipmap.libui_ic_back_black);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void onSearchClick(View.OnClickListener click) {
        this.iSearch.setOnClickListener(click);
    }

    public final void setOnBackClick(View.OnClickListener click) {
        this.iBack.setOnClickListener(click);
    }

    public final void setOnEditClick(View.OnClickListener click) {
        this.vEdit.setOnClickListener(click);
    }

    public final void setTitle(String title) {
        this.vTitle.setText(title);
    }
}
