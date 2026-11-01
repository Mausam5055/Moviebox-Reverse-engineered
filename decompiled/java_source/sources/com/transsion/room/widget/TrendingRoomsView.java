package com.transsion.room.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import bq.i0;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.room.R$layout;
import com.transsion.room.api.RoomsViewType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/transsion/room/widget/TrendingRoomsView;", "Lcom/transsion/room/widget/RoomsBaseView;", "Lbq/i0;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "initRecyclerView", "()V", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "Landroidx/appcompat/widget/AppCompatTextView;", "getTitleView", "()Landroidx/appcompat/widget/AppCompatTextView;", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TrendingRoomsView extends RoomsBaseView<i0> {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TrendingRoomsView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TrendingRoomsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TrendingRoomsView(Context context, AttributeSet attributeSet, int i11) {
        AppCompatTextView appCompatTextView;
        View view;
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        View.inflate(context, R$layout.view_trending_rooms, this);
        setMViewBinding(i0.a(this));
        initRecyclerView();
        getMAdapter().G1(RoomsViewType.TYPE_TRENDING);
        i0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (view = mViewBinding.f16770b) != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.widget.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TrendingRoomsView.F(this.f51905a, view2);
                }
            });
        }
        i0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appCompatTextView = mViewBinding2.f16773e) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.widget.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TrendingRoomsView.G(this.f51906a, view2);
            }
        });
    }

    public /* synthetic */ TrendingRoomsView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(TrendingRoomsView trendingRoomsView, View view) {
        trendingRoomsView.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(TrendingRoomsView trendingRoomsView, View view) {
        trendingRoomsView.B();
    }

    @Override // com.transsion.room.widget.RoomsBaseView
    public RecyclerView getRecyclerView() {
        i0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            return mViewBinding.f16771c;
        }
        return null;
    }

    @Override // com.transsion.room.widget.RoomsBaseView
    public AppCompatTextView getTitleView() {
        i0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            return mViewBinding.f16774f;
        }
        return null;
    }

    @Override // com.transsion.room.widget.RoomsBaseView
    public void initRecyclerView() {
        RecyclerView recyclerView;
        i0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f16771c) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3, 1, false));
        recyclerView.addItemDecoration(new ig.a(dk.a.b(8), dk.a.b(8), 0, 0));
        recyclerView.setAdapter(getMAdapter());
    }
}
