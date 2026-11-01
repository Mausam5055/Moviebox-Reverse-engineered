package com.transsion.baseui.widget;

import android.content.Context;
import android.text.TextPaint;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.ColorTransitionPagerTitleView;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/transsion/baseui/widget/CustomPagerTitleView;", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ColorTransitionPagerTitleView;", "Landroid/content/Context;", "context", "", "gravi", "padding", "<init>", "(Landroid/content/Context;II)V", "(Landroid/content/Context;)V", "", "textSize", "", "setSelectTextSize", "(F)V", "index", "totalCount", "onSelected", "(II)V", "onDeselected", "c", "I", "mPadding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "F", "selectTextSize", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CustomPagerTitleView extends ColorTransitionPagerTitleView {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int mPadding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float selectTextSize;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomPagerTitleView(Context context) {
        this(context, 17, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomPagerTitleView(Context context, int i11, int i12) {
        super(context);
        Intrinsics.h(context, "context");
        this.selectTextSize = 16.0f;
        setNormalColor(androidx.core.content.b.getColor(context, R$color.text_02));
        setSelectedColor(androidx.core.content.b.getColor(context, R$color.text_01));
        setGravity(i11);
        getPaint().setTypeface(jg.a.a(context));
        this.mPadding = i12;
        setPadding(i12, 0, i12, 0);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.ColorTransitionPagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, j00.d
    public void onDeselected(int index, int totalCount) {
        super.onDeselected(index, totalCount);
        TextPaint paint = getPaint();
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        paint.setTypeface(jg.a.d(context));
        setTextSize(2, 14.0f);
        int i11 = this.mPadding;
        setPadding(i11, 0, i11, 0);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.ColorTransitionPagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, j00.d
    public void onSelected(int index, int totalCount) {
        super.onSelected(index, totalCount);
        TextPaint paint = getPaint();
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        paint.setTypeface(jg.a.a(context));
        setTextSize(2, this.selectTextSize);
        int i11 = this.mPadding;
        setPadding(i11 - 2, 0, i11 - 2, 0);
    }

    public final void setSelectTextSize(float textSize) {
        this.selectTextSize = textSize;
    }
}
