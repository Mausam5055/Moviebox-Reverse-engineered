package com.transsion.subtitle.adapter;

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
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u001d\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ-\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00022\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0015\u0010\u000fR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/transsion/subtitle/adapter/c;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Leu/a;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "isSearchDownload", "", "dataList", "<init>", "(ZLjava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Leu/a;)V", "", "", "payloads", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Leu/a;Ljava/util/List;)V", "B1", "F", "Z", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class c extends BaseQuickAdapter implements i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final boolean isSearchDownload;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(boolean z10, List<eu.a> dataList) {
        super(z10 ? R$layout.dialog_subtitle_list_item : R$layout.dialog_subtitle_lan_list_item, dataList);
        Intrinsics.h(dataList, "dataList");
        this.isSearchDownload = z10;
    }

    private final void D1(BaseViewHolder holder, eu.a item) {
        ImageView imageView = (ImageView) holder.getView(R$id.iv_check);
        ProgressBar progressBar = (ProgressBar) holder.getView(R$id.progress);
        int status = item.b().getStatus();
        if (status != 0) {
            if (status == 2) {
                jg.c.g(imageView);
                jg.c.k(progressBar);
                return;
            } else {
                if (status == 5) {
                    imageView.setImageResource(R$mipmap.ic_subtitle_downloaded);
                    if (item.f()) {
                        jg.c.k(imageView);
                    } else {
                        jg.c.h(imageView);
                    }
                    jg.c.g(progressBar);
                    return;
                }
                if (status != 6) {
                    return;
                }
            }
        }
        imageView.setImageResource(R$drawable.subtitle_download_green);
        jg.c.k(imageView);
        jg.c.g(progressBar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, eu.a item) {
        String lanName;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (!this.isSearchDownload) {
            ((TextView) holder.getView(R$id.tv_subtitle)).setText(item.b().getName());
            ((ImageView) holder.getView(R$id.iv_check)).setSelected(item.f());
            return;
        }
        Long size = item.b().getSize();
        if ((size != null ? size.longValue() : 0L) > 100) {
            String lanName2 = item.b().getLanName();
            Long size2 = item.b().getSize();
            lanName = lanName2 + ", " + oh.b.a(size2 != null ? size2.longValue() : 1L, 1);
        } else {
            lanName = item.b().getLanName();
        }
        ph.c.a aVarC = ph.c.e().e(item.b().getSubtitleName() + " ").c(-1).e(lanName).d(12).c(androidx.core.content.b.getColor(Utils.a(), R$color.white_40));
        Intrinsics.g(aVarC, "color(...)");
        ((TextView) holder.getView(R$id.tv_subtitle)).setText(aVarC.b());
        D1(holder, item);
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
            if (this.isSearchDownload) {
                D1(holder, item);
            }
        }
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
