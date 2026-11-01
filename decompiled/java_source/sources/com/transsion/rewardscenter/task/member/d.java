package com.transsion.rewardscenter.task.member;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.cloud.config.utils.XLogUtil;
import com.transsion.rewardscenter.R$color;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J%\u0010\u000b\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u000f2\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\t0\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/transsion/rewardscenter/task/member/d;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/rewardscenterapi/MemberTaskItem;", "Lwp/a;", XLogUtil.TAG, "<init>", "(Lwp/a;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "provider", "", "F1", "(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V", "", "list", "n1", "(Ljava/util/Collection;)V", "", "G", "Ljava/util/Set;", "supportTaskTypes", "a", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class d extends BaseProviderMultiAdapter<MemberTaskItem> {
    public static final int H = 8;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final Set<Integer> supportTaskTypes;

    public static final class a extends RecyclerView.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f51198a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Paint f51199b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f51200c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f51201d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f51202e;

        public a() {
            this(0, 1, null);
        }

        public a(int i11) {
            this.f51198a = i11;
            this.f51199b = new Paint();
            this.f51200c = a0.a(24.0f);
            this.f51201d = a0.a(8.0f);
        }

        public /* synthetic */ a(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this((i12 & 1) != 0 ? 1 : i11);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            Intrinsics.f(adapter, "null cannot be cast to non-null type com.transsion.rewardscenter.task.member.MemberTaskAdapter");
            Integer taskSubType = ((MemberTaskItem) ((d) adapter).getItem(childAdapterPosition)).getTaskSubType();
            TaskType taskType = TaskType.TITLE;
            int value = taskType.getValue();
            if (taskSubType != null && taskSubType.intValue() == value) {
                outRect.top = this.f51200c;
            } else if (childAdapterPosition > 0) {
                RecyclerView.Adapter adapter2 = parent.getAdapter();
                Intrinsics.f(adapter2, "null cannot be cast to non-null type com.transsion.rewardscenter.task.member.MemberTaskAdapter");
                Integer taskSubType2 = ((MemberTaskItem) ((d) adapter2).getItem(childAdapterPosition - 1)).getTaskSubType();
                int value2 = taskType.getValue();
                if (taskSubType2 != null && taskSubType2.intValue() == value2) {
                    outRect.top = this.f51201d;
                } else {
                    outRect.top = this.f51202e;
                }
            }
            if (childAdapterPosition == state.b() - 1) {
                outRect.bottom = a0.a(12.0f);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void onDraw(Canvas c11, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(c11, "c");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            this.f51199b.setColor(androidx.core.content.b.getColor(parent.getContext(), R$color.prize_list_divider));
            int childCount = parent.getChildCount() - 1;
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = parent.getChildAt(i11);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
                int paddingLeft = parent.getPaddingLeft();
                int width = parent.getWidth() - parent.getPaddingRight();
                int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) layoutParams)).bottomMargin;
                c11.drawRect(paddingLeft, bottom, width, this.f51198a + bottom, this.f51199b);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(wp.a config) {
        super(null, 1, null);
        Intrinsics.h(config, "config");
        this.supportTaskTypes = new LinkedHashSet();
        F1(new k(config));
        F1(new h(config));
        F1(new j(config));
        F1(new e(config));
        F1(new i(config));
        F1(new f(config));
        F1(new g(config));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    public void F1(BaseItemProvider provider) {
        Intrinsics.h(provider, "provider");
        this.supportTaskTypes.add(Integer.valueOf(provider.l()));
        super.F1(provider);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends MemberTaskItem> data, int position) {
        Intrinsics.h(data, "data");
        Integer taskSubType = data.get(position).getTaskSubType();
        if (taskSubType != null) {
            return taskSubType.intValue();
        }
        return 0;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void n1(Collection<MemberTaskItem> list) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            list = new ArrayList<>();
        }
        for (MemberTaskItem memberTaskItem : list) {
            if (CollectionsKt.b0(this.supportTaskTypes, memberTaskItem.getTaskSubType())) {
                arrayList.add(memberTaskItem);
            } else {
                lg.a.C0828a.f(lg.a.f68839a, "MemberTask", "task type " + memberTaskItem.getTaskSubType() + " not support", false, 4, null);
            }
        }
        super.n1(arrayList);
    }
}
