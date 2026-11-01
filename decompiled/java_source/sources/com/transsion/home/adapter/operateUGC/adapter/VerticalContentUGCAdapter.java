package com.transsion.home.adapter.operateUGC.adapter;

import ak.k;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLConstraintLayout;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.web.api.WebConstants;
import com.transsion.wrapperad.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.k0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\"B#\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u001f\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001eR\u0014\u0010!\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001e¨\u0006#"}, d2 = {"Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "", "tabId", "layoutResId", "<init>", "(Lcom/transsion/home/bean/OperateItem;II)V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", WebConstants.FIELD_ITEM, "pos", "", "G1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V", "F1", "Landroid/view/ViewGroup;", "parent", "viewType", "Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;", "E1", "(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;", "holder", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "I", "H", "imageWidth", "imageHeight", "VerticalContentItemVH", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class VerticalContentUGCAdapter extends BaseQuickAdapter {
    public static final int J = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final OperateItem operateItem;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final int imageWidth;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final int imageHeight;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lgl/k0;", "viewBinding", "<init>", "(Lgl/k0;)V", "a", "Lgl/k0;", "f", "()Lgl/k0;", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class VerticalContentItemVH extends BaseViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final k0 viewBinding;

        /* JADX WARN: Illegal instructions before constructor call */
        public VerticalContentItemVH(k0 viewBinding) {
            Intrinsics.h(viewBinding, "viewBinding");
            BLConstraintLayout root = viewBinding.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            super(root);
            this.viewBinding = viewBinding;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final k0 getViewBinding() {
            return this.viewBinding;
        }
    }

    public VerticalContentUGCAdapter(OperateItem operateItem, int i11, int i12) {
        super(i12, null, 2, null);
        this.operateItem = operateItem;
        this.tabId = i11;
        int iE = (y.e() - dk.a.b(40)) / 3;
        this.imageWidth = iE;
        this.imageHeight = (iE * 150) / 107;
    }

    public /* synthetic */ VerticalContentUGCAdapter(OperateItem operateItem, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(operateItem, i11, (i13 & 4) != 0 ? R$layout.item_ugc_vertical_content : i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(UGCVideo uGCVideo, VerticalContentUGCAdapter verticalContentUGCAdapter, int i11, View view) {
        Integer numValueOf = Integer.valueOf(verticalContentUGCAdapter.tabId);
        OperateItem operateItem = verticalContentUGCAdapter.operateItem;
        ov.c.h(uGCVideo, numValueOf, operateItem != null ? operateItem.getOpId() : null);
        verticalContentUGCAdapter.F1(uGCVideo, i11);
    }

    private final void F1(UGCVideo item, int pos) {
        hl.d.a.g(hl.d.f64525c, HomeTabId.UGC_Trending.getValue(), pos, this.operateItem, item, null, 16, null);
    }

    private final void G1(UGCVideo item, int pos) {
        hl.d.a.e(hl.d.f64525c, HomeTabId.UGC_Trending.getValue(), pos, this.operateItem, item, null, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, UGCContent item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        VerticalContentItemVH verticalContentItemVH = (VerticalContentItemVH) holder;
        final int iE = k.e(getData(), item);
        z(holder, getItemViewType(iE));
        final UGCVideo video = item.getVideo();
        if (video == null) {
            return;
        }
        ShapeableImageView shapeableImageView = verticalContentItemVH.getViewBinding().f63760b;
        if (video.getBuiltIn()) {
            kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new VerticalContentUGCAdapter$convert$1$1(video, shapeableImageView, null), 3, null);
        } else {
            ej.f.a aVar = ej.f.f61882a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            Cover coverVertical = video.getCoverVertical();
            String str = "";
            if (coverVertical == null || (url = coverVertical.getUrl()) == null) {
                Cover cover = video.getCover();
                url = cover != null ? cover.getUrl() : null;
                if (url == null) {
                    url = "";
                }
            }
            ej.f.b bVarG = bVarM.g(url);
            Cover coverVertical2 = video.getCoverVertical();
            if (coverVertical2 != null && (thumbnail = coverVertical2.getThumbnail()) != null) {
                str = thumbnail;
            }
            ej.f.b bVarM2 = bVarG.l(str).i(R$color.module_01).m(this.imageWidth);
            Intrinsics.e(shapeableImageView);
            bVarM2.d(shapeableImageView);
        }
        verticalContentItemVH.getViewBinding().f63762d.setText(video.getTimeOrCount(getContext()));
        ImageView ivTypeIcon = verticalContentItemVH.getViewBinding().f63761c;
        Intrinsics.g(ivTypeIcon, "ivTypeIcon");
        UGCVideoTypeKt.i(ivTypeIcon, video, null, 4, null);
        verticalContentItemVH.getViewBinding().f63763e.setText(video.getTitle());
        G1(video, iE);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.adapter.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerticalContentUGCAdapter.D1(video, this, iE, view);
            }
        });
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: E1, reason: merged with bridge method [inline-methods] */
    public VerticalContentItemVH onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        k0 k0VarC = k0.c(LayoutInflater.from(getContext()), parent, false);
        Intrinsics.g(k0VarC, "inflate(...)");
        ShapeableImageView ivCover = k0VarC.f63760b;
        Intrinsics.g(ivCover, "ivCover");
        ViewGroup.LayoutParams layoutParams = ivCover.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        layoutParams.height = this.imageHeight;
        ivCover.setLayoutParams(layoutParams);
        return new VerticalContentItemVH(k0VarC);
    }
}
