package com.transsion.rewardscenter.redeem;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.cloud.config.utils.XLogUtil;
import com.transsion.rewardscenter.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J%\u0010\u000b\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/transsion/rewardscenter/redeem/d;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/rewardscenter/redeem/e;", "Lwp/a;", XLogUtil.TAG, "<init>", "(Lwp/a;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "a", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class d extends BaseProviderMultiAdapter<e> {
    public static final int G = 8;

    public static final class a extends RecyclerView.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f51016a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f51017b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Paint f51018c;

        /* JADX WARN: Illegal instructions before constructor call */
        public a() {
            int i11 = 0;
            this(i11, i11, 3, null);
        }

        public a(int i11, int i12) {
            this.f51016a = i11;
            this.f51017b = i12;
            this.f51018c = new Paint();
        }

        public /* synthetic */ a(int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
            this((i13 & 1) != 0 ? 0 : i11, (i13 & 2) != 0 ? 1 : i12);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            outRect.set(0, 0, 0, parent.getChildAdapterPosition(view) < state.b() + (-1) ? this.f51016a + this.f51017b : this.f51016a);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void onDraw(Canvas c11, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(c11, "c");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            this.f51018c.setColor(androidx.core.content.b.getColor(parent.getContext(), R$color.prize_list_divider));
            int childCount = parent.getChildCount() - 1;
            for (int i11 = 1; i11 < childCount; i11++) {
                View childAt = parent.getChildAt(i11);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
                int paddingLeft = parent.getPaddingLeft();
                int width = parent.getWidth() - parent.getPaddingRight();
                int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) layoutParams)).bottomMargin;
                c11.drawRect(paddingLeft, bottom, width, this.f51017b + bottom, this.f51018c);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(wp.a config) {
        super(null, 1, null);
        Intrinsics.h(config, "config");
        F1(new i());
        F1(new SkuItemProvider(config));
        F1(new LotteryItemProvider(config));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends e> data, int position) {
        Intrinsics.h(data, "data");
        e eVar = data.get(position);
        if (eVar instanceof e.c) {
            return RedeemType.TITLE.getValue();
        }
        if (eVar instanceof e.b) {
            return RedeemType.SKU.getValue();
        }
        if (eVar instanceof e.a) {
            return RedeemType.LOTTERY.getValue();
        }
        throw new NoWhenBranchMatchedException();
    }
}
