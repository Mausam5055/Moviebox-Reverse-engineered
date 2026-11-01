package com.cloud.tmc.integration.utils.ext;

import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper$fillingTrackingMap$1;
import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\u001a7\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u0003`\u0004\"\u0006\b\u0000\u0010\u0003\u0018\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0086\b\u001aI\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u0003`\u0004\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\b\"\u0006\b\u0002\u0010\u0003\u0018\u0001*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\tH\u0086\b¨\u0006\n"}, d2 = {"cast2HashMap", "Ljava/util/HashMap;", "", "T", "Lkotlin/collections/HashMap;", "any", "", "K", "V", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MapExtKt {
    public static final /* synthetic */ <T> HashMap<String, T> cast2HashMap(Object obj) {
        SSPTrackingHelper$fillingTrackingMap$1 sSPTrackingHelper$fillingTrackingMap$1 = (HashMap<String, T>) new HashMap();
        if (obj instanceof HashMap) {
            for (Object obj2 : ((HashMap) obj).keySet()) {
                Map map = (Map) obj;
                Object obj3 = map.get(obj2);
                Intrinsics.n(3, "T");
                if (obj3 instanceof Object) {
                    String string = obj2.toString();
                    Object obj4 = map.get(obj2);
                    Intrinsics.n(1, "T");
                    sSPTrackingHelper$fillingTrackingMap$1.put(string, obj4);
                }
            }
        }
        return sSPTrackingHelper$fillingTrackingMap$1;
    }

    public static final /* synthetic */ <K, V, T> HashMap<String, T> cast2HashMap(Map<K, ? extends V> map) {
        Intrinsics.h(map, "<this>");
        HashMap<String, T> map2 = new HashMap<>();
        if (map instanceof HashMap) {
            for (K k11 : ((HashMap) map).keySet()) {
                V v11 = map.get(k11);
                Intrinsics.n(3, "T");
                if (v11 instanceof Object) {
                    String string = k11.toString();
                    V v12 = map.get(k11);
                    Intrinsics.n(1, "T");
                    map2.put(string, v12);
                }
            }
        }
        return map2;
    }
}
