package com.chad.library.adapter.base;

import android.view.ViewGroup;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004B\u0019\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0014\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0017\u0010\u0018R\u001e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/chad/library/adapter/base/f;", "T", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "VH", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "data", "<init>", "(Ljava/util/List;)V", "Ll6/a;", "multiTypeDelegate", "", "C1", "(Ll6/a;)V", "B1", "()Ll6/a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "y0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", RequestParameters.POSITION, "P", "(I)I", "F", "Ll6/a;", "mMultiTypeDelegate", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class f<T, VH extends BaseViewHolder> extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private l6.a mMultiTypeDelegate;

    /* JADX WARN: Multi-variable type inference failed */
    public f() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public f(List<T> list) {
        super(0, list);
    }

    public /* synthetic */ f(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list);
    }

    /* JADX INFO: renamed from: B1, reason: from getter */
    public final l6.a getMMultiTypeDelegate() {
        return this.mMultiTypeDelegate;
    }

    public final void C1(l6.a multiTypeDelegate) {
        Intrinsics.h(multiTypeDelegate, "multiTypeDelegate");
        this.mMultiTypeDelegate = multiTypeDelegate;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int P(int position) {
        l6.a mMultiTypeDelegate = getMMultiTypeDelegate();
        if (mMultiTypeDelegate != null) {
            return mMultiTypeDelegate.a(getData(), position);
        }
        throw new IllegalStateException("Please use setMultiTypeDelegate first!");
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected VH y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        l6.a mMultiTypeDelegate = getMMultiTypeDelegate();
        if (mMultiTypeDelegate != null) {
            return (VH) J(parent, mMultiTypeDelegate.b(viewType));
        }
        throw new IllegalStateException("Please use setMultiTypeDelegate first!");
    }
}
