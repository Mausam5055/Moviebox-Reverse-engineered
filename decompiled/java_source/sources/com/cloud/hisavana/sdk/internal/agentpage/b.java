package com.cloud.hisavana.sdk.internal.agentpage;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.b0;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.q3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends G {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f22548i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f22549j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private a f22550k;

    public interface a {
        void a(List list);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(q3 fetchInfo) {
        super(fetchInfo);
        Intrinsics.h(fetchInfo, "fetchInfo");
        this.f22548i = "TranAgentPage";
        this.f22549j = new ArrayList();
    }

    public final void F(a adListener) {
        Intrinsics.h(adListener, "adListener");
        this.f22550k = adListener;
    }

    @Override // com.cloud.hisavana.sdk.G, com.cloud.hisavana.sdk.api.listener.f
    public void b(TaErrorCode taErrorCode, Bundle bundle) {
        a aVar = this.f22550k;
        if (aVar != null) {
            aVar.a(new ArrayList());
        }
        super.b(taErrorCode, bundle);
    }

    @Override // com.cloud.hisavana.sdk.G, com.cloud.hisavana.sdk.api.listener.f
    public void d(List list, Bundle bundle) {
        e4 e4VarB = e4.b();
        String str = this.f22548i;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onAdLoadedStub ads size = ");
        sb2.append(list != null ? Integer.valueOf(list.size()) : null);
        e4VarB.i(str, sb2.toString());
        if (list == null || list.size() == 0) {
            e4.b().d(this.f22548i, "onAdLoadedStub ads = null");
            a aVar = this.f22550k;
            if (aVar != null) {
                aVar.a(new ArrayList());
                return;
            }
            return;
        }
        IDiskCache iDiskCacheG = DiskLruCacheUtil.g(4);
        if (iDiskCacheG == null) {
            e4.b().e(this.f22548i, "get getDiskCache failed");
            return;
        }
        this.f22549j.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            String strJ = b0.f21683a.j(adsDTO);
            if (!TextUtils.isEmpty(strJ) && iDiskCacheG.c(new ImageCacheURL(strJ)) != null) {
                this.f22549j.add(adsDTO);
            }
        }
        a aVar2 = this.f22550k;
        if (aVar2 != null) {
            List mAdBeans = this.f22549j;
            Intrinsics.g(mAdBeans, "mAdBeans");
            aVar2.a(mAdBeans);
        }
    }

    @Override // com.cloud.hisavana.sdk.G
    public void m() {
        e4.b().d(this.f22548i, "TranAgentPage destroy");
        this.f22550k = null;
        this.f22549j.clear();
        super.m();
    }
}
