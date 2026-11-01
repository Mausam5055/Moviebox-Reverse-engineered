package com.transsion.room.adapter;

import ak.k;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import bq.v;
import bq.w;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.RoomJoinStatus;
import com.tn.lib.widget.R$drawable;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.room.R$layout;
import com.transsion.room.R$string;
import com.transsion.room.api.RoomsViewType;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import oh.h;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001=B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\f¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u001d\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010$\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\bH\u0014¢\u0006\u0004\b$\u0010%J\u001f\u0010&\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002H\u0014¢\u0006\u0004\b&\u0010'J-\u0010+\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00022\f\u0010*\u001a\b\u0012\u0004\u0012\u00020)0(H\u0014¢\u0006\u0004\b+\u0010,R\u0014\u0010/\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00102\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u0010\u0016\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00106\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00104¨\u0006>"}, d2 = {"Lcom/transsion/room/adapter/CommunityRoomsAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;", "<init>", "()V", "Landroid/content/Context;", "context", "", "D1", "(Landroid/content/Context;)I", "holder", "", "hasJoin", "", "G1", "(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Z)V", WebConstants.FIELD_ITEM, "", "newCount", "H1", "(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;J)V", "isMatchParent", "J1", "(Z)V", "Lcom/transsion/room/api/RoomsViewType;", NativeComponentConstants.KEY_COMPONENT_TYPE, "I1", "(Lcom/transsion/room/api/RoomsViewType;)V", "Landroid/view/View$OnClickListener;", "onClickListener", "E1", "(Landroid/content/Context;Landroid/view/View$OnClickListener;)V", "Landroid/view/ViewGroup;", "parent", "viewType", "F1", "(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;", "B1", "(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V", "", "", "payloads", "C1", "(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V", "F", "I", "coverSize", "G", "Lcom/transsion/room/api/RoomsViewType;", "roomsViewType", "H", "Z", "Ljava/lang/Integer;", "itemWidth", "Lbq/w;", "J", "Lbq/w;", "footerBinding", "K", "initFooter", "RecommendRoomsItemVH", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class CommunityRoomsAdapter extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int coverSize;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private RoomsViewType roomsViewType;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private boolean isMatchParent;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private Integer itemWidth;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private w footerBinding;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private boolean initFooter;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lbq/v;", "viewBinding", "<init>", "(Lbq/v;)V", "a", "Lbq/v;", "f", "()Lbq/v;", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class RecommendRoomsItemVH extends BaseViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final v viewBinding;

        /* JADX WARN: Illegal instructions before constructor call */
        public RecommendRoomsItemVH(v viewBinding) {
            Intrinsics.h(viewBinding, "viewBinding");
            ConstraintLayout root = viewBinding.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            super(root);
            this.viewBinding = viewBinding;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final v getViewBinding() {
            return this.viewBinding;
        }
    }

    public CommunityRoomsAdapter() {
        super(R$layout.item_recommend_rooms, null, 2, null);
        this.coverSize = a0.a(64.0f);
        this.roomsViewType = RoomsViewType.TYPE_ROOM_HOME;
    }

    private final int D1(Context context) {
        return (h.f71021a.e(context) - ((dk.a.a(11.5f) * 4) + (dk.a.b(12) * 2))) / 5;
    }

    private final void G1(RecommendRoomsItemVH holder, boolean hasJoin) {
        holder.getViewBinding().f16882h.setStatus(hasJoin ? RoomJoinStatus.JOINED : RoomJoinStatus.JOIN);
    }

    private final void H1(RecommendRoomsItemVH holder, RoomItem item, long newCount) {
        String strD;
        if (this.roomsViewType != RoomsViewType.TYPE_ROOM_HOME) {
            Long newPostCount = item.getNewPostCount();
            if ((newPostCount != null ? newPostCount.longValue() : 0L) > 0) {
                holder.getViewBinding().f16879e.setText(Utils.a().getString(R$string.x_new, newCount > 99 ? "99+" : String.valueOf(newCount)));
                holder.getViewBinding().f16879e.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
                return;
            }
        }
        if (item.getUserCount() != null) {
            Long userCount = item.getUserCount();
            Intrinsics.e(userCount);
            strD = k.d(userCount.longValue());
        } else {
            strD = "0";
        }
        holder.getViewBinding().f16879e.setText(strD);
        holder.getViewBinding().f16879e.setCompoundDrawablesWithIntrinsicBounds(R$drawable.ic_room_home_member, 0, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(RecommendRoomsItemVH holder, RoomItem item) {
        int iIntValue;
        List<String> tags;
        String str;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ViewGroup.LayoutParams layoutParams = holder.getViewBinding().getRoot().getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (this.isMatchParent) {
            iIntValue = -1;
        } else {
            Integer num = this.itemWidth;
            Intrinsics.e(num);
            iIntValue = num.intValue();
        }
        marginLayoutParams.width = iIntValue;
        holder.getViewBinding().getRoot().setLayoutParams(marginLayoutParams);
        if (item.getBuiltIn()) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new CommunityRoomsAdapter$convert$1(item, holder, null), 3, null);
        } else {
            String avatar = item.getAvatar();
            if (avatar != null) {
                f.b bVarC = f.f61882a.m(getContext()).g(avatar).m(this.coverSize).c(this.coverSize);
                ShapeableImageView ivCover = holder.getViewBinding().f16877c;
                Intrinsics.g(ivCover, "ivCover");
                bVarC.d(ivCover);
            }
        }
        holder.getViewBinding().f16881g.setText(item.getName());
        Long newPostCount = item.getNewPostCount();
        H1(holder, item, newPostCount != null ? newPostCount.longValue() : 0L);
        List<String> tags2 = item.getTags();
        if (tags2 != null && !tags2.isEmpty() && (tags = item.getTags()) != null && (str = (String) CollectionsKt.k0(tags)) != null) {
            holder.getViewBinding().f16880f.setText(str);
        }
        Boolean hasJoin = item.getHasJoin();
        G1(holder, hasJoin != null ? hasJoin.booleanValue() : false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(RecommendRoomsItemVH holder, RoomItem item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(payloads.size() - 1);
        if (obj instanceof Boolean) {
            G1(holder, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Long) {
            H1(holder, item, ((Number) obj).longValue());
        }
    }

    public final void E1(Context context, View.OnClickListener onClickListener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(onClickListener, "onClickListener");
        w wVarC = w.c(LayoutInflater.from(context));
        this.footerBinding = wVarC;
        Intrinsics.e(wVarC);
        wVarC.getRoot().setOnClickListener(onClickListener);
        w wVar = this.footerBinding;
        Intrinsics.e(wVar);
        ConstraintLayout root = wVar.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        t(root, -1, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: F1, reason: merged with bridge method [inline-methods] */
    public RecommendRoomsItemVH y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        v vVarC = v.c(LayoutInflater.from(getContext()), parent, false);
        Intrinsics.g(vVarC, "inflate(...)");
        if (this.itemWidth == null) {
            this.itemWidth = Integer.valueOf(D1(getContext()));
        }
        ViewGroup.LayoutParams layoutParams = vVarC.getRoot().getLayoutParams();
        Integer num = this.itemWidth;
        Intrinsics.e(num);
        layoutParams.width = num.intValue();
        ViewGroup.LayoutParams layoutParams2 = vVarC.f16877c.getLayoutParams();
        Integer num2 = this.itemWidth;
        Intrinsics.e(num2);
        layoutParams2.height = num2.intValue();
        ViewGroup.LayoutParams layoutParams3 = vVarC.f16878d.getLayoutParams();
        Integer num3 = this.itemWidth;
        Intrinsics.e(num3);
        layoutParams3.height = num3.intValue();
        if (!this.initFooter) {
            w wVar = this.footerBinding;
            if (wVar != null) {
                ViewGroup.LayoutParams layoutParams4 = wVar.getRoot().getLayoutParams();
                Integer num4 = this.itemWidth;
                Intrinsics.e(num4);
                layoutParams4.width = num4.intValue();
                ViewGroup.LayoutParams layoutParams5 = wVar.f16885c.getLayoutParams();
                Integer num5 = this.itemWidth;
                Intrinsics.e(num5);
                layoutParams5.height = num5.intValue();
            }
            this.initFooter = true;
        }
        return new RecommendRoomsItemVH(vVarC);
    }

    public final void I1(RoomsViewType type) {
        Intrinsics.h(type, "type");
        this.roomsViewType = type;
    }

    public final void J1(boolean isMatchParent) {
        this.isMatchParent = isMatchParent;
    }
}
