package com.transsion.postdetail.comment;

import android.content.Context;
import android.content.Intent;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.widget.R$color;
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
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u0012\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J/\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000f2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ+\u0010 \u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010(\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010*\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010$R\u0018\u0010.\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010'R\u0018\u00104\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010'R\u0018\u00106\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010'R\u0018\u00108\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u0010-R\u0018\u0010;\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010:¨\u0006<"}, d2 = {"Lcom/transsion/postdetail/comment/CommentSubHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsion/postdetail/comment/h0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Landroid/view/View;)V", "", MimeTypes.BASE_TYPE_TEXT, "target", "Landroid/text/SpannableString;", CampaignEx.JSON_KEY_AD_K, "(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;", "Landroid/widget/TextView;", "textView", "", "count", "", CampaignEx.JSON_KEY_AD_R, "(Landroid/widget/TextView;I)V", "Landroid/content/Context;", "context", RequestParameters.POSITION, "", "Lcom/transsion/moviedetailapi/bean/Image;", "imageList", CampaignEx.JSON_KEY_AD_Q, "(Landroid/content/Context;ILjava/util/List;)V", "Ln6/a;", "info", "Lcom/transsion/postdetail/comment/g0;", "clickListener", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(ILn6/a;Lcom/transsion/postdetail/comment/g0;)V", "Landroid/widget/ImageView;", "a", "Landroid/widget/ImageView;", "mAvatarView", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/TextView;", "mUserNameTV", "c", "mCommentContentTV", "mLikeView", "e", "Landroid/view/View;", "mLikeClickView", "f", "mReplyArrowIv", "g", "mReplyUserNameTv", "h", "mLikeCountTV", "i", "mCommentDataTV", "j", "mReplyView", "Lcom/google/android/material/imageview/ShapeableImageView;", "Lcom/google/android/material/imageview/ShapeableImageView;", "mSubCommentCover", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class CommentSubHolder extends BaseViewHolder implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private ImageView mAvatarView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TextView mUserNameTV;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private TextView mCommentContentTV;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ImageView mLikeView;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private View mLikeClickView;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private View mReplyArrowIv;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private TextView mReplyUserNameTv;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private TextView mLikeCountTV;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private TextView mCommentDataTV;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private View mReplyView;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private ShapeableImageView mSubCommentCover;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentSubHolder(View view) {
        super(view);
        Intrinsics.h(view, "view");
        this.mAvatarView = (ImageView) view.findViewById(R$id.item_comment_sub_user_avatar);
        this.mUserNameTV = (TextView) view.findViewById(R$id.item_comment_sub_user_name);
        this.mCommentContentTV = (TextView) view.findViewById(R$id.item_comment_sub_content);
        this.mLikeView = (ImageView) view.findViewById(R$id.item_comment_sub_like_icon);
        this.mLikeCountTV = (TextView) view.findViewById(R$id.item_comment_sub_like_count);
        this.mCommentDataTV = (TextView) view.findViewById(R$id.item_comment_sub_data);
        this.mReplyView = view.findViewById(R$id.item_comment_sub_reply);
        this.mReplyArrowIv = view.findViewById(R$id.iv_comment_reply);
        this.mReplyUserNameTv = (TextView) view.findViewById(R$id.tv_comment_sub_reply_user_name);
        this.mLikeClickView = view.findViewById(R$id.item_comment_sub_like_click_bg);
        this.mSubCommentCover = (ShapeableImageView) view.findViewById(R$id.sub_comment_cover);
        ImageView imageView = this.mAvatarView;
        if (imageView != null) {
            imageView.setClipToOutline(true);
            imageView.setOutlineProvider(new com.transsion.baseui.widget.i(com.blankj.utilcode.util.a0.a(10.0f)));
        }
    }

    private final SpannableString k(String text, String target) {
        int iO0 = StringsKt.o0(text, target, 0, false, 6, null);
        SpannableString spannableString = new SpannableString(text);
        if (iO0 >= 0) {
            spannableString.setSpan(new ForegroundColorSpan(Utils.a().getResources().getColor(R$color.white_60)), iO0, target.length() + iO0, 33);
        }
        return spannableString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(n6.a aVar, CommentSubHolder commentSubHolder, View view) {
        ArrayList arrayList = new ArrayList();
        List<Cover> imageList = ((CommentBean) aVar).getImageList();
        if (imageList != null) {
            for (Cover cover : imageList) {
                Image image = new Image(null, null, null, null, null, null, null, null, null, 0.0f, 0.0f, 0, 0, 0, 16383, null);
                image.setUrl(cover != null ? cover.getUrl() : null);
                arrayList.add(image);
            }
        }
        Context context = commentSubHolder.itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        commentSubHolder.q(context, 1, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(g0 g0Var, n6.a aVar, View view) {
        if (g0Var != null) {
            g0Var.Q((CommentBean) aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(CommentSubHolder commentSubHolder, g0 g0Var, n6.a aVar, View view) {
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.base_net_err);
            return;
        }
        ImageView imageView = commentSubHolder.mLikeView;
        if (imageView != null) {
            if (imageView.isEnabled()) {
                imageView.setEnabled(false);
                TextView textView = commentSubHolder.mLikeCountTV;
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
                CommentBean commentBean2 = (CommentBean) aVar;
                commentBean2.setLikeStatu(Boolean.TRUE);
                commentBean2.setLikeCnt(commentBean2.getLikeCnt() + 1);
                TextView textView2 = commentSubHolder.mLikeCountTV;
                if (textView2 != null) {
                    textView2.setEnabled(true);
                }
            }
            commentSubHolder.r(commentSubHolder.mLikeCountTV, ((CommentBean) aVar).getLikeCnt());
        }
        if (g0Var != null) {
            g0Var.z((CommentBean) aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(g0 g0Var, n6.a aVar, View view) {
        if (g0Var != null) {
            g0Var.G((CommentBean) aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean p(g0 g0Var, n6.a aVar, View view) {
        if (g0Var == null) {
            return true;
        }
        g0Var.P((CommentBean) aVar);
        return true;
    }

    private final void q(Context context, int position, List imageList) {
        Intent intent = new Intent(context, (Class<?>) GifImagePreviewActivity.class);
        Intrinsics.f(imageList, "null cannot be cast to non-null type java.io.Serializable");
        intent.putExtra(GifImagePreviewActivity.IMAGE_LIST, (Serializable) imageList);
        intent.putExtra("CURRENT_ITEM", position);
        context.startActivity(intent);
    }

    private final void r(TextView textView, int count) {
        if (textView != null) {
            textView.setText(count > 0 ? t.f48778a.a(count) : "");
        }
    }

    @Override // com.transsion.postdetail.comment.h0
    public void d(int position, final n6.a info, final g0 clickListener) {
        String replyedNickName;
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
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.v
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CommentSubHolder.m(clickListener, info, view);
                    }
                });
            }
            List<Cover> imageList = commentBean.getImageList();
            if (imageList == null || !(!imageList.isEmpty())) {
                ShapeableImageView shapeableImageView = this.mSubCommentCover;
                if (shapeableImageView != null) {
                    shapeableImageView.setVisibility(8);
                }
            } else {
                ShapeableImageView shapeableImageView2 = this.mSubCommentCover;
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
                if (nickName == null) {
                    nickName = "";
                }
                textView.setText(nickName);
            }
            TextView textView2 = this.mCommentContentTV;
            if (textView2 != null) {
                com.transsion.baseui.util.l.e(textView2, commentBean.getContent(), null);
                if (commentBean.getRootCommentId() == null || Intrinsics.c(commentBean.getRootCommentId(), commentBean.getReplyedCommentId()) || (replyedNickName = commentBean.getReplyedNickName()) == null || replyedNickName.length() == 0 || Intrinsics.c(commentBean.getReplyedCommentId(), "0")) {
                    textView2.setText(commentBean.getContent());
                } else {
                    String str = textView2.getContext().getString(R$string.comment_reply) + " " + commentBean.getReplyedNickName() + " " + commentBean.getContent();
                    String replyedNickName2 = commentBean.getReplyedNickName();
                    textView2.setText(k(str, replyedNickName2 != null ? replyedNickName2 : ""));
                }
            }
            r(this.mLikeCountTV, commentBean.getLikeCnt());
            ImageView imageView2 = this.mLikeView;
            if (imageView2 != null) {
                Boolean likeStatu = commentBean.getLikeStatu();
                imageView2.setEnabled(likeStatu != null ? likeStatu.booleanValue() : false);
            }
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
                view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.w
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        CommentSubHolder.n(this.f48798a, clickListener, info, view2);
                    }
                });
            }
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    CommentSubHolder.o(clickListener, info, view2);
                }
            });
            this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.transsion.postdetail.comment.y
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    return CommentSubHolder.p(clickListener, info, view2);
                }
            });
            ShapeableImageView shapeableImageView3 = this.mSubCommentCover;
            if (shapeableImageView3 != null) {
                shapeableImageView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.z
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        CommentSubHolder.l(info, this, view2);
                    }
                });
            }
        }
    }
}
