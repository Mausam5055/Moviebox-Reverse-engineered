package com.transsion.postdetail.ui.adapter;

import androidx.fragment.app.Fragment;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001aB_\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\n\u0012\b\b\u0002\u0010\u000f\u001a\u00020\n\u0012\b\b\u0002\u0010\u0010\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\u0017\u001a\u00020\u00152\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/transsion/postdetail/ui/adapter/e;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "Lr6/i;", "", "dataList", "Landroidx/fragment/app/Fragment;", "fragment", "", "videoLoadMore", "", "basePostId", "baseItemType", "attachToMain", "commentId", "pageFrom", "isFromDownloaded", "<init>", "(Ljava/util/List;Landroidx/fragment/app/Fragment;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "G", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class e extends BaseProviderMultiAdapter<PostSubjectItem> implements r6.i {
    public static final int H = 1;
    public static final int I = 2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(List<PostSubjectItem> dataList, Fragment fragment, boolean z10, String str, String str2, boolean z11, String commentId, String pageFrom, boolean z12) {
        super(CollectionsKt.U0(dataList));
        Intrinsics.h(dataList, "dataList");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(commentId, "commentId");
        Intrinsics.h(pageFrom, "pageFrom");
        F1(new bp.e(fragment, z10, str, str2, z11, commentId, pageFrom, z12));
        F1(new bp.d());
    }

    public /* synthetic */ e(List list, Fragment fragment, boolean z10, String str, String str2, boolean z11, String str3, String str4, boolean z12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, fragment, z10, str, str2, z11, (i11 & 64) != 0 ? "" : str3, (i11 & 128) != 0 ? "" : str4, (i11 & 256) != 0 ? false : z12);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends PostSubjectItem> data, int position) {
        Intrinsics.h(data, "data");
        return data.get(position).getNonAdDelegate() == null ? 1 : 2;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
