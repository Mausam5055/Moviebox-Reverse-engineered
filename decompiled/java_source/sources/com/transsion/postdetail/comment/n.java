package com.transsion.postdetail.comment;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.bean.CommentListBean;
import com.transsion.postdetail.bean.Pager;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0013\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b \u0010\bJ\u0019\u0010\"\u001a\u00020\u001f2\b\u0010!\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\"\u0010#J\u001f\u0010&\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u0002H\u0014¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020\u0003H\u0016¢\u0006\u0004\b(\u0010)R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R3\u00103\u001a\u001e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020\u00130,j\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020\u0013`.8\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102¨\u00064"}, d2 = {"Lcom/transsion/postdetail/comment/n;", "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;", "Ln6/a;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "Lcom/transsion/postdetail/comment/g0;", "itemClickListener", "<init>", "(Lcom/transsion/postdetail/comment/g0;)V", "Lcom/transsion/postdetail/bean/CommentListBean;", "commentListBean", "", "F1", "(Lcom/transsion/postdetail/bean/CommentListBean;)Ljava/util/List;", "", "subCommentSize", "perPage", "H1", "(II)I", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "commentBean", "nextPage", "Lqo/a;", "E1", "(Lcom/transsion/moviedetailapi/bean/CommentBean;I)Lqo/a;", "Landroid/view/ViewGroup;", "parent", "viewType", "z0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "J1", "data", "K1", "(Lcom/transsion/postdetail/bean/CommentListBean;)V", "holder", WebConstants.FIELD_ITEM, "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ln6/a;)V", "I1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lcom/transsion/postdetail/comment/g0;", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "H", "Ljava/util/HashMap;", "G1", "()Ljava/util/HashMap;", "mCommentMap", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class n extends BaseMultiItemQuickAdapter<n6.a, BaseViewHolder> implements r6.i {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private g0 itemClickListener;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final HashMap<String, CommentBean> mCommentMap;

    /* JADX WARN: Multi-variable type inference failed */
    public n() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public n(g0 g0Var) {
        super(null, 1, null);
        this.itemClickListener = g0Var;
        this.mCommentMap = new HashMap<>();
    }

    public /* synthetic */ n(g0 g0Var, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : g0Var);
    }

    private final qo.a E1(CommentBean commentBean, int nextPage) {
        Long createdAt;
        List<CommentBean> subComments = commentBean.getSubComments();
        if (subComments == null) {
            return null;
        }
        String commentId = commentBean.getCommentId();
        int subCommentCnt = commentBean.getSubCommentCnt();
        int size = subComments.size();
        CommentBean commentBean2 = subComments.get(subComments.size() - 1);
        return new qo.a(commentId, subCommentCnt, size, false, (commentBean2 == null || (createdAt = commentBean2.getCreatedAt()) == null) ? 0L : createdAt.longValue(), commentBean.getTopicId(), nextPage);
    }

    private final List<n6.a> F1(CommentListBean commentListBean) {
        List<CommentBean> commentList;
        Integer perPage;
        ArrayList arrayList = new ArrayList();
        this.mCommentMap.clear();
        if (commentListBean != null && (commentList = commentListBean.getCommentList()) != null) {
            for (CommentBean commentBean : commentList) {
                if (!this.mCommentMap.containsKey(commentBean.getCommentId())) {
                    arrayList.add(commentBean);
                    HashMap<String, CommentBean> map = this.mCommentMap;
                    String commentId = commentBean.getCommentId();
                    Intrinsics.e(commentId);
                    map.put(commentId, commentBean);
                    List<CommentBean> subComments = commentBean.getSubComments();
                    if (subComments != null) {
                        for (CommentBean commentBean2 : subComments) {
                            if (!this.mCommentMap.containsKey(commentBean2 != null ? commentBean2.getCommentId() : null)) {
                                HashMap<String, CommentBean> map2 = this.mCommentMap;
                                String commentId2 = commentBean2 != null ? commentBean2.getCommentId() : null;
                                Intrinsics.e(commentId2);
                                map2.put(commentId2, commentBean2);
                                arrayList.add(commentBean2);
                            }
                        }
                    }
                    List<CommentBean> subComments2 = commentBean.getSubComments();
                    int size = subComments2 != null ? subComments2.size() : 0;
                    List<CommentBean> subComments3 = commentBean.getSubComments();
                    if (subComments3 != null && (!subComments3.isEmpty()) && commentBean.getSubCommentCnt() > size) {
                        Pager pager = commentListBean.getPager();
                        qo.a aVarE1 = E1(commentBean, H1(size, (pager == null || (perPage = pager.getPerPage()) == null) ? 10 : perPage.intValue()));
                        if (aVarE1 != null) {
                            arrayList.add(aVarE1);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private final int H1(int subCommentSize, int perPage) {
        return ((subCommentSize - 3) / perPage) + 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, n6.a item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (holder instanceof h0) {
            ((h0) holder).d(g0(item), item, this.itemClickListener);
        }
    }

    public final HashMap<String, CommentBean> G1() {
        return this.mCommentMap;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: I1, reason: merged with bridge method [inline-methods] */
    public void onViewRecycled(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewRecycled(holder);
        ImageView imageView = ((holder instanceof CommentHolder) || (holder instanceof CommentSubHolder) || (holder instanceof HotCommentHolder)) ? (ImageView) holder.itemView.findViewById(R$id.item_comment_user_avatar) : null;
        if (imageView != null) {
            Context context = getContext();
            Activity activity = context instanceof Activity ? (Activity) context : null;
            if (activity == null || !activity.isDestroyed()) {
                Context context2 = getContext();
                Activity activity2 = context2 instanceof Activity ? (Activity) context2 : null;
                if (activity2 == null || !activity2.isFinishing()) {
                    Glide.with(imageView).clear(imageView);
                }
            }
        }
    }

    public final void J1(g0 listener) {
        this.itemClickListener = listener;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void K1(CommentListBean data) {
        n1(F1(data));
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: z0 */
    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        BaseViewHolder commentHolder;
        Intrinsics.h(parent, "parent");
        if (viewType == 0) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_comment, parent, false);
            Intrinsics.e(viewInflate);
            commentHolder = new CommentHolder(viewInflate);
        } else if (viewType == 1) {
            View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_comment_sub, parent, false);
            Intrinsics.e(viewInflate2);
            commentHolder = new CommentSubHolder(viewInflate2);
        } else if (viewType == 2) {
            View viewInflate3 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_comment_sub_more, parent, false);
            Intrinsics.e(viewInflate3);
            commentHolder = new CommentSubMoreHolder(viewInflate3);
        } else {
            if (viewType != 4) {
                return super.onCreateViewHolder(parent, viewType);
            }
            View viewInflate4 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_comment_hot, parent, false);
            Intrinsics.e(viewInflate4);
            commentHolder = new HotCommentHolder(viewInflate4);
        }
        return commentHolder;
    }
}
