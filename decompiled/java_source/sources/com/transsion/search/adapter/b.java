package com.transsion.search.adapter;

import android.content.Context;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.search.bean.SearchSubject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import oq.d;
import r6.f;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0011B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ%\u0010\u000e\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/transsion/search/adapter/b;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/search/bean/SearchSubject;", "Lr6/i;", "Landroid/content/Context;", "context", "", "datas", "<init>", "(Landroid/content/Context;Ljava/util/List;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "G", "a", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class b extends BaseProviderMultiAdapter<SearchSubject> implements i {
    public static final int H = 0;
    public static final int I = 1;
    private static String J = "";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context, List<SearchSubject> datas) {
        super(datas);
        Intrinsics.h(context, "context");
        Intrinsics.h(datas, "datas");
        F1(new d(context));
        F1(new oq.a());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends SearchSubject> data, int position) {
        Intrinsics.h(data, "data");
        return data.get(position).getViewType();
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
