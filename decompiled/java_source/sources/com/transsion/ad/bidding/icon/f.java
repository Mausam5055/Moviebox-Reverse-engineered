package com.transsion.ad.bidding.icon;

import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.ps.distribute.PSDistributionRequestManager;
import com.transsion.ad.ps.model.RecommendInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends di.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private di.a f41958d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f41959e;

    public static /* synthetic */ Object A(f fVar, int i11, String str, String str2, Continuation continuation, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            str2 = "";
        }
        return fVar.z(i11, str, str2, continuation);
    }

    private final int y(String str) {
        return com.transsion.ad.scene.a.f42201a.o(str, 10);
    }

    public final void B(boolean z10) {
        this.f41959e = z10;
    }

    public final void C(di.a aVar) {
        this.f41958d = aVar;
    }

    @Override // di.a
    public void e(TAdErrorCode tAdErrorCode, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.e(tAdErrorCode, biddingIntermediateMaterialBean);
        di.a aVar = this.f41958d;
        if (aVar != null) {
            aVar.e(tAdErrorCode, biddingIntermediateMaterialBean);
        }
    }

    @Override // di.a
    public void v(List list) {
        super.v(list);
        if (this.f41959e) {
            ArrayList arrayList = new ArrayList();
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    RecommendInfo recommendInfo = (RecommendInfo) it.next();
                    if (!qi.b.f73634a.c(recommendInfo.getPackageName())) {
                        arrayList.add(recommendInfo);
                    }
                }
            }
            list = arrayList;
        }
        di.a aVar = this.f41958d;
        if (aVar != null) {
            aVar.v(list);
        }
    }

    public final void x() {
        this.f41958d = null;
    }

    public final Object z(int i11, String str, String str2, Continuation continuation) throws Throwable {
        Object objD = PSDistributionRequestManager.f42185a.d(i11, y(str), str, str2, this, continuation);
        return objD == IntrinsicsKt.f() ? objD : Unit.f67061a;
    }
}
