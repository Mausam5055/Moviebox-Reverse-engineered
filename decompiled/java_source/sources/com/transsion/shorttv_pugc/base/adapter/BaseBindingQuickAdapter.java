package com.transsion.shorttv_pugc.base.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00050\u0004:\u0001#B\u0019\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00028\u00012\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u0000H&¢\u0006\u0004\b\u0013\u0010\u0014J-\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u00002\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J%\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u001aH\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ%\u0010\u001f\u001a\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u0011\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u001f\u0010 J3\u0010!\u001a\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u0011\u001a\u00028\u00002\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0014¢\u0006\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lcom/transsion/shorttv_pugc/base/adapter/BaseBindingQuickAdapter;", "T", "Lg4/a;", "VB", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/shorttv_pugc/base/adapter/BaseBindingQuickAdapter$BindingHolder;", "", "data", "<init>", "(Ljava/util/List;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "E1", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;", "binding", WebConstants.FIELD_ITEM, "", "F1", "(Lg4/a;Ljava/lang/Object;)V", "", "", "payloads", "G1", "(Lg4/a;Ljava/lang/Object;Ljava/util/List;)V", "", "viewType", "D1", "(Landroid/view/ViewGroup;I)Lcom/transsion/shorttv_pugc/base/adapter/BaseBindingQuickAdapter$BindingHolder;", "holder", "B1", "(Lcom/transsion/shorttv_pugc/base/adapter/BaseBindingQuickAdapter$BindingHolder;Ljava/lang/Object;)V", "C1", "(Lcom/transsion/shorttv_pugc/base/adapter/BaseBindingQuickAdapter$BindingHolder;Ljava/lang/Object;Ljava/util/List;)V", "BindingHolder", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseBindingQuickAdapter<T, VB extends a> extends BaseQuickAdapter {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\b\b\u0002\u0010\u0002*\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0004\u001a\u00028\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/shorttv_pugc/base/adapter/BaseBindingQuickAdapter$BindingHolder;", "Lg4/a;", "VB", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "binding", "<init>", "(Lg4/a;)V", "a", "Lg4/a;", "f", "()Lg4/a;", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class BindingHolder<VB extends a> extends BaseViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final a binding;

        /* JADX WARN: Illegal instructions before constructor call */
        public BindingHolder(VB binding) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public BaseBindingQuickAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public BaseBindingQuickAdapter(List<T> list) {
        super(0, list);
    }

    public /* synthetic */ BaseBindingQuickAdapter(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BindingHolder<VB> holder, T item) {
        Intrinsics.h(holder, "holder");
        F1(holder.getBinding(), item);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(BindingHolder<VB> holder, T item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        G1(holder.getBinding(), item, payloads);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public BindingHolder<VB> J(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        Intrinsics.e(layoutInflaterFrom);
        return new BindingHolder<>(E1(layoutInflaterFrom, parent));
    }

    public abstract VB E1(LayoutInflater inflater, ViewGroup parent);

    public abstract void F1(VB binding, T item);

    public void G1(VB binding, T item, List<? extends Object> payloads) {
        Intrinsics.h(binding, "binding");
        Intrinsics.h(payloads, "payloads");
    }
}
