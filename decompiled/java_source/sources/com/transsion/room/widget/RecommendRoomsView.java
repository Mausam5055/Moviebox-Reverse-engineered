package com.transsion.room.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import bq.g0;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.room.R$layout;
import com.transsion.room.api.RoomsViewType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u001a\u001a\u00020\f2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/transsion/room/widget/RecommendRoomsView;", "Lcom/transsion/room/widget/RoomsBaseView;", "Lbq/g0;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "dataSize", "", "F", "(I)V", "initRecyclerView", "()V", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "Landroidx/appcompat/widget/AppCompatTextView;", "getTitleView", "()Landroidx/appcompat/widget/AppCompatTextView;", "", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "dataList", "setList", "(Ljava/util/List;)V", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RecommendRoomsView extends RoomsBaseView<g0> {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RecommendRoomsView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RecommendRoomsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RecommendRoomsView(Context context, AttributeSet attributeSet, int i11) {
        AppCompatTextView appCompatTextView;
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        View.inflate(context, R$layout.view_recommend_rooms, this);
        setMViewBinding(g0.a(this));
        setPadding(0, dk.a.b(12), 0, dk.a.b(12));
        initRecyclerView();
        getMAdapter().G1(RoomsViewType.TYPE_ROOM_HOME);
        g0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatTextView = mViewBinding.f16758c) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.widget.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecommendRoomsView.E(this.f51890a, view);
            }
        });
    }

    public /* synthetic */ RecommendRoomsView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(RecommendRoomsView recommendRoomsView, View view) {
        recommendRoomsView.B();
    }

    private final void F(int dataSize) {
        RecyclerView recyclerView;
        g0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f16757b) == null) {
            return;
        }
        if (recyclerView.getItemDecorationCount() != 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (dataSize >= 8) {
            getMAdapter().H1(false);
            marginLayoutParams.setMarginStart(0);
            marginLayoutParams.setMarginEnd(0);
            recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 2, 0, false));
            recyclerView.addItemDecoration(new ig.a(dk.a.b(8), dk.a.b(8), dk.a.b(12), dk.a.b(12)));
        } else if (dataSize > 3) {
            getMAdapter().H1(false);
            marginLayoutParams.setMarginStart(0);
            marginLayoutParams.setMarginEnd(0);
            recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext(), 0, false));
            recyclerView.addItemDecoration(new ig.f(8.0f, 0.0f, 12.0f, 2, null));
        } else {
            getMAdapter().H1(true);
            marginLayoutParams.setMarginStart(dk.a.b(8));
            marginLayoutParams.setMarginEnd(dk.a.b(8));
            recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3));
            recyclerView.addItemDecoration(new ig.a(dk.a.b(8), dk.a.b(8), 0, 0));
        }
        recyclerView.setLayoutParams(marginLayoutParams);
        recyclerView.setAdapter(getMAdapter());
    }

    @Override // com.transsion.room.widget.RoomsBaseView
    public RecyclerView getRecyclerView() {
        g0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            return mViewBinding.f16757b;
        }
        return null;
    }

    @Override // com.transsion.room.widget.RoomsBaseView
    public AppCompatTextView getTitleView() {
        g0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            return mViewBinding.f16759d;
        }
        return null;
    }

    @Override // com.transsion.room.widget.RoomsBaseView
    public void initRecyclerView() {
    }

    @Override // com.transsion.room.widget.RoomsBaseView, aq.c
    public void setList(List<RoomItem> dataList) {
        Intrinsics.h(dataList, "dataList");
        F(dataList.size());
        super.setList(dataList);
    }
}
