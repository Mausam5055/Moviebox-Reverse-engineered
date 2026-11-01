package com.transsion.moviedetail.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$string;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0014\u001a\u00020\f2\u000e\u0010\u0010\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u000f2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u001a\u001a\u00020\f2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u001a\u0010\u001bJ'\u0010\u001e\u001a\u00020\f2\u0018\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010!\u001a\u00020\f2\u0006\u0010 \u001a\u00020\t¢\u0006\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R*\u0010(\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010'R\u0016\u0010+\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lcom/transsion/moviedetail/view/DetailSeasonTabView;", "Landroidx/recyclerview/widget/RecyclerView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", RequestParameters.POSITION, "", "isClick", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Lcom/chad/library/adapter/base/BaseQuickAdapter;IZ)V", "", "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;", "list", "subjectType", "setContentData", "(Ljava/util/List;Ljava/lang/Integer;)V", "Lkotlin/Function2;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setItemClickListener", "(Lkotlin/jvm/functions/Function2;)V", "season", "selectSeason", "(I)V", "Lcom/transsion/moviedetail/view/u;", "a", "Lcom/transsion/moviedetail/view/u;", "resolutionTabAdapter", "Lkotlin/jvm/functions/Function2;", "itemClickListener", "c", "I", "curPosition", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DetailSeasonTabView extends RecyclerView {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private u resolutionTabAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Function2 itemClickListener;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int curPosition;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DetailSeasonTabView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DetailSeasonTabView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DetailSeasonTabView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.curPosition = -1;
        b();
    }

    private final void b() {
        u uVar = new u();
        uVar.w1(new p6.d() { // from class: com.transsion.moviedetail.view.a
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                DetailSeasonTabView.c(this.f47395a, baseQuickAdapter, view, i11);
            }
        });
        this.resolutionTabAdapter = uVar;
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        addItemDecoration(new ig.d(dk.a.b(12)));
        setAdapter(this.resolutionTabAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(DetailSeasonTabView detailSeasonTabView, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(999001, 500L) || i11 == detailSeasonTabView.curPosition) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_tips);
        } else {
            detailSeasonTabView.d(adapter, i11, true);
            detailSeasonTabView.smoothScrollToPosition(i11);
        }
    }

    private final void d(BaseQuickAdapter adapter, int position, boolean isClick) {
        Function2 function2;
        try {
            Object item = adapter.getItem(this.curPosition);
            ResourcesSeason resourcesSeason = item instanceof ResourcesSeason ? (ResourcesSeason) item : null;
            if (resourcesSeason != null) {
                resourcesSeason.setSelected(false);
            }
            adapter.notifyItemChanged(this.curPosition, Boolean.FALSE);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        Object item2 = adapter.getItem(position);
        ResourcesSeason resourcesSeason2 = item2 instanceof ResourcesSeason ? (ResourcesSeason) item2 : null;
        if (resourcesSeason2 != null) {
            resourcesSeason2.setSelected(true);
        }
        adapter.notifyItemChanged(position, Boolean.TRUE);
        if (resourcesSeason2 != null) {
            this.curPosition = position;
            if (!isClick || (function2 = this.itemClickListener) == null) {
                return;
            }
            function2.invoke(Integer.valueOf(position), resourcesSeason2);
        }
    }

    public final void selectSeason(int season) {
        u uVar;
        List<Object> data;
        u uVar2 = this.resolutionTabAdapter;
        if (uVar2 == null) {
            return;
        }
        int i11 = -1;
        if (uVar2 != null && (data = uVar2.getData()) != null) {
            Iterator<Object> it = data.iterator();
            int i12 = 0;
            while (it.hasNext()) {
                if (((ResourcesSeason) it.next()).getSe() == season) {
                    i11 = i12;
                    break;
                }
                i12++;
            }
        }
        if (i11 >= 0 && (uVar = this.resolutionTabAdapter) != null) {
            d(uVar, i11, false);
        }
    }

    public final void setContentData(List<ResourcesSeason> list, Integer subjectType) {
        Unit unit;
        Intrinsics.h(list, "list");
        this.curPosition = 0;
        Iterator<T> it = list.iterator();
        if (it.hasNext()) {
            ((ResourcesSeason) it.next()).setSelected(true);
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit == null) {
            throw new NoSuchElementException("No element of the collection was transformed to a non-null value.");
        }
        u uVar = this.resolutionTabAdapter;
        if (uVar != null) {
            uVar.E1(subjectType);
        }
        u uVar2 = this.resolutionTabAdapter;
        if (uVar2 != null) {
            uVar2.n1(list);
        }
    }

    public final void setItemClickListener(Function2<? super Integer, ? super ResourcesSeason, Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.itemClickListener = listener;
    }
}
