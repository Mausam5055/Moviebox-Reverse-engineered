package com.transsion.home.view;

import android.content.Context;
import androidx.core.view.GravityCompat;
import com.tn.lib.widget.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\f"}, d2 = {"Lcom/transsion/home/view/RoomSimplePagerTitleView;", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "onSelected", "", "index", "", "totalCount", "onDeselected", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoomSimplePagerTitleView extends SimplePagerTitleView {
    public static final int $stable = 8;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomSimplePagerTitleView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        setNormalColor(androidx.core.content.b.getColor(context, R$color.text_02));
        setSelectedColor(androidx.core.content.b.getColor(context, R$color.text_01));
        setTextSize(14.0f);
        setGravity(GravityCompat.START);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, j00.d
    public void onDeselected(int index, int totalCount) {
        super.onDeselected(index, totalCount);
        getPaint().setFakeBoldText(false);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, j00.d
    public void onSelected(int index, int totalCount) {
        super.onSelected(index, totalCount);
        getPaint().setFakeBoldText(true);
    }
}
