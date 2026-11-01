package com.transsion.room.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import bq.f0;
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
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u001a\u001a\u00020\f2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0013\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00180\u001c¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/transsion/room/widget/CommunityRoomsView;", "Lcom/transsion/room/widget/RoomsHomeBaseView;", "Lbq/f0;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "dataSize", "", "E", "(I)V", "initRecyclerView", "()V", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "", "getTitleView", "()Ljava/lang/Void;", "", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "dataList", "setList", "(Ljava/util/List;)V", "", "getDataList", "()Ljava/util/List;", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CommunityRoomsView extends RoomsHomeBaseView<f0> {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CommunityRoomsView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CommunityRoomsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CommunityRoomsView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        View.inflate(context, R$layout.view_community_rooms, this);
        setMViewBinding(f0.a(this));
        setPadding(0, dk.a.b(12), 0, dk.a.b(12));
        initRecyclerView();
        getMAdapter().I1(RoomsViewType.TYPE_ROOM_HOME);
    }

    public /* synthetic */ CommunityRoomsView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void E(int dataSize) {
        RecyclerView recyclerView;
        f0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f16752b) == null) {
            return;
        }
        if (recyclerView.getItemDecorationCount() != 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        getMAdapter().J1(false);
        marginLayoutParams.setMarginStart(0);
        marginLayoutParams.setMarginEnd(0);
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.addItemDecoration(new ig.f(11.5f, 0.0f, 12.0f, 2, null));
        recyclerView.setLayoutParams(marginLayoutParams);
        recyclerView.setAdapter(getMAdapter());
    }

    public final List<RoomItem> getDataList() {
        return getMAdapter().getData();
    }

    @Override // com.transsion.room.widget.RoomsHomeBaseView
    public RecyclerView getRecyclerView() {
        f0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            return mViewBinding.f16752b;
        }
        return null;
    }

    @Override // com.transsion.room.widget.RoomsHomeBaseView
    public /* bridge */ /* synthetic */ TextView getTitleView() {
        return (TextView) m319getTitleView();
    }

    /* JADX INFO: renamed from: getTitleView, reason: collision with other method in class */
    public Void m319getTitleView() {
        return null;
    }

    @Override // com.transsion.room.widget.RoomsHomeBaseView
    public void initRecyclerView() {
    }

    @Override // com.transsion.room.widget.RoomsHomeBaseView, aq.c
    public void setList(List<RoomItem> dataList) {
        Intrinsics.h(dataList, "dataList");
        E(dataList.size());
        super.setList(dataList);
    }
}
