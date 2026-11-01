package com.transsnet.downloader.ugc.adapter;

import android.view.View;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsnet.downloader.ugc.adapter.provider.UGCForYouStaggeredProvider;
import com.transsnet.downloader.ugc.adapter.provider.d;
import com.transsnet.downloader.ugc.adapter.provider.e;
import com.transsnet.downloader.ugc.adapter.provider.f;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0011B\u0019\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\r\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\r\u0010\u000eR\u001c\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsnet/downloader/ugc/adapter/c;", "Lr6/i;", "Lkotlin/Function0;", "Landroid/view/View;", "getEmptyView", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "G", "Lkotlin/jvm/functions/Function0;", "ItemType", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UGCDownloadStaggeredAdapter extends BaseProviderMultiAdapter<c> implements i {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final Function0<View> getEmptyView;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;", "", "<init>", "(Ljava/lang/String;I)V", "DOWNLOADING", "DOWNLOADED", "MORE_WAITING", "FOR_YOU_TITLE", "EMPTY", "FOR_YOU", "ALL_EP_BTN", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum ItemType {
        DOWNLOADING,
        DOWNLOADED,
        MORE_WAITING,
        FOR_YOU_TITLE,
        EMPTY,
        FOR_YOU,
        ALL_EP_BTN;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<ItemType> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UGCDownloadStaggeredAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UGCDownloadStaggeredAdapter(Function0<? extends View> function0) {
        super(null, 1, null);
        this.getEmptyView = function0;
        F1(new com.transsnet.downloader.ugc.adapter.provider.c());
        F1(new com.transsnet.downloader.ugc.adapter.provider.b());
        F1(new f());
        F1(new e());
        F1(new d(function0));
        F1(new UGCForYouStaggeredProvider());
        F1(new com.transsnet.downloader.ugc.adapter.provider.a());
    }

    public /* synthetic */ UGCDownloadStaggeredAdapter(Function0 function0, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : function0);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends c> data, int position) {
        Intrinsics.h(data, "data");
        c cVar = data.get(position);
        if (cVar instanceof c.C0695c) {
            return ((c.C0695c) cVar).b().getIsMore() ? ItemType.MORE_WAITING.ordinal() : ItemType.DOWNLOADING.ordinal();
        }
        if (cVar instanceof c.b) {
            return ItemType.DOWNLOADED.ordinal();
        }
        if (cVar instanceof c.f) {
            return ItemType.FOR_YOU_TITLE.ordinal();
        }
        if (cVar instanceof c.d) {
            return ItemType.EMPTY.ordinal();
        }
        if (cVar instanceof c.e) {
            return ItemType.FOR_YOU.ordinal();
        }
        if (cVar instanceof c.a) {
            return ItemType.ALL_EP_BTN.ordinal();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
