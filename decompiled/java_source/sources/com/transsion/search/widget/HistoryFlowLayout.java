package com.transsion.search.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J7\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001a\u0010\u001bR\u0016\u0010\n\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/search/widget/HistoryFlowLayout;", "Landroid/view/ViewGroup;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "maxLines", "", "setMaxLines", "(I)V", "toggleExpanded", "()V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "", "changed", "l", "t", CampaignEx.JSON_KEY_AD_R, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "onLayout", "(ZIIII)V", "a", "I", "Z", "isExpanded", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HistoryFlowLayout extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int maxLines;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private boolean isExpanded;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HistoryFlowLayout(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HistoryFlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HistoryFlowLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.maxLines = 3;
    }

    public /* synthetic */ HistoryFlowLayout(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(HistoryFlowLayout historyFlowLayout, View view) {
        historyFlowLayout.toggleExpanded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(HistoryFlowLayout historyFlowLayout, View view) {
        historyFlowLayout.toggleExpanded();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l11, int t11, int r11, int b11) {
        int i11 = r11 - l11;
        int childCount = getChildCount();
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int iMax = 0;
        int i16 = 0;
        int i17 = 0;
        while (true) {
            if (i13 >= childCount) {
                i12 = i17;
                break;
            }
            View childAt = getChildAt(i13);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (i14 + measuredWidth > i11) {
                i15 += iMax;
                i16++;
                if (!this.isExpanded && i16 >= this.maxLines) {
                    break;
                }
                i14 = 0;
                iMax = 0;
                i17 = 0;
            }
            int i18 = i17 + measuredWidth;
            childAt.layout(i17, i15, i18, i15 + measuredHeight);
            i14 += measuredWidth;
            iMax = Math.max(iMax, measuredHeight);
            i13++;
            i17 = i18;
        }
        boolean z10 = this.isExpanded;
        if (!z10 && i16 >= this.maxLines) {
            Button button = new Button(getContext());
            button.setText("展开");
            button.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.widget.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HistoryFlowLayout.c(this.f52268a, view);
                }
            });
            addView(button);
            button.layout(i12, i15, button.getMeasuredWidth() + i12, button.getMeasuredHeight() + i15);
            return;
        }
        if (z10) {
            Button button2 = new Button(getContext());
            button2.setText("收起");
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.widget.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HistoryFlowLayout.d(this.f52269a, view);
                }
            });
            addView(button2);
            button2.layout(i12, i15, button2.getMeasuredWidth() + i12, button2.getMeasuredHeight() + i15);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int childCount = getChildCount();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int iMax = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            measureChild(childAt, widthMeasureSpec, heightMeasureSpec);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (i12 + measuredWidth > size) {
                i13 += iMax;
                i14++;
                if (!this.isExpanded && i14 >= this.maxLines) {
                    setMeasuredDimension(size, i13 + i11);
                } else {
                    i12 = 0;
                    iMax = 0;
                }
            }
            i12 += measuredWidth;
            iMax = Math.max(iMax, measuredHeight);
        }
        i11 = iMax;
        setMeasuredDimension(size, i13 + i11);
    }

    public final void setMaxLines(int maxLines) {
        this.maxLines = maxLines;
        requestLayout();
    }

    public final void toggleExpanded() {
        this.isExpanded = !this.isExpanded;
        requestLayout();
    }
}
