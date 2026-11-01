package com.transsion.ugcvideodetail.adapter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import r6.k;
import r6.l;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001\u0014B/\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0011\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/transsion/ugcvideodetail/adapter/a;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "Lr6/i;", "Lr6/l;", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;", "fragment", "", "trackId", "previousTrackId", "previousPageVideoId", "<init>", "(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "G", "a", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseProviderMultiAdapter<UGCImmVideo> implements r6.i, l {
    public static final int H = 1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(UGCImmVideoDetailFragment fragment, String trackId, String str, String str2) {
        super(null, 1, null);
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(trackId, "trackId");
        F1(new c(fragment, trackId, str, str2));
    }

    public /* synthetic */ a(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, String str, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(uGCImmVideoDetailFragment, str, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends UGCImmVideo> data, int position) {
        Intrinsics.h(data, "data");
        return 1;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }

    @Override // r6.l
    public /* bridge */ /* synthetic */ r6.g f(BaseQuickAdapter baseQuickAdapter) {
        return k.a(this, baseQuickAdapter);
    }
}
