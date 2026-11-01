package com.transsion.usercenter.message.adapter;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$color;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.message.UserMessageType;
import com.transsion.usercenter.message.bean.MessageEntity;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0012\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/transsion/usercenter/message/adapter/b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/usercenter/message/bean/MessageEntity;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "layoutResId", "<init>", "(I)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/message/bean/MessageEntity;)V", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "D1", "(Ljava/lang/String;)Ljava/lang/String;", "C1", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class b extends BaseQuickAdapter implements i {
    public b() {
        this(0, 1, null);
    }

    public b(int i11) {
        super(i11, null, 2, null);
    }

    public /* synthetic */ b(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.item_room_message : i11);
    }

    private final void B1(BaseViewHolder holder, MessageEntity item) {
        String url;
        View view = holder.getView(R$id.iv_avatar);
        Intrinsics.f(view, "null cannot be cast to non-null type com.google.android.material.imageview.ShapeableImageView");
        holder.setText(R$id.tv_avatar, item.getNickname());
        int i11 = R$id.tv_date;
        rw.b.a aVar = rw.b.f74725a;
        holder.setText(i11, aVar.b(Long.parseLong(item.getCreatedAt())));
        f.a aVar2 = f.f61882a;
        aVar2.m(getContext()).g(item.getAvator()).d((ShapeableImageView) view);
        AppCompatTextView appCompatTextView = (AppCompatTextView) holder.getView(R$id.tv_content);
        String content = item.getContent();
        if (content == null || content.length() == 0) {
            appCompatTextView.setVisibility(8);
        } else {
            appCompatTextView.setText(item.getContent());
            appCompatTextView.setVisibility(0);
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.comment_cover);
        List<Image> commentImages = item.getCommentImages();
        String str = "";
        if (commentImages == null || !(!commentImages.isEmpty())) {
            shapeableImageView.setVisibility(8);
        } else {
            shapeableImageView.setVisibility(0);
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            f.b bVarM = aVar2.m(context);
            List<Image> commentImages2 = item.getCommentImages();
            Intrinsics.e(commentImages2);
            String url2 = commentImages2.get(0).getUrl();
            if (url2 == null) {
                url2 = "";
            }
            bVarM.g(url2).d(shapeableImageView);
        }
        holder.setText(R$id.tv_date, D1(item.getType()) + " " + aVar.b(Long.parseLong(item.getCreatedAt())));
        ShapeableImageView shapeableImageView2 = (ShapeableImageView) holder.getView(R$id.iv_comment);
        Cover image = item.getImage();
        String url3 = image != null ? image.getUrl() : null;
        if (url3 == null || url3.length() == 0) {
            shapeableImageView2.setVisibility(8);
        } else {
            f.b bVarM2 = aVar2.m(getContext());
            Cover image2 = item.getImage();
            if (image2 != null && (url = image2.getUrl()) != null) {
                str = url;
            }
            bVarM2.g(str).d(shapeableImageView2);
            shapeableImageView2.setVisibility(0);
        }
        holder.setVisible(R$id.view_red_blank, Intrinsics.c(item.getStatus(), "UNREAD"));
        if (Intrinsics.c(item.getStatus(), "UNREAD")) {
            holder.itemView.setBackgroundColor(androidx.core.content.b.getColor(getContext(), R$color.white_10));
        } else {
            holder.itemView.setBackgroundColor(0);
        }
    }

    private final String D1(String type) {
        if (Intrinsics.c(type, UserMessageType.LIKE.getValue())) {
            String string = getContext().getString(R$string.message_like_type);
            Intrinsics.g(string, "getString(...)");
            return string;
        }
        if (Intrinsics.c(type, UserMessageType.LIKE_COMMENT.getValue())) {
            String string2 = getContext().getString(R$string.message_like_comment_type);
            Intrinsics.g(string2, "getString(...)");
            return string2;
        }
        if (Intrinsics.c(type, UserMessageType.COMMENT.getValue())) {
            String string3 = getContext().getString(R$string.message_comment_type);
            Intrinsics.g(string3, "getString(...)");
            return string3;
        }
        if (!Intrinsics.c(type, UserMessageType.REPLY_COMMENT.getValue())) {
            return "";
        }
        String string4 = getContext().getString(R$string.message_reply_comment_type);
        Intrinsics.g(string4, "getString(...)");
        return string4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, MessageEntity item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        B1(holder, item);
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
