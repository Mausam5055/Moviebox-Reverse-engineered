package com.transsion.shorttv_pugc.ui.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.shorttv_pugc.base.adapter.BaseBindingQuickAdapter;
import com.transsion.shorttv_pugc.base.widget.ShortTvGradientTextView;
import com.transsion.shorttv_pugc.bean.DubsInfo;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/adapter/h;", "Lcom/transsion/shorttv_pugc/base/adapter/BaseBindingQuickAdapter;", "Lcom/transsion/shorttv_pugc/bean/DubsInfo;", "Lms/e;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "H1", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lms/e;", "binding", WebConstants.FIELD_ITEM, "", "I1", "(Lms/e;Lcom/transsion/shorttv_pugc/bean/DubsInfo;)V", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class h extends BaseBindingQuickAdapter<DubsInfo, ms.e> {
    public h() {
        super(null, 1, null);
    }

    @Override // com.transsion.shorttv_pugc.base.adapter.BaseBindingQuickAdapter
    /* JADX INFO: renamed from: H1, reason: merged with bridge method [inline-methods] */
    public ms.e E1(LayoutInflater inflater, ViewGroup parent) {
        Intrinsics.h(inflater, "inflater");
        Intrinsics.h(parent, "parent");
        ms.e eVarC = ms.e.c(LayoutInflater.from(getContext()), parent, false);
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }

    @Override // com.transsion.shorttv_pugc.base.adapter.BaseBindingQuickAdapter
    /* JADX INFO: renamed from: I1, reason: merged with bridge method [inline-methods] */
    public void F1(ms.e binding, DubsInfo item) {
        Intrinsics.h(binding, "binding");
        Intrinsics.h(item, "item");
        binding.f69760b.setSelected(item.getIsSelected());
        AppCompatTextView appCompatTextView = binding.f69761c;
        String lanName = item.getLanName();
        if (lanName == null) {
            lanName = "";
        }
        appCompatTextView.setText(lanName);
        ShortTvGradientTextView shortTvGradientTextView = binding.f69762d;
        String lanName2 = item.getLanName();
        shortTvGradientTextView.setText(lanName2 != null ? lanName2 : "");
        AppCompatTextView tvName = binding.f69761c;
        Intrinsics.g(tvName, "tvName");
        tvName.setVisibility(!item.getIsSelected() ? 0 : 8);
        ShortTvGradientTextView tvNameSelected = binding.f69762d;
        Intrinsics.g(tvNameSelected, "tvNameSelected");
        tvNameSelected.setVisibility(item.getIsSelected() ? 0 : 8);
    }
}
