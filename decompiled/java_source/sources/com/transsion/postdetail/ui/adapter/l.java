package com.transsion.postdetail.ui.adapter;

import androidx.fragment.app.Fragment;
import bp.b0;
import bp.c0;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0016B9\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0013\u001a\u00020\u00112\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/transsion/postdetail/ui/adapter/l;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lr6/i;", "", "dataList", "Landroidx/fragment/app/Fragment;", "fragment", "", "basePostId", "baseItemType", "", "attachToMain", "<init>", "(Ljava/util/List;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Z)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "G", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class l extends BaseProviderMultiAdapter<Subject> implements r6.i {
    public static final int H = 1;
    public static final int I = 2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(List<Subject> dataList, Fragment fragment, String str, String str2, boolean z10) {
        super(CollectionsKt.U0(dataList));
        Intrinsics.h(dataList, "dataList");
        Intrinsics.h(fragment, "fragment");
        F1(new c0(fragment, str, str2, z10));
        F1(new b0());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends Subject> data, int position) {
        Intrinsics.h(data, "data");
        return data.get(position).getNonAdDelegate() == null ? 1 : 2;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
