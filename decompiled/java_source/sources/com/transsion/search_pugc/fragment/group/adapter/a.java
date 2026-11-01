package com.transsion.search_pugc.fragment.group.adapter;

import android.content.Context;
import android.widget.ImageView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.util.h;
import com.transsion.publish.api.GroupBean;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0015\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0018\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0012\u001a\u0004\b\u0017\u0010\u0014¨\u0006\u0019"}, d2 = {"Lcom/transsion/search_pugc/fragment/group/adapter/a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/publish/api/GroupBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "layoutResId", "<init>", "(I)V", WebConstants.FIELD_ITEM, "sequence", "", "E1", "(Lcom/transsion/publish/api/GroupBean;I)V", "holder", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/publish/api/GroupBean;)V", "F", "I", "D1", "()I", "width", "G", "C1", "height", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseQuickAdapter implements i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int width;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int height;

    public a() {
        this(0, 1, null);
    }

    public a(int i11) {
        super(i11, null, 2, null);
        this.width = a0.a(48.0f);
        this.height = a0.a(48.0f);
    }

    public /* synthetic */ a(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.item_search_group : i11);
    }

    private final void E1(GroupBean item, int sequence) {
        HashMap map = new HashMap();
        String groupId = item.getGroupId();
        if (groupId == null) {
            groupId = "";
        }
        map.put("group_id", groupId);
        map.put("sequence", String.valueOf(sequence));
        String ops = item.getOps();
        map.put("ops", ops != null ? ops : "");
        com.transsion.baselib.helper.a.f43262a.a("searchresult", map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, GroupBean item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        holder.setText(R$id.tv_name, item.getName());
        holder.setText(R$id.tv_des, h.f43515a.a(item.getUserCount()) + " checkin");
        holder.setVisible(R$id.iv_select, item.getSelect());
        Context context = holder.itemView.getContext();
        ImageView imageView = (ImageView) holder.itemView.findViewById(R$id.iv_avatar);
        String avatar = item.getAvatar();
        if (avatar != null) {
            f.a aVar = f.f61882a;
            Intrinsics.e(context);
            f.b bVarC = aVar.m(context).g(avatar).i(R$color.cl34_ff).m(this.width).c(this.height);
            Intrinsics.e(imageView);
            bVarC.d(imageView);
        }
        E1(item, g0(item));
    }

    /* JADX INFO: renamed from: C1, reason: from getter */
    public final int getHeight() {
        return this.height;
    }

    /* JADX INFO: renamed from: D1, reason: from getter */
    public final int getWidth() {
        return this.width;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
