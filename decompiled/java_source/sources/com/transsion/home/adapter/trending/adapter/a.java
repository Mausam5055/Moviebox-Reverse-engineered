package com.transsion.home.adapter.trending.adapter;

import ak.x;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.b;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.moviedetailapi.bean.ExplainBean;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/transsion/home/adapter/trending/adapter/a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/ExplainBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "datas", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/ExplainBean;)V", "", "getItemCount", "()I", "F", "Ljava/util/List;", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseQuickAdapter {
    public static final int G = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final List<ExplainBean> datas;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(List<ExplainBean> datas) {
        super(R$layout.post_title_tag, CollectionsKt.U0(datas));
        Intrinsics.h(datas, "datas");
        this.datas = datas;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, ExplainBean item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        AppCompatTextView appCompatTextView = (AppCompatTextView) holder.getViewOrNull(R$id.tv_tag);
        if (appCompatTextView != null) {
            String text = item.getText();
            SpannableString spannableString = new SpannableString(text);
            if (text != null && StringsKt.c0(text, "\"", false, 2, null)) {
                int iO0 = StringsKt.o0(text, "\"", 0, false, 6, null);
                int iV0 = StringsKt.v0(text, "\"", 0, false, 6, null);
                Context context = appCompatTextView.getContext();
                Intrinsics.g(context, "getContext(...)");
                spannableString.setSpan(jg.a.c(context), iO0, iV0, 33);
                spannableString.setSpan(new StyleSpan(2), iO0, iV0, 33);
            }
            appCompatTextView.setText(spannableString);
            try {
                String color = item.getColor();
                List listS0 = color != null ? StringsKt.S0(color, new String[]{","}, false, 0, 6, null) : null;
                Drawable background = appCompatTextView.getBackground();
                Intrinsics.f(background, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
                GradientDrawable gradientDrawable = (GradientDrawable) background;
                if (listS0 == null || listS0.size() != 4) {
                    gradientDrawable.setColor(b.getColor(appCompatTextView.getContext(), R$color.bg_08));
                    appCompatTextView.setTextColor(b.getColor(appCompatTextView.getContext(), R$color.text_01));
                } else if (x.f658a.a()) {
                    gradientDrawable.setColor(Color.parseColor((String) listS0.get(1)));
                    appCompatTextView.setTextColor(Color.parseColor((String) listS0.get(3)));
                } else {
                    gradientDrawable.setColor(Color.parseColor((String) listS0.get(0)));
                    appCompatTextView.setTextColor(Color.parseColor((String) listS0.get(2)));
                }
            } catch (Exception unused) {
                appCompatTextView.setBackground(b.getDrawable(appCompatTextView.getContext(), R$drawable.bg_post_title_tag));
                appCompatTextView.setTextColor(b.getColor(appCompatTextView.getContext(), R$color.text_12));
            }
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.datas.size();
    }
}
