package com.transsion.room.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import bq.a0;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.room.R$layout;
import com.transsion.room.R$string;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J-\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0014¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/transsion/room/adapter/YourRoomsAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;", "<init>", "()V", "holder", "", "newCount", "", "E1", "(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;J)V", "Landroid/view/ViewGroup;", "parent", "", "viewType", "D1", "(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;", WebConstants.FIELD_ITEM, "B1", "(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V", "", "", "payloads", "C1", "(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V", "F", "I", "coverSize", "YourRoomsItemVH", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class YourRoomsAdapter extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int coverSize;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lbq/a0;", "viewBinding", "<init>", "(Lbq/a0;)V", "a", "Lbq/a0;", "f", "()Lbq/a0;", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class YourRoomsItemVH extends BaseViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final a0 viewBinding;

        /* JADX WARN: Illegal instructions before constructor call */
        public YourRoomsItemVH(a0 viewBinding) {
            Intrinsics.h(viewBinding, "viewBinding");
            ConstraintLayout root = viewBinding.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            super(root);
            this.viewBinding = viewBinding;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final a0 getViewBinding() {
            return this.viewBinding;
        }
    }

    public YourRoomsAdapter() {
        super(R$layout.item_your_rooms, null, 2, null);
        this.coverSize = com.blankj.utilcode.util.a0.a(78.0f);
    }

    private final void E1(YourRoomsItemVH holder, long newCount) {
        BLTextView tvNewCount = holder.getViewBinding().f16718d;
        Intrinsics.g(tvNewCount, "tvNewCount");
        tvNewCount.setVisibility((newCount > 0L ? 1 : (newCount == 0L ? 0 : -1)) > 0 ? 0 : 8);
        holder.getViewBinding().f16718d.setText(Utils.a().getString(R$string.x_new, newCount > 99 ? "99+" : String.valueOf(newCount)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(YourRoomsItemVH holder, RoomItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        String avatar = item.getAvatar();
        if (avatar != null) {
            f.b bVarC = f.f61882a.m(getContext()).g(avatar).m(this.coverSize).c(this.coverSize);
            ShapeableImageView ivCover = holder.getViewBinding().f16716b;
            Intrinsics.g(ivCover, "ivCover");
            bVarC.d(ivCover);
        }
        holder.getViewBinding().f16717c.setText(item.getName());
        Long newPostCount = item.getNewPostCount();
        E1(holder, newPostCount != null ? newPostCount.longValue() : 0L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(YourRoomsItemVH holder, RoomItem item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object objV0 = CollectionsKt.v0(payloads);
        if (objV0 instanceof Long) {
            E1(holder, ((Number) objV0).longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public YourRoomsItemVH y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        a0 a0VarC = a0.c(LayoutInflater.from(getContext()), parent, false);
        Intrinsics.g(a0VarC, "inflate(...)");
        return new YourRoomsItemVH(a0VarC);
    }
}
