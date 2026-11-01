package com.transsion.usercenter.devicemanagement.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/usercenter/devicemanagement/adapter/b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Ljw/d;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/d;)V", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class b extends BaseQuickAdapter {
    public b() {
        super(R$layout.item_linked_device, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, jw.d item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ImageView imageView = (ImageView) holder.getView(R$id.deviceIcon);
        String strA = item.a();
        if (strA == null || StringsKt.q0(strA)) {
            imageView.setImageResource(item.c());
        } else {
            f.a aVar = f.f61882a;
            Context context = imageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(item.a()).i(item.c()).d(imageView);
        }
        holder.setText(R$id.deviceName, item.d());
        holder.getView(R$id.currentDeviceTag).setVisibility(item.e() ? 0 : 8);
        holder.getView(R$id.loginTimeLayout).setVisibility(item.e() ? 8 : 0);
        int i11 = R$id.lastLoginTime;
        String strB = item.b();
        if (strB == null) {
            strB = "";
        }
        holder.setText(i11, strB);
        holder.getView(R$id.deviceDivider).setVisibility(holder.getBindingAdapterPosition() != CollectionsKt.n(getData()) ? 0 : 8);
        View view = holder.itemView;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = dk.a.b(item.e() ? 74 : 69);
        view.setLayoutParams(layoutParams);
    }
}
