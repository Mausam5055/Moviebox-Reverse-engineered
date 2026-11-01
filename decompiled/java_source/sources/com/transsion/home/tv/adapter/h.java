package com.transsion.home.tv.adapter;

import android.text.TextUtils;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.tv.bean.ImageInfo;
import com.transsion.home.tv.bean.TvChannelItem;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\t\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\f\u0010\rR.\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\t0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R.\u0010\u001f\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/home/tv/adapter/h;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/tv/bean/TvChannelItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/tv/bean/TvChannelItem;)V", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "Lkotlin/Function1;", "", "F", "Lkotlin/jvm/functions/Function1;", "D1", "()Lkotlin/jvm/functions/Function1;", "G1", "(Lkotlin/jvm/functions/Function1;)V", "onPositionScroll", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "G", "Ljava/lang/String;", "E1", "()Ljava/lang/String;", "H1", "(Ljava/lang/String;)V", "selectedChannelId", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class h extends BaseQuickAdapter implements r6.i {
    public static final int H = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private Function1<? super Integer, Unit> onPositionScroll;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private String selectedChannelId;

    public h() {
        super(R$layout.item_tv_channel, null, 2, null);
        this.onPositionScroll = new Function1() { // from class: com.transsion.home.tv.adapter.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h.F1(((Integer) obj).intValue());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F1(int i11) {
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        this.onPositionScroll.invoke(Integer.valueOf(holder.getBindingAdapterPosition()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, TvChannelItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        boolean z10 = item.getChannelId() != null && Intrinsics.c(item.getChannelId(), this.selectedChannelId);
        holder.itemView.setSelected(z10);
        BLTextView bLTextView = (BLTextView) holder.getView(R$id.tvChannelName);
        String title = item.getTitle();
        if (title == null) {
            title = "";
        }
        bLTextView.setText(title);
        bLTextView.setSelected(z10);
        BLTextView bLTextView2 = (BLTextView) holder.getView(R$id.tvLanguage);
        List<String> languageCodes = item.getLanguageCodes();
        String str = languageCodes != null ? (String) CollectionsKt.k0(languageCodes) : null;
        if (str == null) {
            str = "";
        }
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        bLTextView2.setText(upperCase);
        bLTextView2.setSelected(z10);
        ImageView imageView = (ImageView) holder.getView(R$id.ivSignalIcon);
        if (z10) {
            Intrinsics.e(Glide.with(imageView).asGif().load2(Integer.valueOf(R$drawable.ic_tv_channel_signal)).into(imageView));
        } else {
            Glide.with(imageView).clear(imageView);
            imageView.setImageResource(R$drawable.ic_tv_channel_signal_dim);
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.ivChannelFlag);
        ImageInfo countryFlagImage = item.getCountryFlagImage();
        String url = countryFlagImage != null ? countryFlagImage.getUrl() : null;
        String str2 = url != null ? url : "";
        if (TextUtils.isEmpty(str2)) {
            shapeableImageView.setImageResource(R$drawable.ic_tv_country_flag_default);
        } else {
            ej.f.f61882a.m(getContext()).g(str2).l(str2).i(R$drawable.ic_tv_country_flag_default).d(shapeableImageView);
        }
    }

    public final Function1<Integer, Unit> D1() {
        return this.onPositionScroll;
    }

    /* JADX INFO: renamed from: E1, reason: from getter */
    public final String getSelectedChannelId() {
        return this.selectedChannelId;
    }

    public final void G1(Function1<? super Integer, Unit> function1) {
        Intrinsics.h(function1, "<set-?>");
        this.onPositionScroll = function1;
    }

    public final void H1(String str) {
        int i11;
        if (Intrinsics.c(this.selectedChannelId, str)) {
            return;
        }
        String str2 = this.selectedChannelId;
        this.selectedChannelId = str;
        Iterator<Object> it = getData().iterator();
        int i12 = 0;
        int i13 = 0;
        while (true) {
            i11 = -1;
            if (!it.hasNext()) {
                i13 = -1;
                break;
            } else if (Intrinsics.c(((TvChannelItem) it.next()).getChannelId(), str2)) {
                break;
            } else {
                i13++;
            }
        }
        Iterator<Object> it2 = getData().iterator();
        while (it2.hasNext()) {
            if (Intrinsics.c(((TvChannelItem) it2.next()).getChannelId(), str)) {
                i11 = i12;
                break;
            }
            i12++;
        }
        if (i13 >= 0) {
            notifyItemChanged(i13);
        }
        if (i11 >= 0) {
            notifyItemChanged(i11);
        }
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
