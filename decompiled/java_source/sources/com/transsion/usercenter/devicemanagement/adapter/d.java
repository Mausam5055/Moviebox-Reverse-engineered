package com.transsion.usercenter.devicemanagement.adapter;

import ak.k;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.base.report.athena.ClickType;
import com.transsion.usercenter.R$drawable;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import hj.i;
import jw.e;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J'\u0010\u000e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/transsion/usercenter/devicemanagement/adapter/d;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Ljw/e;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "", "F1", "Landroid/widget/TextView;", "countView", "Landroid/widget/ImageView;", "unavailableView", "", "count", "C1", "(Landroid/widget/TextView;Landroid/widget/ImageView;I)V", "holder", WebConstants.FIELD_ITEM, "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/e;)V", "F", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class d extends BaseQuickAdapter {
    private static final String G = "/profile/device_management";
    private static final String H = "module_name";
    private static final String I = "type";
    private static final String J = "link_device";
    private static final String K = "button";

    public d() {
        super(R$layout.item_upgrade_right, null, 2, null);
    }

    private final void C1(TextView countView, ImageView unavailableView, int count) {
        boolean z10 = count <= 0;
        Integer numValueOf = Integer.valueOf(count);
        if (z10) {
            numValueOf = null;
        }
        countView.setText(numValueOf != null ? numValueOf.toString() : null);
        unavailableView.setVisibility(z10 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E1(d dVar, String str, View view) {
        dVar.F1();
        k.g(str, "&pageFrom=/profile/device_management");
    }

    private final void F1() {
        i.f64505a.q(G, MapsKt.j(TuplesKt.a(H, J), TuplesKt.a("type", K)), ClickType.FEATURE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, e item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ImageView imageView = (ImageView) holder.getView(R$id.featureIcon);
        String strC = item.c();
        if (strC == null || StringsKt.q0(strC)) {
            imageView.setImageResource(R$drawable.ic_feature_phone);
        } else {
            f.a aVar = f.f61882a;
            Context context = imageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(item.c()).i(R$color.transparent).d(imageView);
        }
        holder.setText(R$id.featureName, item.d());
        C1((TextView) holder.getView(R$id.basicCount), (ImageView) holder.getView(R$id.basicUnavailable), item.a());
        C1((TextView) holder.getView(R$id.proCount), (ImageView) holder.getView(R$id.proUnavailable), item.e());
        View view = holder.getView(R$id.featureInfo);
        final String strB = item.b();
        if (strB == null || StringsKt.q0(strB)) {
            strB = null;
        }
        view.setVisibility(strB == null ? 8 : 0);
        view.setOnClickListener(strB != null ? new View.OnClickListener() { // from class: com.transsion.usercenter.devicemanagement.adapter.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                d.E1(this.f56671a, strB, view2);
            }
        } : null);
    }
}
