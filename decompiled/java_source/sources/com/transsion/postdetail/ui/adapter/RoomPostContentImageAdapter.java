package com.transsion.postdetail.ui.adapter;

import ab.n;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.noober.background.drawable.DrawableCreator;
import com.tn.lib.widget.R$color;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import com.transsion.postdetail.R$dimen;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B3\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010\n\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010&R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010*\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010\"R\u0014\u0010,\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010\"R\u0014\u0010.\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010\"¨\u0006/"}, d2 = {"Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/Image;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "spanCount", "", "isTablet", "", "pageName", "pageFrom", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "<init>", "(IZLjava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, RequestParameters.POSITION, "", "imageList", "", "G1", "(Landroid/view/View;ILjava/util/List;)V", "Landroid/widget/ImageView;", "ivCover", "H1", "(Landroid/widget/ImageView;Lcom/transsion/moviedetailapi/bean/Image;)V", "holder", "Lcom/google/android/material/imageview/ShapeableImageView;", "I1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/google/android/material/imageview/ShapeableImageView;)V", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Image;)V", "F", "I", "G", "Z", "H", "Ljava/lang/String;", "J", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "K", "rootWidth", "L", "dp78", "M", "dp280", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoomPostContentImageAdapter extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int spanCount;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final boolean isTablet;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final String pageName;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final String pageFrom;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final PostSubjectItem item;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final int rootWidth;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private final int dp78;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private final int dp280;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomPostContentImageAdapter(int i11, boolean z10, String str, String str2, PostSubjectItem item) {
        super(R$layout.item_room_post_content_image, null, 2, null);
        Intrinsics.h(item, "item");
        this.spanCount = i11;
        this.isTablet = z10;
        this.pageName = str;
        this.pageFrom = str2;
        this.item = item;
        this.rootWidth = z10 ? dk.a.b(300) : y.e() - dk.a.b(72);
        this.dp78 = dk.a.b(78);
        this.dp280 = dk.a.b(280);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E1(RoomPostContentImageAdapter roomPostContentImageAdapter, BaseViewHolder baseViewHolder, Image image, ShapeableImageView shapeableImageView) {
        if (roomPostContentImageAdapter.item.getBuiltIn()) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new RoomPostContentImageAdapter$convert$1$1(image, shapeableImageView, null), 3, null);
            return;
        }
        ej.f.a aVar = ej.f.f61882a;
        Context context = baseViewHolder.itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        ej.f.b bVarM = aVar.m(context);
        String url = image.getUrl();
        if (url == null) {
            url = "";
        }
        ej.f.b bVarG = bVarM.g(url);
        String thumbnail = image.getThumbnail();
        bVarG.l(thumbnail != null ? thumbnail : "").d(shapeableImageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F1(RoomPostContentImageAdapter roomPostContentImageAdapter, BaseViewHolder baseViewHolder, View view) {
        Intrinsics.e(view);
        roomPostContentImageAdapter.G1(view, baseViewHolder.getLayoutPosition(), roomPostContentImageAdapter.getData());
    }

    private final void G1(View view, int position, List<Image> imageList) {
        String str = this.pageName;
        if (str != null) {
            com.transsion.postdetail.helper.a.f48866a.o(this.item, str, this.pageFrom);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = new Intent(view.getContext(), (Class<?>) GifImagePreviewActivity.class);
            Intrinsics.f(imageList, "null cannot be cast to non-null type java.io.Serializable");
            intent.putExtra(GifImagePreviewActivity.IMAGE_LIST, (Serializable) imageList);
            intent.putExtra("CURRENT_ITEM", position);
            intent.putExtra(GifImagePreviewActivity.IS_BUILTIN, this.item.getBuiltIn());
            intent.putExtra(GifImagePreviewActivity.POST_ID, this.item.getPostId());
            view.getContext().startActivity(intent);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void H1(ImageView ivCover, Image item) {
        ViewGroup.LayoutParams layoutParams = ivCover.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int i11 = this.spanCount;
        if (i11 == 1) {
            Integer height = item.getHeight();
            int iIntValue = height != null ? height.intValue() : 0;
            Integer width = item.getWidth();
            int iIntValue2 = width != null ? width.intValue() : 0;
            if (iIntValue <= 0 || iIntValue2 <= 0) {
                marginLayoutParams.width = -1;
                marginLayoutParams.height = this.rootWidth;
            } else {
                int iB = iIntValue2 / iIntValue < 1 ? this.rootWidth - dk.a.b(38) : this.rootWidth;
                marginLayoutParams.width = iB;
                int i12 = (iIntValue * iB) / iIntValue2;
                if (i12 > (iB * 36) / 26) {
                    i12 = (iB * 36) / 26;
                }
                marginLayoutParams.height = i12;
            }
        } else if (i11 != 2) {
            marginLayoutParams.width = -1;
            marginLayoutParams.height = (this.rootWidth - dk.a.b(6)) / 3;
        } else {
            marginLayoutParams.width = -1;
            marginLayoutParams.height = (this.rootWidth - dk.a.b(6)) / 2;
        }
        ivCover.setLayoutParams(marginLayoutParams);
    }

    private final void I1(BaseViewHolder holder, ShapeableImageView ivCover) {
        float f11;
        float f12;
        float f13;
        float f14;
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        float dimension = holder.itemView.getResources().getDimension(R$dimen.corner_radius);
        n.b bVarA = n.a();
        Intrinsics.g(bVarA, "builder(...)");
        int size = getData().size();
        boolean z10 = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        DrawableCreator.Builder builder = new DrawableCreator.Builder();
        int i11 = this.spanCount;
        if (i11 != 1) {
            float f15 = 0.0f;
            if (i11 != 2) {
                float fB = dk.a.b(4);
                if (bindingAdapterPosition != 0) {
                    f11 = 0.0f;
                    f12 = 0.0f;
                } else if (z10) {
                    bVarA.J(0, dimension);
                    f12 = fB;
                    f11 = 0.0f;
                } else {
                    bVarA.E(0, dimension);
                    f11 = fB;
                    f12 = 0.0f;
                }
                if (bindingAdapterPosition == 2) {
                    if (z10) {
                        bVarA.E(0, dimension);
                        f11 = fB;
                    } else {
                        bVarA.J(0, dimension);
                        f12 = fB;
                    }
                }
                int i12 = size - 1;
                if (bindingAdapterPosition != i12 || size % 3 != 0) {
                    f13 = 0.0f;
                } else if (z10) {
                    bVarA.t(0, dimension);
                    f13 = 0.0f;
                    f15 = fB;
                } else {
                    bVarA.y(0, dimension);
                    f13 = fB;
                }
                int i13 = size % 3;
                if ((i13 == 1 && bindingAdapterPosition == i12) || ((i13 == 2 && bindingAdapterPosition == size - 2) || (i13 == 0 && bindingAdapterPosition == size - 3))) {
                    if (z10) {
                        bVarA.y(0, dimension);
                        f14 = fB;
                        fB = f15;
                    } else {
                        bVarA.t(0, dimension);
                    }
                    builder.setCornersRadius(fB, f14, f11, f12);
                } else {
                    fB = f15;
                }
                f14 = f13;
                builder.setCornersRadius(fB, f14, f11, f12);
            } else {
                if (bindingAdapterPosition == 0) {
                    if (z10) {
                        bVarA.J(0, dimension);
                        builder.setCornersRadius(0.0f, 0.0f, 0.0f, dk.a.b(4));
                    } else {
                        bVarA.E(0, dimension);
                        builder.setCornersRadius(0.0f, 0.0f, dk.a.b(4), 0.0f);
                    }
                }
                if (bindingAdapterPosition == 1) {
                    if (z10) {
                        bVarA.E(0, dimension);
                        builder.setCornersRadius(0.0f, 0.0f, dk.a.b(4), 0.0f);
                    } else {
                        bVarA.J(0, dimension);
                        builder.setCornersRadius(0.0f, 0.0f, 0.0f, dk.a.b(4));
                    }
                }
                if (bindingAdapterPosition == size - 1 && size % 2 == 0) {
                    if (z10) {
                        bVarA.t(0, dimension);
                        builder.setCornersRadius(dk.a.b(4), 0.0f, 0.0f, 0.0f);
                    } else {
                        bVarA.y(0, dimension);
                        builder.setCornersRadius(0.0f, dk.a.b(4), 0.0f, 0.0f);
                    }
                }
                if (bindingAdapterPosition == size - 2 && size >= 2 && size % 2 == 0) {
                    if (z10) {
                        bVarA.y(0, dimension);
                        builder.setCornersRadius(0.0f, dk.a.b(4), 0.0f, 0.0f);
                    } else {
                        bVarA.t(0, dimension);
                        builder.setCornersRadius(dk.a.b(4), 0.0f, 0.0f, 0.0f);
                    }
                }
                Unit unit = Unit.f67061a;
            }
        } else {
            bVarA.q(0, dimension);
            builder.setCornersRadius(dk.a.b(4));
        }
        holder.getView(R$id.v_stroke).setBackground(builder.setStrokeColor(Utils.a().getResources().getColor(R$color.white_10)).setStrokeWidth(dk.a.b(1)).build());
        ivCover.setShapeAppearanceModel(bVarA.m());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public void F(final BaseViewHolder holder, final Image item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        final ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.iv_cover);
        H1(shapeableImageView, item);
        I1(holder, shapeableImageView);
        holder.itemView.post(new Runnable() { // from class: com.transsion.postdetail.ui.adapter.j
            @Override // java.lang.Runnable
            public final void run() {
                RoomPostContentImageAdapter.E1(this.f49407a, holder, item, shapeableImageView);
            }
        });
        shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.adapter.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RoomPostContentImageAdapter.F1(this.f49411a, holder, view);
            }
        });
    }
}
