package com.chad.library.adapter.base;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import n6.b;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000b\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005B%\b\u0007\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bB/\b\u0016\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\f\u001a\u00020\u0006\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\b¢\u0006\u0004\b\n\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00028\u0000H$¢\u0006\u0004\b\u0011\u0010\u0012J-\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00028\u00002\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\bH\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00102\b\b\u0001\u0010\f\u001a\u00020\u0006H\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00028\u00012\u0006\u0010\u001e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010 J-\u0010!\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00028\u00012\u0006\u0010\u001e\u001a\u00020\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\bH\u0016¢\u0006\u0004\b!\u0010\"R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lcom/chad/library/adapter/base/o;", "Ln6/b;", "T", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "VH", "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;", "", "sectionHeadResId", "", "data", "<init>", "(ILjava/util/List;)V", "layoutResId", "(IILjava/util/List;)V", "helper", WebConstants.FIELD_ITEM, "", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ln6/b;)V", "", "payloads", "E1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ln6/b;Ljava/util/List;)V", "F1", "(I)V", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "u0", "(I)Z", "holder", RequestParameters.POSITION, "w0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V", "x0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V", "G", "I", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class o<T extends n6.b, VH extends BaseViewHolder> extends BaseMultiItemQuickAdapter<T, VH> {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int sectionHeadResId;

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public o(int i11) {
        this(i11, null, 2, 0 == true ? 1 : 0);
    }

    public o(int i11, int i12, List<T> list) {
        this(i11, list);
        F1(i12);
    }

    public /* synthetic */ o(int i11, int i12, List list, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, i12, (i13 & 4) != 0 ? null : list);
    }

    @JvmOverloads
    public o(int i11, List<T> list) {
        super(list);
        this.sectionHeadResId = i11;
        B1(-99, i11);
    }

    public /* synthetic */ o(int i11, List list, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, (i12 & 2) != 0 ? null : list);
    }

    protected abstract void D1(VH helper, T item);

    protected void E1(VH helper, T item, List<Object> payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
    }

    protected final void F1(int layoutResId) {
        B1(-100, layoutResId);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected boolean u0(int type) {
        return super.u0(type) || type == -99;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: w0 */
    public void onBindViewHolder(VH holder, int position) {
        Intrinsics.h(holder, "holder");
        if (holder.getItemViewType() != -99) {
            super.onBindViewHolder(holder, position);
        } else {
            android.support.v4.media.session.c.a(getItem(position - a0()));
            D1(holder, null);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: x0 */
    public void onBindViewHolder(VH holder, int position, List<Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, position);
        } else if (holder.getItemViewType() != -99) {
            super.onBindViewHolder(holder, position, payloads);
        } else {
            android.support.v4.media.session.c.a(getItem(position - a0()));
            E1(holder, null, payloads);
        }
    }
}
