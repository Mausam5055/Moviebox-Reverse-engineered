package com.transsion.room.adapter;

import android.content.Context;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bq.z;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.noober.background.view.BLFrameLayout;
import com.noober.background.view.BLTextView;
import com.transsion.moviedetailapi.bean.RoomFilter;
import com.transsion.room.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J-\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0014¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/transsion/room/adapter/RoomFilterTabListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/RoomFilter;", "Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;", "<init>", "()V", "holder", "", "isSelected", "", "E1", "(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Z)V", "Landroid/view/ViewGroup;", "parent", "", "viewType", "D1", "(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;", WebConstants.FIELD_ITEM, "B1", "(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Lcom/transsion/moviedetailapi/bean/RoomFilter;)V", "", "", "payloads", "C1", "(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Lcom/transsion/moviedetailapi/bean/RoomFilter;Ljava/util/List;)V", "FilterTabListItemVH", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomFilterTabListAdapter extends BaseQuickAdapter {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lbq/z;", "viewBinding", "<init>", "(Lbq/z;)V", "a", "Lbq/z;", "f", "()Lbq/z;", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class FilterTabListItemVH extends BaseViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final z viewBinding;

        /* JADX WARN: Illegal instructions before constructor call */
        public FilterTabListItemVH(z viewBinding) {
            Intrinsics.h(viewBinding, "viewBinding");
            BLFrameLayout root = viewBinding.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            super(root);
            this.viewBinding = viewBinding;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final z getViewBinding() {
            return this.viewBinding;
        }
    }

    public RoomFilterTabListAdapter() {
        super(R$layout.item_room_list_tab, null, 2, null);
    }

    private final void E1(FilterTabListItemVH holder, boolean isSelected) {
        Typeface typefaceD;
        holder.getViewBinding().f16911b.setSelected(isSelected);
        holder.getViewBinding().f16912c.setSelected(isSelected);
        View vSelected = holder.getViewBinding().f16913d;
        Intrinsics.g(vSelected, "vSelected");
        vSelected.setVisibility(isSelected ? 0 : 8);
        BLTextView bLTextView = holder.getViewBinding().f16912c;
        if (isSelected) {
            Context context = holder.itemView.getContext();
            Intrinsics.g(context, "getContext(...)");
            typefaceD = jg.a.c(context);
        } else {
            Context context2 = holder.itemView.getContext();
            Intrinsics.g(context2, "getContext(...)");
            typefaceD = jg.a.d(context2);
        }
        bLTextView.setTypeface(typefaceD);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(FilterTabListItemVH holder, RoomFilter item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        holder.getViewBinding().f16912c.setText(item.getTitle());
        E1(holder, item.getIsSelected());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(FilterTabListItemVH holder, RoomFilter item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object objV0 = CollectionsKt.v0(payloads);
        if (objV0 instanceof Boolean) {
            E1(holder, ((Boolean) objV0).booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public FilterTabListItemVH y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        z zVarC = z.c(LayoutInflater.from(getContext()), parent, false);
        Intrinsics.g(zVarC, "inflate(...)");
        return new FilterTabListItemVH(zVarC);
    }
}
