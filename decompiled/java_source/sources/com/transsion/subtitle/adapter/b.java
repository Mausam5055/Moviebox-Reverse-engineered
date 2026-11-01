package com.transsion.subtitle.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.subtitle.R$drawable;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;
import com.transsion.subtitle.R$mipmap;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import r6.f;
import r6.i;
import y0.h;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000f\u0010\rJ!\u0010\u0014\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0016\u0010\u0015J!\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0017\u0010\u0015J!\u0010\u0018\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0018\u0010\u0015J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ#\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u001d\u001a\u00020\u001c2\b\b\u0001\u0010\u001e\u001a\u00020\u0019H\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u0012H\u0007¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0012H\u0007¢\u0006\u0004\b&\u0010$J-\u0010*\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00022\f\u0010)\u001a\b\u0012\u0004\u0012\u00020(0'H\u0014¢\u0006\u0004\b*\u0010+J\u001f\u0010,\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b,\u0010\rR\u0016\u0010\"\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010.¨\u00060"}, d2 = {"Lcom/transsion/subtitle/adapter/b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Leu/a;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "dataList", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "M1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Leu/a;)V", "H1", "N1", "Landroid/widget/ImageView;", "imgView", "", "isOpenSubtitle", "J1", "(Landroid/widget/ImageView;Z)V", "I1", "L1", "K1", "", "D1", "(Z)I", "Landroid/content/Context;", "context", "resId", "Landroid/graphics/drawable/Drawable;", "E1", "(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;", "isBilingual", "F1", "(Z)V", "isOpen", "G1", "", "", "payloads", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Leu/a;Ljava/util/List;)V", "B1", "F", "Z", "G", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class b extends BaseQuickAdapter implements i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private boolean isBilingual;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private boolean isOpenSubtitle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(List<eu.a> dataList) {
        super(R$layout.dialog_subtitle_lan_list_item, dataList);
        Intrinsics.h(dataList, "dataList");
        this.isOpenSubtitle = true;
    }

    private final int D1(boolean isOpenSubtitle) {
        return isOpenSubtitle ? androidx.core.content.b.getColor(Utils.a(), R$color.white) : androidx.core.content.b.getColor(Utils.a(), R$color.white_40);
    }

    private final Drawable E1(Context context, int resId) {
        return h.e(context.getResources(), resId, context.getTheme());
    }

    private final void H1(BaseViewHolder holder, eu.a item) {
        int i11;
        TextView textView = (TextView) holder.getView(R$id.ivBilingual);
        if (TextUtils.isEmpty(item.a())) {
            i11 = 8;
        } else {
            textView.setText(item.a());
            i11 = 0;
        }
        textView.setVisibility(i11);
        textView.setTextColor(D1(this.isOpenSubtitle));
    }

    private final void I1(ImageView imgView, boolean isOpenSubtitle) {
        if (imgView != null) {
            if (isOpenSubtitle) {
                imgView.setImageResource(R$mipmap.subtitle_ic_download_group_selected);
            } else {
                imgView.setImageResource(R$mipmap.subtitle_ic_download_group_selected_2);
            }
        }
    }

    private final void J1(ImageView imgView, boolean isOpenSubtitle) {
        if (imgView != null) {
            if (isOpenSubtitle) {
                imgView.setImageResource(R$drawable.subtitle_ic_download_group_unselected);
            } else {
                imgView.setImageResource(R$drawable.subtitle_ic_download_group_unselected_2);
            }
        }
    }

    private final void K1(ImageView imgView, boolean isOpenSubtitle) {
        if (imgView != null) {
            if (isOpenSubtitle) {
                imgView.setImageResource(R$drawable.subtitle_download_no);
            } else {
                imgView.setImageResource(R$drawable.subtitle_download_no_2);
            }
        }
    }

    private final void L1(ImageView imgView, boolean isOpenSubtitle) {
        if (imgView != null) {
            if (isOpenSubtitle) {
                imgView.setImageResource(R$drawable.subtitle_checked);
            } else {
                imgView.setImageResource(R$drawable.subtitle_checked_2);
            }
        }
    }

    private final void M1(BaseViewHolder holder, eu.a item) {
        H1(holder, item);
        TextView textView = (TextView) holder.getView(R$id.tvSubtitle);
        textView.setText(item.b().getName());
        textView.setTextColor(D1(this.isOpenSubtitle));
        N1(holder, item);
    }

    private final void N1(BaseViewHolder holder, eu.a item) {
        ProgressBar progressBar = (ProgressBar) holder.getView(R$id.progress);
        ImageView imageView = (ImageView) holder.getView(R$id.ivState);
        progressBar.setVisibility(8);
        imageView.setVisibility(0);
        if (this.isBilingual) {
            if (item.f()) {
                I1(imageView, this.isOpenSubtitle);
                return;
            }
            if (item.b().getStatus() == 2) {
                progressBar.setVisibility(0);
                imageView.setVisibility(8);
                return;
            } else if (item.d()) {
                J1(imageView, this.isOpenSubtitle);
                return;
            } else {
                K1(imageView, this.isOpenSubtitle);
                return;
            }
        }
        if (item.f()) {
            L1(imageView, this.isOpenSubtitle);
            return;
        }
        if (item.b().getStatus() == 2) {
            progressBar.setVisibility(0);
            imageView.setVisibility(8);
        } else if (item.d()) {
            imageView.setVisibility(4);
        } else {
            K1(imageView, this.isOpenSubtitle);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, eu.a item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        M1(holder, item);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(BaseViewHolder holder, eu.a item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(0);
        if (obj instanceof eu.a) {
            item.b().setStatus(((eu.a) obj).b().getStatus());
            N1(holder, item);
            H1(holder, item);
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void F1(boolean isBilingual) {
        this.isBilingual = isBilingual;
        notifyDataSetChanged();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void G1(boolean isOpen) {
        this.isOpenSubtitle = isOpen;
        notifyDataSetChanged();
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
