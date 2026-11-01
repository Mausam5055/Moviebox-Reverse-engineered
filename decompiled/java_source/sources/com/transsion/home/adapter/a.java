package com.transsion.home.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.CornerTextView;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.LayoutStyle;
import com.transsion.home.bean.MovieItem;
import com.transsion.home.p004enum.LayoutStyleEnum;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0012\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B1\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0016\u0010\u0015R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0017\u0010\f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lcom/transsion/home/adapter/a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/MovieItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "dataList", "Lhl/b;", "listExposureHelper", "Lcom/transsion/home/bean/LayoutStyle;", TtmlNode.TAG_STYLE, "", "rowCount", "<init>", "(Ljava/util/List;Lhl/b;Lcom/transsion/home/bean/LayoutStyle;I)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/MovieItem;)V", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "E1", "F", "Lhl/b;", "G", "Lcom/transsion/home/bean/LayoutStyle;", "D1", "()Lcom/transsion/home/bean/LayoutStyle;", "F1", "(Lcom/transsion/home/bean/LayoutStyle;)V", "H", "I", "C1", "()I", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class a extends BaseQuickAdapter implements i {
    public static final int I = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final hl.b listExposureHelper;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private LayoutStyle style;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final int rowCount;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(List<MovieItem> dataList, hl.b bVar, LayoutStyle layoutStyle, int i11) {
        super(R$layout.home_adapter_movie, dataList);
        Intrinsics.h(dataList, "dataList");
        this.listExposureHelper = bVar;
        this.style = layoutStyle;
        this.rowCount = i11;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        hl.b bVar = this.listExposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
            bVar.h((GridLayoutManager) layoutManager, bindingAdapterPosition, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:53:0x0159  */
    /* JADX WARN: Code duplicated, block: B:56:0x0168  */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, MovieItem item) {
        String url;
        String thumbnail;
        Integer requireMemberType;
        String memberIcon;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        int iA = a0.a(107.0f);
        int iA2 = a0.a(149.0f);
        int iA3 = a0.a(((this.rowCount - 1) * 8.0f) + 24.0f);
        int iE = y.e();
        int i11 = this.rowCount;
        int i12 = (iE - iA3) / i11;
        int i13 = (int) (i12 * ((iA2 * 1.0f) / iA));
        int iA4 = a0.a(((i11 - 1) * 8.0f) + 24.0f);
        a0.a(109.0f);
        a0.a(109.0f);
        int i14 = iE - iA4;
        int i15 = i14 / this.rowCount;
        int iA5 = a0.a(164.0f);
        int iA6 = a0.a(92.0f);
        int i16 = i14 / this.rowCount;
        int i17 = (int) (i16 * ((iA6 * 1.0f) / iA5));
        if (item.getNonAdDelegate() != null) {
            cy.b bVar = cy.b.f60940a;
            Context context = getContext();
            BiddingNativeManager nonAdDelegate = item.getNonAdDelegate();
            r rVarA = bVar.a(context, nonAdDelegate != null ? nonAdDelegate.getMSceneId() : null);
            NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) holder.getViewOrNull(R$id.nativeView);
            if (nativeWrapperAdView != null) {
                BiddingNativeManager nonAdDelegate2 = item.getNonAdDelegate();
                BiddingNativeManager nonAdDelegate3 = item.getNonAdDelegate();
                nativeWrapperAdView.bindNativeView(nonAdDelegate2, rVarA, nonAdDelegate3 != null ? nonAdDelegate3.n0() : null);
            }
            ((FrameLayout) holder.getView(R$id.nativeView)).setVisibility(0);
            ((Group) holder.getView(R$id.group)).setVisibility(8);
            return;
        }
        ((FrameLayout) holder.getView(R$id.nativeView)).setVisibility(8);
        ((Group) holder.getView(R$id.group)).setVisibility(0);
        ImageView imageView = (ShapeableImageView) holder.getView(R$id.iv_cover);
        LayoutStyle layoutStyle = this.style;
        if (layoutStyle == null) {
            Integer subjectType = item.getSubjectType();
            SubjectType subjectType2 = SubjectType.AUDIO;
            int value = subjectType2.getValue();
            if (subjectType == null || subjectType.intValue() != value) {
                Integer subjectType3 = item.getSubjectType();
                int value2 = SubjectType.MOVIE.getValue();
                if (subjectType3 == null || subjectType3.intValue() != value2) {
                    Integer subjectType4 = item.getSubjectType();
                    int value3 = SubjectType.VSHOW.getValue();
                    if (subjectType4 == null || subjectType4.intValue() != value3) {
                        Integer subjectType5 = item.getSubjectType();
                        int value4 = SubjectType.TV.getValue();
                        if (subjectType5 == null || subjectType5.intValue() != value4) {
                            Integer subjectType6 = item.getSubjectType();
                            int value5 = SubjectType.SHORT_TV.getValue();
                            if (subjectType6 == null || subjectType6.intValue() != value5) {
                                i13 = i17;
                                i12 = i16;
                            }
                        }
                    }
                }
            }
            Integer subjectType7 = item.getSubjectType();
            int value6 = subjectType2.getValue();
            if (subjectType7 != null && subjectType7.intValue() == value6) {
                i13 = i15;
                i12 = i13;
            }
        } else {
            String shape = layoutStyle != null ? layoutStyle.getShape() : null;
            if (Intrinsics.c(shape, LayoutStyleEnum.Horizontal.getValue())) {
                i13 = i17;
                i12 = i16;
            } else if (Intrinsics.c(shape, LayoutStyleEnum.Square.getValue())) {
                i13 = i15;
                i12 = i13;
            }
        }
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar2).height = i13;
        imageView.setLayoutParams(bVar2);
        ej.f.b bVarM = ej.f.f61882a.m(getContext());
        Cover cover = item.getCover();
        String str = "";
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        ej.f.b bVarC = bVarM.g(url).i(R$color.cl37).m(i12).c(i13);
        Cover cover2 = item.getCover();
        if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
            thumbnail = "";
        }
        bVarC.l(thumbnail).d(imageView);
        ImageView imageView2 = (ImageView) holder.getView(R$id.iv_vip_type);
        VipInfo vipInfo = item.getVipInfo();
        if (vipInfo == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
            imageView2.setVisibility(8);
        } else {
            imageView2.setVisibility(0);
            RequestManager requestManagerWith = Glide.with(getContext());
            VipInfo vipInfo2 = item.getVipInfo();
            if (vipInfo2 != null && (memberIcon = vipInfo2.getMemberIcon()) != null) {
                str = memberIcon;
            }
            Intrinsics.e(requestManagerWith.load2(str).placeholder(R$drawable.icon_subject_premium).into(imageView2));
        }
        holder.setText(R$id.tv_title, item.getTitle());
        holder.setText(R$id.tv_tabs, item.getGenre() + "•" + item.getCountryName());
        holder.setText(R$id.tv_score, item.getImdbRatingValue());
        ((CornerTextView) holder.getView(R$id.tv_tips)).setTextWithType(item.getCorner(), item.getSubjectType());
    }

    /* JADX INFO: renamed from: C1, reason: from getter */
    public final int getRowCount() {
        return this.rowCount;
    }

    /* JADX INFO: renamed from: D1, reason: from getter */
    public final LayoutStyle getStyle() {
        return this.style;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: E1, reason: merged with bridge method [inline-methods] */
    public void onViewRecycled(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewRecycled(holder);
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView == null || shapeableImageView.getContext() == null) {
            return;
        }
        Context context = shapeableImageView.getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity == null || !activity.isDestroyed()) {
            Context context2 = shapeableImageView.getContext();
            Activity activity2 = context2 instanceof Activity ? (Activity) context2 : null;
            if (activity2 == null || !activity2.isFinishing()) {
                Glide.with(shapeableImageView.getContext()).clear(shapeableImageView);
            }
        }
    }

    public final void F1(LayoutStyle layoutStyle) {
        this.style = layoutStyle;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
