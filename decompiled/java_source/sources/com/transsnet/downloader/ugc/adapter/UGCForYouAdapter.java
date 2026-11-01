package com.transsnet.downloader.ugc.adapter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsnet.downloader.ugc.adapter.provider.UGCForYouGridProvider;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import r6.f;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\fB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\n\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/transsnet/downloader/ugc/adapter/UGCForYouAdapter;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "Lr6/i;", "<init>", "()V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "ItemType", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UGCForYouAdapter extends BaseProviderMultiAdapter<UGCVideo> implements i {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/transsnet/downloader/ugc/adapter/UGCForYouAdapter$ItemType;", "", "<init>", "(Ljava/lang/String;I)V", "UGC_GRID_ITEM", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum ItemType {
        UGC_GRID_ITEM;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<ItemType> getEntries() {
            return $ENTRIES;
        }
    }

    public UGCForYouAdapter() {
        super(null, 1, null);
        F1(new UGCForYouGridProvider());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends UGCVideo> data, int position) {
        Intrinsics.h(data, "data");
        return ItemType.UGC_GRID_ITEM.ordinal();
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
