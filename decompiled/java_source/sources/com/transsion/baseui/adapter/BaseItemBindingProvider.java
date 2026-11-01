package com.transsion.baseui.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseItemBindingProvider extends BaseItemProvider {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f43410f = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f43411e;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000*\b\b\u0002\u0010\u0002*\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0004\u001a\u00028\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/baseui/adapter/BaseItemBindingProvider$BindingViewHolder;", "Lg4/a;", "VB", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "binding", "<init>", "(Lg4/a;)V", "a", "Lg4/a;", "f", "()Lg4/a;", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class BindingViewHolder<VB extends a> extends BaseViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final a binding;

        /* JADX WARN: Illegal instructions before constructor call */
        public BindingViewHolder(VB binding) {
            Intrinsics.h(binding, "binding");
            View root = binding.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            super(root);
            this.binding = binding;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final a getBinding() {
            return this.binding;
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void b(BaseViewHolder helper, Object obj) {
        Intrinsics.h(helper, "helper");
        y(((BindingViewHolder) helper).getBinding(), helper, obj);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public final int m() {
        return this.f43411e;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public BaseViewHolder r(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        Intrinsics.e(layoutInflaterFrom);
        return new BindingViewHolder(z(layoutInflaterFrom, parent));
    }

    public abstract void y(a aVar, BaseViewHolder baseViewHolder, Object obj);

    public abstract a z(LayoutInflater layoutInflater, ViewGroup viewGroup);
}
