package com.transsion.postdetail.comment;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ/\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\t2\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J+\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010'\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001eR\u0018\u0010*\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010!R\u0018\u0010.\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010!R\u0018\u00100\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010)R\u0018\u00102\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010)R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105¨\u00067"}, d2 = {"Lcom/transsion/postdetail/comment/CommentHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsion/postdetail/comment/h0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Landroid/view/View;)V", "Landroid/widget/TextView;", "textView", "", "count", "", CampaignEx.JSON_KEY_AD_Q, "(Landroid/widget/TextView;I)V", "Landroid/content/Context;", "context", RequestParameters.POSITION, "", "Lcom/transsion/moviedetailapi/bean/Image;", "imageList", TtmlNode.TAG_P, "(Landroid/content/Context;ILjava/util/List;)V", "Ln6/a;", "info", "Lcom/transsion/postdetail/comment/g0;", "clickListener", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(ILn6/a;Lcom/transsion/postdetail/comment/g0;)V", "Landroid/widget/ImageView;", "a", "Landroid/widget/ImageView;", "mAvatarView", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/TextView;", "mUserNameTV", "Landroidx/appcompat/widget/AppCompatTextView;", "c", "Landroidx/appcompat/widget/AppCompatTextView;", "mCommentContentTV", "mLikeView", "e", "Landroid/view/View;", "mLikeClickView", "f", "mLikeCountTV", "g", "mCommentDataTV", "h", "mReplyView", "i", "mTopLine", "Lcom/google/android/material/imageview/ShapeableImageView;", "j", "Lcom/google/android/material/imageview/ShapeableImageView;", "mCommentCover", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class CommentHolder extends BaseViewHolder implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private ImageView mAvatarView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TextView mUserNameTV;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private AppCompatTextView mCommentContentTV;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ImageView mLikeView;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private View mLikeClickView;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private TextView mLikeCountTV;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private TextView mCommentDataTV;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private View mReplyView;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private View mTopLine;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private ShapeableImageView mCommentCover;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentHolder(View view) {
        super(view);
        Intrinsics.h(view, "view");
        this.mAvatarView = (ImageView) view.findViewById(R$id.item_comment_user_avatar);
        this.mUserNameTV = (TextView) view.findViewById(R$id.item_comment_user_name);
        this.mCommentContentTV = (AppCompatTextView) view.findViewById(R$id.item_comment_content);
        this.mLikeView = (ImageView) view.findViewById(R$id.item_comment_like_icon);
        this.mLikeCountTV = (TextView) view.findViewById(R$id.item_comment_like_count);
        this.mCommentDataTV = (TextView) view.findViewById(R$id.item_comment_data);
        this.mReplyView = view.findViewById(R$id.item_comment_reply);
        this.mLikeClickView = view.findViewById(R$id.item_comment_like_click_bg);
        this.mTopLine = view.findViewById(R$id.item_comment_top_line);
        this.mCommentCover = (ShapeableImageView) view.findViewById(R$id.comment_cover);
        ImageView imageView = this.mAvatarView;
        if (imageView != null) {
            imageView.setClipToOutline(true);
            imageView.setOutlineProvider(new com.transsion.baseui.widget.i(com.blankj.utilcode.util.a0.a(16.0f)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(n6.a aVar, CommentHolder commentHolder, View view) {
        ArrayList arrayList = new ArrayList();
        List<Cover> imageList = ((CommentBean) aVar).getImageList();
        if (imageList != null) {
            for (Cover cover : imageList) {
                Image image = new Image(null, null, null, null, null, null, null, null, null, 0.0f, 0.0f, 0, 0, 0, 16383, null);
                image.setUrl(cover != null ? cover.getUrl() : null);
                arrayList.add(image);
            }
        }
        Context context = commentHolder.itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        commentHolder.p(context, 1, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(g0 g0Var, n6.a aVar, View view) {
        if (g0Var != null) {
            g0Var.Q((CommentBean) aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(CommentHolder commentHolder, n6.a aVar, g0 g0Var, View view) {
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.base_net_err);
            return;
        }
        ImageView imageView = commentHolder.mLikeView;
        if (imageView != null) {
            if (imageView.isEnabled()) {
                imageView.setEnabled(false);
                TextView textView = commentHolder.mLikeCountTV;
                if (textView != null) {
                    textView.setEnabled(false);
                }
                CommentBean commentBean = (CommentBean) aVar;
                commentBean.setLikeStatu(Boolean.FALSE);
                if (commentBean.getLikeCnt() > 0) {
                    commentBean.setLikeCnt(commentBean.getLikeCnt() - 1);
                }
            } else {
                imageView.setEnabled(true);
                TextView textView2 = commentHolder.mLikeCountTV;
                if (textView2 != null) {
                    textView2.setEnabled(true);
                }
                CommentBean commentBean2 = (CommentBean) aVar;
                commentBean2.setLikeStatu(Boolean.TRUE);
                commentBean2.setLikeCnt(commentBean2.getLikeCnt() + 1);
            }
        }
        CommentBean commentBean3 = (CommentBean) aVar;
        commentHolder.q(commentHolder.mLikeCountTV, commentBean3.getLikeCnt());
        if (g0Var != null) {
            g0Var.z(commentBean3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(g0 g0Var, n6.a aVar, View view) {
        if (g0Var != null) {
            g0Var.G((CommentBean) aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o(g0 g0Var, n6.a aVar, View view) {
        if (g0Var == null) {
            return true;
        }
        g0Var.P((CommentBean) aVar);
        return true;
    }

    private final void p(Context context, int position, List imageList) {
        Intent intent = new Intent(context, (Class<?>) GifImagePreviewActivity.class);
        Intrinsics.f(imageList, "null cannot be cast to non-null type java.io.Serializable");
        intent.putExtra(GifImagePreviewActivity.IMAGE_LIST, (Serializable) imageList);
        intent.putExtra("CURRENT_ITEM", position);
        context.startActivity(intent);
    }

    private final void q(TextView textView, int count) {
        if (textView != null) {
            textView.setText(count > 0 ? t.f48778a.a(count) : "");
        }
    }

    @Override // com.transsion.postdetail.comment.h0
    public void d(int position, final n6.a info, final g0 clickListener) {
        String url;
        if (info instanceof CommentBean) {
            CommentBean commentBean = (CommentBean) info;
            ImageView imageView = this.mAvatarView;
            if (imageView != null) {
                ej.f.a aVar = ej.f.f61882a;
                Context context = imageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                String avatarUrl = commentBean.getAvatarUrl();
                if (avatarUrl == null) {
                    avatarUrl = "";
                }
                bVarM.g(avatarUrl).d(imageView);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.o
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CommentHolder.l(clickListener, info, view);
                    }
                });
            }
            List<Cover> imageList = commentBean.getImageList();
            if (imageList == null || !(!imageList.isEmpty())) {
                ShapeableImageView shapeableImageView = this.mCommentCover;
                if (shapeableImageView != null) {
                    shapeableImageView.setVisibility(8);
                }
            } else {
                ShapeableImageView shapeableImageView2 = this.mCommentCover;
                if (shapeableImageView2 != null) {
                    shapeableImageView2.setVisibility(0);
                    ej.f.a aVar2 = ej.f.f61882a;
                    Context context2 = shapeableImageView2.getContext();
                    Intrinsics.g(context2, "getContext(...)");
                    ej.f.b bVarM2 = aVar2.m(context2);
                    List<Cover> imageList2 = commentBean.getImageList();
                    Intrinsics.e(imageList2);
                    Cover cover = imageList2.get(0);
                    if (cover == null || (url = cover.getUrl()) == null) {
                        url = "";
                    }
                    bVarM2.g(url).d(shapeableImageView2);
                }
            }
            TextView textView = this.mUserNameTV;
            if (textView != null) {
                String nickName = commentBean.getNickName();
                textView.setText(nickName != null ? nickName : "");
            }
            AppCompatTextView appCompatTextView = this.mCommentContentTV;
            if (appCompatTextView != null) {
                com.transsion.baseui.util.l.e(appCompatTextView, commentBean.getContent(), null);
            }
            ImageView imageView2 = this.mLikeView;
            if (imageView2 != null) {
                Boolean likeStatu = commentBean.getLikeStatu();
                imageView2.setEnabled(likeStatu != null ? likeStatu.booleanValue() : false);
            }
            TextView textView2 = this.mLikeCountTV;
            if (textView2 != null) {
                Boolean likeStatu2 = commentBean.getLikeStatu();
                textView2.setEnabled(likeStatu2 != null ? likeStatu2.booleanValue() : false);
            }
            q(this.mLikeCountTV, commentBean.getLikeCnt());
            TextView textView3 = this.mCommentDataTV;
            if (textView3 != null) {
                t tVar = t.f48778a;
                Context context3 = this.itemView.getContext();
                Intrinsics.g(context3, "getContext(...)");
                Long createdAt = commentBean.getCreatedAt();
                textView3.setText(tVar.c(context3, createdAt != null ? createdAt.longValue() : 0L));
            }
            View view = this.mLikeClickView;
            if (view != null) {
                view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.p
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        CommentHolder.m(this.f48769a, info, clickListener, view2);
                    }
                });
            }
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    CommentHolder.n(clickListener, info, view2);
                }
            });
            this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.transsion.postdetail.comment.r
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    return CommentHolder.o(clickListener, info, view2);
                }
            });
            ShapeableImageView shapeableImageView3 = this.mCommentCover;
            if (shapeableImageView3 != null) {
                shapeableImageView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.s
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        CommentHolder.k(info, this, view2);
                    }
                });
            }
        }
    }
}
