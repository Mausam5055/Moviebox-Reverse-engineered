package com.transsion.videodetail.music.adapter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.transsion.videodetail.music.bean.MusicLikedMultiItemEntity;
import com.transsion.videodetail.music.bean.MusicLikedUITypeEnum;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J%\u0010\u000b\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/transsion/videodetail/music/adapter/a;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;", "Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;", "uiType", "<init>", "(Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseProviderMultiAdapter<MusicLikedMultiItemEntity> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(MusicLikedUITypeEnum uiType) {
        super(null, 1, null);
        Intrinsics.h(uiType, "uiType");
        F1(new c(uiType));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends MusicLikedMultiItemEntity> data, int position) {
        Intrinsics.h(data, "data");
        return data.get(position).getType();
    }
}
