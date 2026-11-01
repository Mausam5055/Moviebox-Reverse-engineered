package v6;

import com.cloud.hisavana.abtestkit.ABTestKitConfig;
import com.cloud.hisavana.abtestkit.bean.OnlineABLayerDTO;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class i {

    public static final class a {
        public final void a(long j11, int i11) {
            if (400 > i11 || i11 >= 500) {
                return;
            }
            e.b(j11);
        }
    }

    public static void a(final long j11, final long j12, final ABTestKitConfig aBTestKitConfig) {
        HSScopeHelper.f23167a.i(new Runnable() { // from class: v6.h
            @Override // java.lang.Runnable
            public final void run() {
                i.b(j11, j12, aBTestKitConfig);
            }
        });
    }

    public static final void b(long j11, long j12, ABTestKitConfig aBTestKitConfig) {
        String str;
        if (!MitNetUtil.c(com.cloud.sdk.commonutil.util.e.a())) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "ABFetcher fail, network is disconnect");
            return;
        }
        AtomicBoolean atomicBoolean = e.f77055a;
        OnlineABLayerDTO onlineABLayerDTO = (OnlineABLayerDTO) l.f77065a.get(Long.valueOf(j11));
        if (System.currentTimeMillis() - (onlineABLayerDTO != null ? onlineABLayerDTO.getRequestTime() : 0L) <= j12) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "ABFetcher fail, request interval not met");
            return;
        }
        a aVar = new a();
        CopyOnWriteArrayList copyOnWriteArrayList = k.f77064a;
        if (copyOnWriteArrayList.contains(Long.valueOf(j11))) {
            com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "ABHttp request status = requesting, reqQueue = " + copyOnWriteArrayList);
            return;
        }
        copyOnWriteArrayList.add(Long.valueOf(j11));
        Long lValueOf = Long.valueOf(j11);
        com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "getLayerUrl layerId = " + lValueOf);
        if (aBTestKitConfig != null ? Intrinsics.c(aBTestKitConfig.getUseTestEnvironment(), Boolean.TRUE) : false) {
            str = "https://test-api-accel.shalltry.com/v2/layers/" + j11 + "/summary";
        } else {
            str = "https://api.galileoab.com/v2/layers/" + j11 + "/summary";
        }
        String str2 = aBTestKitConfig != null ? Intrinsics.c(aBTestKitConfig.getUseTestEnvironment(), Boolean.TRUE) : false ? "5N0YBoq.hQJd6zuuGZFtKzB0snSgo1BG" : "kyHauhL.gnQ1cJdVp0RsibhEBqhLELK9";
        RequestParams requestParams = new RequestParams();
        requestParams.i("x-api-key", str2);
        HttpRequest.f21328a.h(str, requestParams, new j(str, requestParams, j11, aVar));
    }
}
