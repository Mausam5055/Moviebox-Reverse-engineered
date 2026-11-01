package com.transsion.home.adapter.trending.adapter;

import ak.k;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
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
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import il.b;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import rl.c;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B;\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\n\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010!R\u0014\u0010$\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010!¨\u0006%"}, d2 = {"Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "", "isSubTab", "tabId", "isHorizontal", "isTablet", "<init>", "(ILcom/transsion/home/bean/OperateItem;ZIZZ)V", WebConstants.FIELD_ITEM, "pos", "", "C1", "(Lcom/transsion/moviedetailapi/bean/Subject;I)V", "Landroid/view/ViewGroup;", "parent", "viewType", "y0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "Z", "H", "I", "itemWidth", "J", "itemHeight", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class OpMovieRankAdapter extends BaseQuickAdapter {
    public static final int K = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final OperateItem operateItem;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final boolean isSubTab;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final int itemWidth;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final int itemHeight;

    public OpMovieRankAdapter(int i11, OperateItem operateItem, boolean z10, int i12, boolean z11, boolean z12) {
        super(i11, null, 2, null);
        this.operateItem = operateItem;
        this.isSubTab = z10;
        this.tabId = i12;
        int i13 = z11 ? 2 : z12 ? 4 : 3;
        float f11 = z11 ? 0.56f : 1.39f;
        int iA = a0.a(((((a0.b(RangesKt.i(y.e(), y.c())) - 12) - (i13 * 8)) - 24) * 1.0f) / i13);
        this.itemWidth = iA;
        this.itemHeight = (int) (iA * f11);
    }

    public /* synthetic */ OpMovieRankAdapter(int i11, OperateItem operateItem, boolean z10, int i12, boolean z11, boolean z12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? R$layout.item_main_operation_movie_rank : i11, operateItem, z10, i12, z11, z12);
    }

    private final void C1(Subject item, int pos) {
        HashMap map = new HashMap();
        map.put("event_type", "browse_rank_item");
        map.put("sequence", String.valueOf(pos));
        map.put("tabId", String.valueOf(this.tabId));
        OperateItem operateItem = this.operateItem;
        if (operateItem != null) {
            b.a(operateItem, map);
        }
        b.e(item, map);
        com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.tabId), map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, Subject item) {
        Integer requireMemberType;
        String memberIcon;
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        int iE = k.e(getData(), item);
        z(holder, getItemViewType(iE));
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.main_op_movie_rank_image);
        String str = "";
        if (shapeableImageView != null) {
            if (item.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new OpMovieRankAdapter$convert$1$1(item, shapeableImageView, null), 3, null);
            } else {
                f.a aVar = f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                f.b bVarM = aVar.m(context);
                Cover cover = item.getCover();
                if (cover == null || (url = cover.getUrl()) == null) {
                    url = "";
                }
                f.b bVarG = bVarM.g(url);
                Cover cover2 = item.getCover();
                if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                    thumbnail = "";
                }
                bVarG.l(thumbnail).i(R$mipmap.ic_img_placeholder).m(this.itemWidth).c(this.itemHeight).d(shapeableImageView);
            }
            if (shapeableImageView.getLayoutParams().width != this.itemWidth || shapeableImageView.getLayoutParams().height != this.itemHeight) {
                shapeableImageView.getLayoutParams().width = this.itemWidth;
                shapeableImageView.getLayoutParams().height = this.itemHeight;
            }
        }
        if (P(iE) == 100) {
            return;
        }
        TextView textView = (TextView) holder.getViewOrNull(R$id.main_op_movie_rank_title);
        if (textView != null) {
            textView.setText(item.getTitle());
            textView.setMaxWidth(this.itemWidth);
        }
        holder.setText(R$id.main_op_movie_rank_corner, item.getCorner());
        ImageView imageView = (ImageView) holder.getView(R$id.iv_vip_type);
        VipInfo vipInfo = item.getVipInfo();
        if (vipInfo == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
            RequestManager requestManagerWith = Glide.with(getContext());
            VipInfo vipInfo2 = item.getVipInfo();
            if (vipInfo2 != null && (memberIcon = vipInfo2.getMemberIcon()) != null) {
                str = memberIcon;
            }
            Intrinsics.e(requestManagerWith.load2(str).placeholder(R$drawable.icon_subject_premium).into(imageView));
        }
        if (this.isSubTab) {
            C1(item, iE);
        } else {
            c.f74547a.g(item, iE, this.operateItem);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        if (viewType != 100) {
            BaseViewHolder baseViewHolderY0 = super.y0(parent, viewType);
            ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolderY0.getViewOrNull(R$id.main_op_movie_rank_image);
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
            viewFindViewById.getLayoutParams().height = this.itemHeight;
        }
        View viewFindViewById2 = viewInflate.findViewById(R$id.main_op_movie_rank_more_mask);
        viewFindViewById2.getLayoutParams().width = this.itemWidth;
        viewFindViewById2.getLayoutParams().height = this.itemHeight;
        Intrinsics.e(viewInflate);
        return new BaseViewHolder(viewInflate);
    }
}
