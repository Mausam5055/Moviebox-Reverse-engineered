package com.chad.library.adapter.base;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.binder.BaseItemBinder;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001>B\u0019\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007JM\u0010\u000f\u001a\u00020\u0000\"\b\b\u0000\u0010\b*\u00020\u00022\u000e\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\t2\u0010\u0010\f\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\u000b2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J@\u0010\u0011\u001a\u00020\u0000\"\n\b\u0000\u0010\b\u0018\u0001*\u00020\u00022\u0010\u0010\f\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\u000b2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\rH\u0086\b¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ-\u0010 \u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u00022\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00020\u001eH\u0014¢\u0006\u0004\b \u0010!J#\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\"\u0010#J%\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b$\u0010#J\u0017\u0010&\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0014¢\u0006\u0004\b&\u0010'J\u001f\u0010)\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b)\u0010*J\u0017\u0010+\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u0003H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u0003H\u0016¢\u0006\u0004\b-\u0010,J\u0017\u0010/\u001a\u00020.2\u0006\u0010\u0019\u001a\u00020\u0003H\u0016¢\u0006\u0004\b/\u00100J\u001b\u00101\u001a\u00020\u00152\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0004¢\u0006\u0004\b1\u00102J\u0017\u00103\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020\u0003H\u0014¢\u0006\u0004\b3\u0010,J\u001f\u00104\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b4\u0010*RH\u00108\u001a6\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\r05j\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\r`68\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u00107R8\u00109\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0004\u0012\u00020\u001505j\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0004\u0012\u00020\u0015`68\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u00107R$\u0010=\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u0002\u0012\u0002\b\u00030\u000b0:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006?"}, d2 = {"Lcom/chad/library/adapter/base/e;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "list", "<init>", "(Ljava/util/List;)V", "T", "Ljava/lang/Class;", "clazz", "Lcom/chad/library/adapter/base/binder/BaseItemBinder;", "baseItemBinder", "Landroidx/recyclerview/widget/DiffUtil$e;", "callback", "I1", "(Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$e;)Lcom/chad/library/adapter/base/e;", "G1", "(Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$e;)Lcom/chad/library/adapter/base/e;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "y0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", WebConstants.FIELD_ITEM, "", "F", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V", "", "payloads", "G", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V", "S1", "(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;", "T1", RequestParameters.POSITION, "P", "(I)I", "viewHolder", "z", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "V1", "", "U1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Z", "R1", "(Ljava/lang/Class;)I", "O1", "L1", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "classDiffMap", "mTypeMap", "Landroid/util/SparseArray;", "H", "Landroid/util/SparseArray;", "mBinderArray", "a", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class e extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final HashMap<Class<?>, DiffUtil.e> classDiffMap;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final HashMap<Class<?>, Integer> mTypeMap;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final SparseArray<BaseItemBinder> mBinderArray;

    private final class a extends DiffUtil.e {
        public a() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        public boolean areContentsTheSame(Object oldItem, Object newItem) {
            DiffUtil.e eVar;
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            if (!Intrinsics.c(oldItem.getClass(), newItem.getClass()) || (eVar = (DiffUtil.e) e.this.classDiffMap.get(oldItem.getClass())) == null) {
                return true;
            }
            return eVar.areContentsTheSame(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        public boolean areItemsTheSame(Object oldItem, Object newItem) {
            DiffUtil.e eVar;
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return (!Intrinsics.c(oldItem.getClass(), newItem.getClass()) || (eVar = (DiffUtil.e) e.this.classDiffMap.get(oldItem.getClass())) == null) ? Intrinsics.c(oldItem, newItem) : eVar.areItemsTheSame(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        public Object getChangePayload(Object oldItem, Object newItem) {
            DiffUtil.e eVar;
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            if (!Intrinsics.c(oldItem.getClass(), newItem.getClass()) || (eVar = (DiffUtil.e) e.this.classDiffMap.get(oldItem.getClass())) == null) {
                return null;
            }
            return eVar.getChangePayload(oldItem, newItem);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public e(List<Object> list) {
        super(0, list);
        this.classDiffMap = new HashMap<>();
        this.mTypeMap = new HashMap<>();
        this.mBinderArray = new SparseArray<>();
        R0(new a());
    }

    public /* synthetic */ e(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list);
    }

    public static /* synthetic */ e J1(e eVar, BaseItemBinder baseItemBinder, DiffUtil.e eVar2, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addItemBinder");
        }
        if ((i11 & 2) != 0) {
            eVar2 = null;
        }
        Intrinsics.h(baseItemBinder, "baseItemBinder");
        Intrinsics.n(4, "T");
        eVar.I1(Object.class, baseItemBinder, eVar2);
        return eVar;
    }

    public static /* synthetic */ e K1(e eVar, Class cls, BaseItemBinder baseItemBinder, DiffUtil.e eVar2, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addItemBinder");
        }
        if ((i11 & 4) != 0) {
            eVar2 = null;
        }
        return eVar.I1(cls, baseItemBinder, eVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean M1(BaseViewHolder viewHolder, e this$0, BaseItemBinder provider, View v11) {
        int iA0;
        Object objL0;
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(provider, "$provider");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1 || (objL0 = CollectionsKt.l0(this$0.getData(), (iA0 = bindingAdapterPosition - this$0.a0()))) == null) {
            return false;
        }
        Intrinsics.g(v11, "v");
        return provider.h(viewHolder, v11, objL0, iA0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N1(BaseViewHolder viewHolder, e this$0, BaseItemBinder provider, View v11) {
        int iA0;
        Object objL0;
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(provider, "$provider");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1 || (objL0 = CollectionsKt.l0(this$0.getData(), (iA0 = bindingAdapterPosition - this$0.a0()))) == null) {
            return;
        }
        Intrinsics.g(v11, "v");
        provider.g(viewHolder, v11, objL0, iA0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P1(BaseViewHolder viewHolder, e this$0, View it) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        BaseItemBinder baseItemBinderS1 = this$0.S1(viewHolder.getItemViewType());
        if (CollectionsKt.l0(this$0.getData(), iA0) == null) {
            return;
        }
        Intrinsics.g(it, "it");
        baseItemBinderS1.i(viewHolder, it, this$0.getData().get(iA0), iA0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean Q1(BaseViewHolder viewHolder, e this$0, View it) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        BaseItemBinder baseItemBinderS1 = this$0.S1(viewHolder.getItemViewType());
        Object objL0 = CollectionsKt.l0(this$0.getData(), iA0);
        if (objL0 == null) {
            return false;
        }
        Intrinsics.g(it, "it");
        return baseItemBinderS1.l(viewHolder, it, objL0, iA0);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        BaseItemBinder baseItemBinderT1 = T1(holder.getItemViewType());
        if (baseItemBinderT1 != null) {
            baseItemBinderT1.m(holder);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void F(BaseViewHolder holder, Object item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        S1(holder.getItemViewType()).a(holder, item);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void G(BaseViewHolder holder, Object item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        S1(holder.getItemViewType()).b(holder, item, payloads);
    }

    public final /* synthetic */ <T> e G1(BaseItemBinder baseItemBinder, DiffUtil.e callback) {
        Intrinsics.h(baseItemBinder, "baseItemBinder");
        Intrinsics.n(4, "T");
        I1(Object.class, baseItemBinder, callback);
        return this;
    }

    @JvmOverloads
    public final <T> e H1(Class<? extends T> clazz, BaseItemBinder baseItemBinder) {
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(baseItemBinder, "baseItemBinder");
        return K1(this, clazz, baseItemBinder, null, 4, null);
    }

    @JvmOverloads
    public final <T> e I1(Class<? extends T> clazz, BaseItemBinder baseItemBinder, DiffUtil.e callback) {
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(baseItemBinder, "baseItemBinder");
        int size = this.mTypeMap.size() + 1;
        this.mTypeMap.put(clazz, Integer.valueOf(size));
        this.mBinderArray.append(size, baseItemBinder);
        baseItemBinder.o(this);
        if (callback != null) {
            this.classDiffMap.put(clazz, callback);
        }
        return this;
    }

    protected void L1(final BaseViewHolder viewHolder, int viewType) {
        Intrinsics.h(viewHolder, "viewHolder");
        if (j0() == null) {
            final BaseItemBinder baseItemBinderS1 = S1(viewType);
            Iterator it = baseItemBinderS1.c().iterator();
            while (it.hasNext()) {
                View viewFindViewById = viewHolder.itemView.findViewById(((Number) it.next()).intValue());
                if (viewFindViewById != null) {
                    Intrinsics.g(viewFindViewById, "findViewById<View>(id)");
                    if (!viewFindViewById.isClickable()) {
                        viewFindViewById.setClickable(true);
                    }
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.a
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            e.N1(viewHolder, this, baseItemBinderS1, view);
                        }
                    });
                }
            }
        }
        k0();
        final BaseItemBinder baseItemBinderS2 = S1(viewType);
        Iterator it2 = baseItemBinderS2.d().iterator();
        while (it2.hasNext()) {
            View viewFindViewById2 = viewHolder.itemView.findViewById(((Number) it2.next()).intValue());
            if (viewFindViewById2 != null) {
                Intrinsics.g(viewFindViewById2, "findViewById<View>(id)");
                if (!viewFindViewById2.isLongClickable()) {
                    viewFindViewById2.setLongClickable(true);
                }
                viewFindViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.b
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return e.M1(viewHolder, this, baseItemBinderS2, view);
                    }
                });
            }
        }
    }

    protected void O1(final BaseViewHolder viewHolder) {
        Intrinsics.h(viewHolder, "viewHolder");
        if (l0() == null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.P1(viewHolder, this, view);
                }
            });
        }
        if (m0() == null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.d
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return e.Q1(viewHolder, this, view);
                }
            });
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int P(int position) {
        return R1(getData().get(position).getClass());
    }

    protected final int R1(Class<?> clazz) {
        Intrinsics.h(clazz, "clazz");
        Integer num = this.mTypeMap.get(clazz);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException(("findViewType: ViewType: " + clazz + " Not Find!").toString());
    }

    public BaseItemBinder S1(int viewType) {
        BaseItemBinder baseItemBinder = this.mBinderArray.get(viewType);
        if (baseItemBinder != null) {
            return baseItemBinder;
        }
        throw new IllegalStateException(("getItemBinder: viewType '" + viewType + "' no such Binder found，please use addItemBinder() first!").toString());
    }

    public BaseItemBinder T1(int viewType) {
        BaseItemBinder baseItemBinder = this.mBinderArray.get(viewType);
        if (baseItemBinder == null) {
            return null;
        }
        return baseItemBinder;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: U1, reason: merged with bridge method [inline-methods] */
    public boolean onFailedToRecycleView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        BaseItemBinder baseItemBinderT1 = T1(holder.getItemViewType());
        if (baseItemBinderT1 != null) {
            return baseItemBinderT1.k(holder);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: V1, reason: merged with bridge method [inline-methods] */
    public void onViewDetachedFromWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        BaseItemBinder baseItemBinderT1 = T1(holder.getItemViewType());
        if (baseItemBinderT1 != null) {
            baseItemBinderT1.n(holder);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        BaseItemBinder baseItemBinderS1 = S1(viewType);
        baseItemBinderS1.p(getContext());
        return baseItemBinderS1.j(parent, viewType);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void z(BaseViewHolder viewHolder, int viewType) {
        Intrinsics.h(viewHolder, "viewHolder");
        super.z(viewHolder, viewType);
        O1(viewHolder);
        L1(viewHolder, viewType);
    }
}
