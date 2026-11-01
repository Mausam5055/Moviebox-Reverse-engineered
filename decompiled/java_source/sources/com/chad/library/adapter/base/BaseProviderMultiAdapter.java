package com.chad.library.adapter.base;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0002B\u0019\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\u000b\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\b2\u0006\u0010\n\u001a\u00020\tH$¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ-\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00028\u00002\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\bH\u0014¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010\"\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\tH\u0014¢\u0006\u0004\b\"\u0010#J\u001f\u0010$\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r2\u0006\u0010\u0014\u001a\u00020\tH\u0014¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0003H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0003H\u0016¢\u0006\u0004\b(\u0010'J\u0017\u0010)\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u0003H\u0014¢\u0006\u0004\b)\u0010'J\u001f\u0010*\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\tH\u0014¢\u0006\u0004\b*\u0010#R'\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r0+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010,\u001a\u0004\b-\u0010.¨\u00060"}, d2 = {"Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "T", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "data", "<init>", "(Ljava/util/List;)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "provider", "", "F1", "(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V", "Landroid/view/ViewGroup;", "parent", "viewType", "y0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "P", "(I)I", "holder", WebConstants.FIELD_ITEM, "F", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V", "", "payloads", "G", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V", "viewHolder", "z", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V", "M1", "(I)Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "P1", "J1", "G1", "Landroid/util/SparseArray;", "Lkotlin/Lazy;", "O1", "()Landroid/util/SparseArray;", "mItemProviders", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class BaseProviderMultiAdapter<T> extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final Lazy mItemProviders;

    /* JADX WARN: Multi-variable type inference failed */
    public BaseProviderMultiAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public BaseProviderMultiAdapter(List<T> list) {
        super(0, list);
        this.mItemProviders = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<SparseArray<BaseItemProvider>>() { // from class: com.chad.library.adapter.base.BaseProviderMultiAdapter$mItemProviders$2
            @Override // kotlin.jvm.functions.Function0
            public final SparseArray<BaseItemProvider> invoke() {
                return new SparseArray<>();
            }
        });
    }

    public /* synthetic */ BaseProviderMultiAdapter(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H1(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, BaseItemProvider provider, View v11) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(provider, "$provider");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        Intrinsics.g(v11, "v");
        provider.o(viewHolder, v11, this$0.getData().get(iA0), iA0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean I1(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, BaseItemProvider provider, View v11) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(provider, "$provider");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        Intrinsics.g(v11, "v");
        return provider.p(viewHolder, v11, this$0.getData().get(iA0), iA0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K1(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, View it) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        BaseItemProvider baseItemProvider = this$0.O1().get(viewHolder.getItemViewType());
        Intrinsics.g(it, "it");
        baseItemProvider.q(viewHolder, it, this$0.getData().get(iA0), iA0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean L1(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, View it) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        BaseItemProvider baseItemProvider = this$0.O1().get(viewHolder.getItemViewType());
        Intrinsics.g(it, "it");
        return baseItemProvider.s(viewHolder, it, this$0.getData().get(iA0), iA0);
    }

    private final SparseArray<BaseItemProvider> O1() {
        return (SparseArray) this.mItemProviders.getValue();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        BaseItemProvider baseItemProviderM1 = M1(holder.getItemViewType());
        if (baseItemProviderM1 != null) {
            baseItemProviderM1.t(holder);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void F(BaseViewHolder holder, T item) {
        Intrinsics.h(holder, "holder");
        BaseItemProvider baseItemProviderM1 = M1(holder.getItemViewType());
        Intrinsics.e(baseItemProviderM1);
        baseItemProviderM1.b(holder, item);
    }

    public void F1(BaseItemProvider provider) {
        Intrinsics.h(provider, "provider");
        provider.w(this);
        O1().put(provider.l(), provider);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void G(BaseViewHolder holder, T item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        BaseItemProvider baseItemProviderM1 = M1(holder.getItemViewType());
        Intrinsics.e(baseItemProviderM1);
        baseItemProviderM1.f(holder, item, payloads);
    }

    protected void G1(final BaseViewHolder viewHolder, int viewType) {
        Intrinsics.h(viewHolder, "viewHolder");
        if (j0() == null) {
            final BaseItemProvider baseItemProviderM1 = M1(viewType);
            if (baseItemProviderM1 == null) {
                return;
            }
            Iterator<T> it = baseItemProviderM1.h().iterator();
            while (it.hasNext()) {
                View viewFindViewById = viewHolder.itemView.findViewById(((Number) it.next()).intValue());
                if (viewFindViewById != null) {
                    Intrinsics.g(viewFindViewById, "findViewById<View>(id)");
                    if (!viewFindViewById.isClickable()) {
                        viewFindViewById.setClickable(true);
                    }
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.h
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            BaseProviderMultiAdapter.H1(viewHolder, this, baseItemProviderM1, view);
                        }
                    });
                }
            }
        }
        k0();
        final BaseItemProvider baseItemProviderM2 = M1(viewType);
        if (baseItemProviderM2 == null) {
            return;
        }
        Iterator<T> it2 = baseItemProviderM2.i().iterator();
        while (it2.hasNext()) {
            View viewFindViewById2 = viewHolder.itemView.findViewById(((Number) it2.next()).intValue());
            if (viewFindViewById2 != null) {
                Intrinsics.g(viewFindViewById2, "findViewById<View>(id)");
                if (!viewFindViewById2.isLongClickable()) {
                    viewFindViewById2.setLongClickable(true);
                }
                viewFindViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.i
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return BaseProviderMultiAdapter.I1(viewHolder, this, baseItemProviderM2, view);
                    }
                });
            }
        }
    }

    protected void J1(final BaseViewHolder viewHolder) {
        Intrinsics.h(viewHolder, "viewHolder");
        if (l0() == null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseProviderMultiAdapter.K1(viewHolder, this, view);
                }
            });
        }
        if (m0() == null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.k
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return BaseProviderMultiAdapter.L1(viewHolder, this, view);
                }
            });
        }
    }

    protected BaseItemProvider M1(int viewType) {
        return O1().get(viewType);
    }

    protected abstract int N1(List<? extends T> data, int position);

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int P(int position) {
        return N1(getData(), position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: P1, reason: merged with bridge method [inline-methods] */
    public void onViewDetachedFromWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        BaseItemProvider baseItemProviderM1 = M1(holder.getItemViewType());
        if (baseItemProviderM1 != null) {
            baseItemProviderM1.u(holder);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        BaseItemProvider baseItemProviderM1 = M1(viewType);
        if (baseItemProviderM1 == null) {
            throw new IllegalStateException(("ViewType: " + viewType + " no such provider found，please use addItemProvider() first!").toString());
        }
        Context context = parent.getContext();
        Intrinsics.g(context, "parent.context");
        baseItemProviderM1.x(context);
        BaseViewHolder baseViewHolderR = baseItemProviderM1.r(parent, viewType);
        baseItemProviderM1.v(baseViewHolderR, viewType);
        return baseViewHolderR;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void z(BaseViewHolder viewHolder, int viewType) {
        Intrinsics.h(viewHolder, "viewHolder");
        super.z(viewHolder, viewType);
        J1(viewHolder);
        G1(viewHolder, viewType);
    }
}
