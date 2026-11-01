package com.transsnet.downloader.dialog;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/transsnet/downloader/dialog/l;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "dataList", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V", "F", "Ljava/lang/String;", "deleteStr", "G", "saveToStr", "", "H", "I", "deleteRedColor", "memberTypedColor", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class l extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private String deleteStr;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private String saveToStr;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private int deleteRedColor;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private int memberTypedColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(List<String> dataList) {
        super(R$layout.adapter_download_more_dialog_item, dataList);
        Intrinsics.h(dataList, "dataList");
        String string = Utils.a().getString(R$string.delete);
        Intrinsics.g(string, "getString(...)");
        this.deleteStr = string;
        String string2 = Utils.a().getString(R$string.download_save_to_my_phone);
        Intrinsics.g(string2, "getString(...)");
        this.saveToStr = string2;
        this.deleteRedColor = androidx.core.content.b.getColor(Utils.a(), R$color.error_50);
        this.memberTypedColor = androidx.core.content.b.getColor(Utils.a(), R$color.color_FFDFB0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, String item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) holder.getView(R$id.tv_title);
        textView.setText(item);
        if (Intrinsics.c(item, this.deleteStr)) {
            textView.setTextColor(this.deleteRedColor);
            return;
        }
        if (Intrinsics.c(item, this.saveToStr)) {
            textView.setTextColor(this.memberTypedColor);
            Drawable drawable = androidx.core.content.b.getDrawable(Utils.a(), R$drawable.icon_download_dialog_premium);
            if (drawable != null) {
                drawable.setBounds(0, 0, dk.a.b(16), dk.a.b(16));
            }
            textView.setCompoundDrawablesRelative(drawable, null, null, null);
            textView.setCompoundDrawablePadding(dk.a.b(6));
            Context context = textView.getContext();
            Intrinsics.g(context, "getContext(...)");
            textView.setTypeface(jg.a.c(context));
        }
    }
}
