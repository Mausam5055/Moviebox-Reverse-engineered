package com.transsion.usercenter.me.adapter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\f\u0018\u0000 \u00162\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017BG\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003\u0012\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ%\u0010\u000e\u001a\u00020\f2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0012\u0010\u0011R\"\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\"\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/transsion/usercenter/me/adapter/o;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/usercenter/profile/bean/MeItemInfo;", "", "data", "Lkotlin/Function1;", "", "itemClickCallback", "kidModeClickCallback", "<init>", "(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Q1", "()Lkotlin/jvm/functions/Function1;", "R1", "G", "Lkotlin/jvm/functions/Function1;", "H", "I", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class o extends BaseProviderMultiAdapter<MeItemInfo> {
    public static final int J = 1;
    public static final int K = 2;
    public static final int L = 3;
    public static final int M = 4;
    public static final int N = 5;
    public static final int O = 6;
    public static final int P = 7;
    public static final int Q = 8;
    public static final int R = 9;
    public static final int S = 10;
    public static final int T = 11;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final Function1<MeItemInfo, Unit> itemClickCallback;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final Function1<MeItemInfo, Unit> kidModeClickCallback;

    public o() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public o(List<MeItemInfo> data, Function1<? super MeItemInfo, Unit> function1, Function1<? super MeItemInfo, Unit> function2) {
        super(data);
        Intrinsics.h(data, "data");
        this.itemClickCallback = function1;
        this.kidModeClickCallback = function2;
        F1(new b0(this));
        F1(new f0(this));
        F1(new x(this));
        F1(new u(this));
        F1(new h0(this));
        F1(new HistoryMineItemProvider(this));
        F1(new k(this));
        F1(new n(this));
        F1(new b());
        F1(new r());
    }

    public /* synthetic */ o(List list, Function1 function1, Function1 function2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new ArrayList() : list, (i11 & 2) != 0 ? null : function1, (i11 & 4) != 0 ? null : function2);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends MeItemInfo> data, int position) {
        Intrinsics.h(data, "data");
        return data.get(position).getType();
    }

    public final Function1<MeItemInfo, Unit> Q1() {
        return this.itemClickCallback;
    }

    public final Function1<MeItemInfo, Unit> R1() {
        return this.kidModeClickCallback;
    }
}
