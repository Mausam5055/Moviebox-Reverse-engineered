package com.transsion.usercenter.message.adapter;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.h;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.usercenter.R$color;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.message.bean.MessageEntity;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \"2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001#B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000f\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0010\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0011\u0010\rJ\u001f\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0012\u0010\rJ\u001f\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0013\u0010\rJ\u001f\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0014\u0010\rJ\u001d\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001b\u0010\rR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\u0006\n\u0004\b \u0010\u001e¨\u0006$"}, d2 = {"Lcom/transsion/usercenter/message/adapter/a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/usercenter/message/bean/MessageEntity;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "layoutResId", "<init>", "(I)V", "holder", WebConstants.FIELD_ITEM, "", "J1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/message/bean/MessageEntity;)V", "G1", "K1", "B1", "I1", "D1", "C1", "H1", "Landroid/content/Context;", "context", "", "dpVal", "F1", "(Landroid/content/Context;F)F", "E1", "", "F", "Ljava/lang/String;", "LIKE_ITEM", "G", "LIKE_COMMENT_ITEM", "H", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseQuickAdapter implements i {
    public static final String I = "SYSTEM";
    public static final String J = "COMMENT";
    public static final String K = "REPLY_COMMENT";

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final String LIKE_ITEM;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final String LIKE_COMMENT_ITEM;

    public a() {
        this(0, 1, null);
    }

    public a(int i11) {
        super(i11, null, 2, null);
        this.LIKE_ITEM = "LIKE";
        this.LIKE_COMMENT_ITEM = "LIKE_COMMENT";
    }

    public /* synthetic */ a(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.item_message_comment : i11);
    }

    private final void B1(BaseViewHolder holder, MessageEntity item) {
        holder.setText(R$id.tvContent, item.getContent());
        I1(holder, item);
        C1(holder, item);
    }

    private final void C1(BaseViewHolder holder, MessageEntity item) {
        int i11 = R$id.tvContent;
        String content = item.getContent();
        holder.setText(i11, content != null ? rw.a.f74724a.a("", content, h.a(R$color.color_ff999999)) : null);
    }

    private final void D1(BaseViewHolder holder, MessageEntity item) {
        View view = holder.getView(R$id.imAvatar);
        Intrinsics.f(view, "null cannot be cast to non-null type com.google.android.material.imageview.ShapeableImageView");
        holder.setText(R$id.tvNickName, item.getNickname());
        holder.setText(R$id.tvTime, rw.b.f74725a.b(Long.parseLong(item.getCreatedAt())));
        holder.setVisible(R$id.view_red_blank, Intrinsics.c(item.getStatus(), "UNREAD"));
        int iA = a0.a(48.0f);
        f.f61882a.m(getContext()).g(item.getAvator()).m(iA).c(iA).d((ShapeableImageView) view);
    }

    private final void G1(BaseViewHolder holder, MessageEntity item) {
        holder.setText(R$id.tvContent, item.getContent());
        I1(holder, item);
    }

    private final void H1(BaseViewHolder holder, MessageEntity item) {
        int i11 = R$id.tvContent;
        String content = item.getContent();
        holder.setText(i11, content != null ? rw.a.f74724a.a("", content, h.a(R$color.color_ff999999)) : null);
    }

    private final void I1(BaseViewHolder holder, MessageEntity item) {
        View view = holder.getView(R$id.imCover);
        Intrinsics.f(view, "null cannot be cast to non-null type android.widget.ImageView");
        int iA = a0.a(56.0f);
        f.f61882a.m(getContext()).g(item.getPicture()).i(h.a(R$color.color_ff999999)).m(iA).c(iA).j((int) F1(getContext(), 2.0f)).d((ImageView) view);
    }

    private final void J1(BaseViewHolder holder, MessageEntity item) {
        holder.setText(R$id.tvContent, item.getContent());
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0039  */
    private final void K1(BaseViewHolder holder, MessageEntity item) {
        String type = item.getType();
        int iHashCode = type.hashCode();
        if (iHashCode != -1833998801) {
            if (iHashCode != 32166346) {
                if (iHashCode == 1668381247 && type.equals(J)) {
                    C1(holder, item);
                } else {
                    holder.setText(R$id.tvContent, item.getContent());
                }
            } else if (type.equals(K)) {
                H1(holder, item);
            } else {
                holder.setText(R$id.tvContent, item.getContent());
            }
        } else if (type.equals(I)) {
            holder.setText(R$id.tvContent, item.getTitle());
        } else {
            holder.setText(R$id.tvContent, item.getContent());
        }
        I1(holder, item);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: E1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, MessageEntity item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        D1(holder, item);
        K1(holder, item);
    }

    public final float F1(Context context, float dpVal) {
        Intrinsics.h(context, "context");
        return TypedValue.applyDimension(1, dpVal, context.getApplicationContext().getResources().getDisplayMetrics());
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
