package com.chad.library.adapter.base;

import android.util.SparseIntArray;
import android.view.ViewGroup;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import n6.a;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005B\u0019\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0011\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\n2\b\b\u0001\u0010\u0014\u001a\u00020\nH\u0004¢\u0006\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;", "Ln6/a;", "T", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "VH", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "data", "<init>", "(Ljava/util/List;)V", "", RequestParameters.POSITION, "P", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "y0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", NativeComponentConstants.KEY_COMPONENT_TYPE, "layoutResId", "", "B1", "(II)V", "Landroid/util/SparseIntArray;", "F", "Lkotlin/Lazy;", "C1", "()Landroid/util/SparseIntArray;", "layouts", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class BaseMultiItemQuickAdapter<T extends n6.a, VH extends BaseViewHolder> extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final Lazy layouts;

    /* JADX WARN: Multi-variable type inference failed */
    public BaseMultiItemQuickAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public BaseMultiItemQuickAdapter(List<T> list) {
        super(0, list);
        this.layouts = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<SparseIntArray>() { // from class: com.chad.library.adapter.base.BaseMultiItemQuickAdapter$layouts$2
            @Override // kotlin.jvm.functions.Function0
            public final SparseIntArray invoke() {
                return new SparseIntArray();
            }
        });
    }

    public /* synthetic */ BaseMultiItemQuickAdapter(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list);
    }

    private final SparseIntArray C1() {
        return (SparseIntArray) this.layouts.getValue();
    }

    protected final void B1(int type, int layoutResId) {
        C1().put(type, layoutResId);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int P(int position) {
        return ((n6.a) getData().get(position)).getItemType();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected VH y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        int i11 = C1().get(viewType);
        if (i11 != 0) {
            return (VH) J(parent, i11);
        }
        throw new IllegalArgumentException(("ViewType: " + viewType + " found layoutResId，please use addItemType() first!").toString());
    }
}
