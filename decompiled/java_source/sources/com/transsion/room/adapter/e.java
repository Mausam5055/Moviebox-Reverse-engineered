package com.transsion.room.adapter;

import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.R$string;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/room/adapter/e;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "dataList", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/RoomItem;)V", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class e extends BaseQuickAdapter implements i {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(List<RoomItem> dataList) {
        super(R$layout.adapter_personal_room, dataList);
        Intrinsics.h(dataList, "dataList");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, RoomItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.iv_cover);
        String avatar = item.getAvatar();
        if (avatar != null) {
            f.f61882a.m(getContext()).g(avatar).m(a0.a(46.0f)).c(a0.a(46.0f)).d(shapeableImageView);
        }
        holder.setText(R$id.tv_name, item.getName());
        int i11 = R$id.tv_focus_num;
        Long userCount = item.getUserCount();
        String string = userCount != null ? userCount.toString() : null;
        holder.setText(i11, string + getContext().getString(R$string.check_in));
        Long newPostCount = item.getNewPostCount();
        long jLongValue = newPostCount != null ? newPostCount.longValue() : 0L;
        holder.setVisible(R$id.tv_post_num, true);
        if (jLongValue <= 0) {
            holder.setVisible(R$id.tv_post_num, false);
        } else if (jLongValue > 99) {
            holder.setText(R$id.tv_post_num, "99+");
        } else {
            holder.setText(R$id.tv_post_num, String.valueOf(jLongValue));
        }
        HashMap map = new HashMap();
        String groupId = item.getGroupId();
        if (groupId == null) {
            groupId = "";
        }
        map.put("group_id", groupId);
        map.put("sequence", String.valueOf(g0(item)));
        com.transsion.baselib.helper.a.f43262a.a("rooms", map);
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
