package com.transsion.home.adapter.suboperate.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$drawable;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B3\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001eR\u0014\u0010!\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001eR\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010\u001e¨\u0006$"}, d2 = {"Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "tabId", "", "isHorizontal", "isTablet", "<init>", "(ILcom/transsion/home/bean/OperateItem;IZZ)V", RequestParameters.POSITION, "P", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "y0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "I", "H", "itemWidth", "itemHeight", "J", "descHeight", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class NewStyleRankContentAdapter extends BaseQuickAdapter {
    public static final int K = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final OperateItem operateItem;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final int itemWidth;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final int itemHeight;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final int descHeight;

    public NewStyleRankContentAdapter(int i11, OperateItem operateItem, int i12, boolean z10, boolean z11) {
        super(i11, null, 2, null);
        this.operateItem = operateItem;
        this.tabId = i12;
        int i13 = z10 ? 2 : z11 ? 4 : 3;
        float f11 = z10 ? 0.56f : 1.39f;
        int iA = a0.a(((((a0.b(RangesKt.i(y.e(), y.c())) - 12) - (i13 * 8)) - 24) * 1.0f) / i13);
        this.itemWidth = iA;
        this.itemHeight = (int) (iA * f11);
        this.descHeight = a0.a(27.0f);
    }

    public /* synthetic */ NewStyleRankContentAdapter(int i11, OperateItem operateItem, int i12, boolean z10, boolean z11, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? R$layout.home_item_new_style_rank_content : i11, operateItem, i12, z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, Subject item) {
        Integer requireMemberType;
        String memberIcon;
        String url;
        String thumbnail;
        String url2;
        String thumbnail2;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.main_op_movie_rank_image);
        if (shapeableImageView != null) {
            if (item.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new NewStyleRankContentAdapter$convert$1$1(item, shapeableImageView, null), 3, null);
            } else {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                Cover cover = item.getCover();
                if (cover == null || (url2 = cover.getUrl()) == null) {
                    url2 = "";
                }
                ej.f.b bVarG = bVarM.g(url2);
                Cover cover2 = item.getCover();
                if (cover2 == null || (thumbnail2 = cover2.getThumbnail()) == null) {
                    thumbnail2 = "";
                }
                bVarG.l(thumbnail2).i(R$mipmap.ic_img_placeholder).m(this.itemWidth).c(this.itemHeight + this.descHeight).d(shapeableImageView);
            }
            if (shapeableImageView.getLayoutParams().width != this.itemWidth || shapeableImageView.getLayoutParams().height != this.itemHeight + this.descHeight) {
                shapeableImageView.getLayoutParams().width = this.itemWidth;
                shapeableImageView.getLayoutParams().height = this.itemHeight + this.descHeight;
            }
        }
        ShapeableImageView shapeableImageView2 = (ShapeableImageView) holder.getViewOrNull(R$id.mainOpMovieRankImage);
        if (shapeableImageView2 != null) {
            if (item.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new NewStyleRankContentAdapter$convert$2$1(item, shapeableImageView2, null), 3, null);
            } else {
                ej.f.a aVar2 = ej.f.f61882a;
                Context context2 = shapeableImageView2.getContext();
                Intrinsics.g(context2, "getContext(...)");
                ej.f.b bVarM2 = aVar2.m(context2);
                Cover cover3 = item.getCover();
                if (cover3 == null || (url = cover3.getUrl()) == null) {
                    url = "";
                }
                ej.f.b bVarG2 = bVarM2.g(url);
                Cover cover4 = item.getCover();
                if (cover4 == null || (thumbnail = cover4.getThumbnail()) == null) {
                    thumbnail = "";
                }
                bVarG2.l(thumbnail).i(R$mipmap.ic_img_placeholder).m(this.itemWidth).c(this.itemHeight).d(shapeableImageView2);
            }
            if (shapeableImageView2.getLayoutParams().width != this.itemWidth || shapeableImageView2.getLayoutParams().height != this.itemHeight) {
                shapeableImageView2.getLayoutParams().width = this.itemWidth;
                shapeableImageView2.getLayoutParams().height = this.itemHeight;
            }
        }
        if (P(ak.k.e(getData(), item)) == 100) {
            return;
        }
        TextView textView = (TextView) holder.getViewOrNull(R$id.main_op_movie_rank_title);
        if (textView != null) {
            textView.setText(item.getTitle());
            textView.setMaxWidth(this.itemWidth);
        }
        ((TextView) holder.getView(R$id.tvRank)).setText(String.valueOf(holder.getBindingAdapterPosition() + 1));
        ImageView imageView = (ImageView) holder.getView(R$id.iv_vip_type);
        VipInfo vipInfo = item.getVipInfo();
        if (vipInfo == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
            RequestManager requestManagerWith = Glide.with(getContext());
            VipInfo vipInfo2 = item.getVipInfo();
            if (vipInfo2 == null || (memberIcon = vipInfo2.getMemberIcon()) == null) {
                memberIcon = "";
            }
            Intrinsics.e(requestManagerWith.load2(memberIcon).placeholder(R$drawable.icon_subject_premium).into(imageView));
        }
        TextView textView2 = (TextView) holder.getView(R$id.main_op_movie_rank_corner);
        String corner = item.getCorner();
        String str = corner != null ? corner : "";
        if (str.length() <= 0) {
            textView2.setVisibility(8);
        } else {
            textView2.setVisibility(0);
            textView2.setText(str);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int P(int position) {
        if (position == getItemCount() - 1) {
            return 100;
        }
        return super.P(position);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        if (viewType != 100) {
            BaseViewHolder baseViewHolderY0 = super.y0(parent, viewType);
            ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolderY0.getViewOrNull(R$id.mainOpMovieRankImage);
            if (shapeableImageView != null) {
                shapeableImageView.getLayoutParams().width = this.itemWidth;
                shapeableImageView.getLayoutParams().height = this.itemHeight;
            }
            return baseViewHolderY0;
        }
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_main_operation_movie_rank_more, parent, false);
        View viewFindViewById = viewInflate.findViewById(R$id.main_op_movie_rank_image);
        if (viewFindViewById != null) {
            viewFindViewById.getLayoutParams().width = this.itemWidth;
            viewFindViewById.getLayoutParams().height = this.itemHeight + this.descHeight;
        }
        View viewFindViewById2 = viewInflate.findViewById(R$id.main_op_movie_rank_more_mask);
        viewFindViewById2.getLayoutParams().width = this.itemWidth;
        viewFindViewById2.getLayoutParams().height = this.itemHeight + this.descHeight;
        Intrinsics.e(viewInflate);
        return new BaseViewHolder(viewInflate);
    }
}
