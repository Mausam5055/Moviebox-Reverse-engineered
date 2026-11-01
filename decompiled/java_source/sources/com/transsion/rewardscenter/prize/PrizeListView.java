package com.transsion.rewardscenter.prize;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.cloud.config.utils.XLogUtil;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.rewardscenterapi.UserPrize;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0019\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/transsion/rewardscenter/prize/PrizeListView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "j", "()V", "Lwp/a;", XLogUtil.TAG, "setCtxConfig", "(Lwp/a;)V", "Lcom/transsion/rewardscenterapi/UserPrize;", "userPrize", "setData", "(Lcom/transsion/rewardscenterapi/UserPrize;)V", "", "drawResultId", "markTopUp", "(Ljava/lang/String;)V", "markClaimed", "Landroidx/recyclerview/widget/RecyclerView;", "a", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lcom/transsion/rewardscenter/prize/g;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/rewardscenter/prize/g;", "adapter", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PrizeListView extends ConstraintLayout {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private RecyclerView recyclerView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private g adapter;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PrizeListView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PrizeListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PrizeListView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        RecyclerView recyclerView = new RecyclerView(context);
        recyclerView.setLayoutManager(new LinearLayoutManager(context));
        recyclerView.addItemDecoration(new g.b(0, 0, 3, null));
        recyclerView.setNestedScrollingEnabled(false);
        int iA = a0.a(12.0f);
        recyclerView.setPadding(iA, 0, iA, 0);
        this.recyclerView = recyclerView;
        addView(recyclerView, new ConstraintLayout.b(-1, -2));
    }

    public /* synthetic */ PrizeListView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void j() {
        post(new Runnable() { // from class: com.transsion.rewardscenter.prize.i
            @Override // java.lang.Runnable
            public final void run() {
                PrizeListView.k(this.f50999a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(PrizeListView prizeListView) {
        Object parent = prizeListView.getParent();
        int top = prizeListView.getTop() - a0.a(10.0f);
        while (parent != null) {
            if (parent instanceof NestedScrollView) {
                ((NestedScrollView) parent).smoothScrollTo(0, top);
                return;
            } else {
                if (!(parent instanceof View)) {
                    return;
                }
                View view = (View) parent;
                top += view.getTop();
                parent = view.getParent();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(PrizeListView prizeListView) {
        prizeListView.j();
        return Unit.f67061a;
    }

    public final void markClaimed(String drawResultId) {
        Intrinsics.h(drawResultId, "drawResultId");
        g gVar = this.adapter;
        if (gVar != null) {
            gVar.T1(drawResultId);
        }
    }

    public final void markTopUp(String drawResultId) {
        Intrinsics.h(drawResultId, "drawResultId");
        g gVar = this.adapter;
        if (gVar != null) {
            gVar.U1(drawResultId);
        }
    }

    public final void setCtxConfig(wp.a config) {
        Intrinsics.h(config, "config");
        g gVar = new g(config);
        gVar.X1(new Function0() { // from class: com.transsion.rewardscenter.prize.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PrizeListView.l(this.f50998a);
            }
        });
        this.adapter = gVar;
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            recyclerView.setAdapter(gVar);
        }
    }

    public final void setData(UserPrize userPrize) {
        g gVar = this.adapter;
        if (gVar != null) {
            gVar.W1(userPrize);
        }
    }
}
