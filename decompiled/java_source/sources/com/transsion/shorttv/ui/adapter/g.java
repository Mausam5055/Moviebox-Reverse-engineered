package com.transsion.shorttv.ui.adapter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \"2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001#BC\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u0014\u001a\u00020\u00122\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0016\u001a\u00020\u00122\b\b\u0002\u0010\u0017\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00122\b\b\u0002\u0010\u0017\u001a\u00020\b¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010 \u001a\u00020\u001f2\u000e\u0010\u001e\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u001dH\u0016¢\u0006\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/transsion/shorttv/ui/adapter/g;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Ljs/k;", "Lr6/i;", "", "dataList", "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;", "fragment", "", "videoLoadMore", "", "basePostId", "baseItemType", "fromTrending", "<init>", "(Ljava/util/List;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;ZLjava/lang/String;Ljava/lang/String;Z)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "ep", "hasTrailer", "Ljs/e;", "Q1", "(IZ)Ljs/e;", "S1", "(IZ)I", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "baseQuickAdapter", "Lr6/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;", "G", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class g extends BaseProviderMultiAdapter<js.k> implements r6.i {
    public static final int H = 1;
    public static final int I = 2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(List<js.k> dataList, ShortTvDetailListFragment fragment, boolean z10, String str, String str2, boolean z11) {
        super(CollectionsKt.U0(dataList));
        Intrinsics.h(dataList, "dataList");
        Intrinsics.h(fragment, "fragment");
        F1(new j(fragment, z10, str, str2, z11));
        F1(new f());
    }

    public /* synthetic */ g(List list, ShortTvDetailListFragment shortTvDetailListFragment, boolean z10, String str, String str2, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, shortTvDetailListFragment, z10, str, str2, (i11 & 32) != 0 ? false : z11);
    }

    public static /* synthetic */ js.e R1(g gVar, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        return gVar.Q1(i11, z10);
    }

    public static /* synthetic */ int T1(g gVar, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        return gVar.S1(i11, z10);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends js.k> data, int position) {
        Intrinsics.h(data, "data");
        return CollectionsKt.l0(data, position) instanceof js.e ? 1 : 2;
    }

    public final js.e Q1(int ep2, boolean hasTrailer) {
        Object next;
        if (getData().size() >= ep2) {
            js.k kVar = (hasTrailer || ep2 == 0) ? (js.k) CollectionsKt.l0(getData(), ep2) : (js.k) CollectionsKt.l0(getData(), ep2 - 1);
            if (kVar instanceof js.e) {
                js.e eVar = (js.e) kVar;
                if (eVar.c() == ep2) {
                    return eVar;
                }
            }
        }
        Iterator<T> it = getData().iterator();
        while (it.hasNext()) {
            next = it.next();
            js.k kVar2 = (js.k) next;
            if ((kVar2 instanceof js.e) && ((js.e) kVar2).c() == ep2) {
                return (js.e) next;
            }
        }
        next = null;
        return (js.e) next;
    }

    public final int S1(int ep2, boolean hasTrailer) {
        if (getData().size() >= ep2) {
            if (hasTrailer || ep2 == 0) {
                js.k kVar = (js.k) CollectionsKt.l0(getData(), ep2);
                if ((kVar instanceof js.e) && ((js.e) kVar).c() == ep2) {
                    return ep2;
                }
            } else {
                int i11 = ep2 - 1;
                js.k kVar2 = (js.k) CollectionsKt.l0(getData(), i11);
                if ((kVar2 instanceof js.e) && ((js.e) kVar2).c() == ep2) {
                    return i11;
                }
            }
        }
        Iterator<Object> it = getData().iterator();
        int i12 = 0;
        while (it.hasNext()) {
            js.k kVar3 = (js.k) it.next();
            if ((kVar3 instanceof js.e) && ((js.e) kVar3).c() == ep2) {
                return i12;
            }
            i12++;
        }
        return -1;
    }

    @Override // r6.i
    public r6.f b(BaseQuickAdapter baseQuickAdapter) {
        Intrinsics.h(baseQuickAdapter, "baseQuickAdapter");
        return new r6.f(baseQuickAdapter);
    }
}
