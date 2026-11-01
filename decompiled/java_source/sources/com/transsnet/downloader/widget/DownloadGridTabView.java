package com.transsnet.downloader.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\u0014\u001a\u00020\u000f2\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000f0\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0018\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u001fR\u0016\u0010#\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R*\u0010&\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/transsnet/downloader/widget/DownloadGridTabView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", RequestParameters.POSITION, "Lcom/transsnet/downloader/widget/e;", WebConstants.FIELD_ITEM, "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(ILcom/transsnet/downloader/widget/e;)V", "Lkotlin/Function2;", "callback", "setItemClickCallback", "(Lkotlin/jvm/functions/Function2;)V", "", "dataList", "setDataList", "(Ljava/util/List;)V", "Lpy/v0;", "a", "Lpy/v0;", "viewBinding", "Lcom/transsnet/downloader/widget/d;", "Lcom/transsnet/downloader/widget/d;", "mAdapter", "c", "I", "curIndex", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function2;", "itemClickCallback", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadGridTabView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final py.v0 viewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private d mAdapter;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int curIndex;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Function2 itemClickCallback;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadGridTabView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadGridTabView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadGridTabView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        View.inflate(getContext(), R$layout.layout_download_grid_tab, this);
        py.v0 v0VarA = py.v0.a(this);
        Intrinsics.g(v0VarA, "bind(...)");
        this.viewBinding = v0VarA;
        final d dVar = new d();
        dVar.w1(new p6.d() { // from class: com.transsnet.downloader.widget.f
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                DownloadGridTabView.c(dVar, this, baseQuickAdapter, view, i12);
            }
        });
        this.mAdapter = dVar;
        RecyclerView recyclerView = v0VarA.f72948b;
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 4));
        recyclerView.addItemDecoration(new ig.a(dk.a.b(8), dk.a.b(8), 0, 0));
        recyclerView.setAdapter(this.mAdapter);
    }

    private final void b(int position, e item) {
        int size = this.mAdapter.getData().size();
        int i11 = this.curIndex;
        if (size > i11) {
            ((e) this.mAdapter.getItem(i11)).c(false);
            this.mAdapter.notifyItemChanged(this.curIndex, Boolean.FALSE);
        }
        if (this.mAdapter.getData().size() > position) {
            this.curIndex = position;
            item.c(true);
            this.mAdapter.notifyItemChanged(position, Boolean.TRUE);
        }
        Function2 function2 = this.itemClickCallback;
        if (function2 != null) {
            function2.invoke(Integer.valueOf(position), item);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(d dVar, DownloadGridTabView downloadGridTabView, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        downloadGridTabView.b(i11, (e) dVar.getItem(i11));
    }

    public final void setDataList(List<e> dataList) {
        Intrinsics.h(dataList, "dataList");
        Iterator<e> it = dataList.iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            } else if (it.next().b()) {
                break;
            } else {
                i11++;
            }
        }
        this.curIndex = i11;
        if (i11 < 0) {
            this.curIndex = 0;
        }
        this.mAdapter.n1(dataList);
    }

    public final void setItemClickCallback(Function2<? super Integer, ? super e, Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.itemClickCallback = callback;
    }
}
