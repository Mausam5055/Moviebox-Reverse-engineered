package v6;

import android.util.Log;
import com.cloud.hisavana.abtestkit.bean.ABLayerInfo;
import com.cloud.hisavana.abtestkit.bean.ABSubExpInfo;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.google.common.hash.d f77056a;

    static {
        com.google.common.hash.d dVarB = com.google.common.hash.f.b(0);
        Intrinsics.g(dVarB, "murmur3_128(...)");
        f77056a = dVarB;
    }

    public static final ABVariantState a(ABLayerInfo aBLayerInfo) {
        List<ABSubExpInfo> subExps;
        List<Long> buckets;
        String strE = DeviceUtil.e();
        if (strE == null || strE.length() == 0) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "ABChecker check fail, gaid is empty");
            return new ABVariantState.Closed(2);
        }
        if (aBLayerInfo == null || (subExps = aBLayerInfo.getSubExps()) == null || subExps.isEmpty()) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "ABChecker check fail, abLayerInfo is null or subExps is empty");
            return new ABVariantState.Closed(3);
        }
        Map<String, Long> whiteList = aBLayerInfo.getWhiteList();
        boolean zContainsKey = whiteList != null ? whiteList.containsKey(DeviceUtil.e()) : false;
        if (Log.isLoggable("ADSDK", 3)) {
            com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "ABChecker check, whiteResult = " + zContainsKey);
        }
        if (zContainsKey) {
            Map<String, Long> whiteList2 = aBLayerInfo.getWhiteList();
            Long l11 = whiteList2 != null ? whiteList2.get(DeviceUtil.e()) : null;
            if (Log.isLoggable("ADSDK", 3)) {
                com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "ABChecker check, whiteValue = " + l11);
            }
            for (ABSubExpInfo aBSubExpInfo : aBLayerInfo.getSubExps()) {
                if (aBSubExpInfo != null && aBSubExpInfo.getVarId() != null && Intrinsics.c(aBSubExpInfo.getVarId(), l11)) {
                    return new ABVariantState.Open(ABVariant.INSTANCE.initFromSubExpInfo(aBLayerInfo.getLayerId(), aBSubExpInfo));
                }
            }
        }
        if (aBLayerInfo.getProjectId() == null || aBLayerInfo.getLayerId() == null) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "ABChecker check fail, projectId is null or layerId is null");
            return new ABVariantState.Closed(4);
        }
        try {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format("%s_%s_%s", Arrays.copyOf(new Object[]{aBLayerInfo.getProjectId(), aBLayerInfo.getLayerId(), DeviceUtil.e()}, 3));
            Intrinsics.g(str, "format(...)");
            long jA = f.a(f77056a.hashString(str, StandardCharsets.UTF_8).asLong(), 1000L);
            if (Log.isLoggable("ADSDK", 3)) {
                com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "ABChecker check, hashStr = " + str + " and hashVal = " + jA);
            }
            for (ABSubExpInfo aBSubExpInfo2 : aBLayerInfo.getSubExps()) {
                if (aBSubExpInfo2 != null && (buckets = aBSubExpInfo2.getBuckets()) != null && !buckets.isEmpty() && aBSubExpInfo2.getBuckets().contains(Long.valueOf(jA))) {
                    return new ABVariantState.Open(ABVariant.INSTANCE.initFromSubExpInfo(aBLayerInfo.getLayerId(), aBSubExpInfo2));
                }
            }
            return new ABVariantState.Closed(6);
        } catch (Exception e11) {
            com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", "ABChecker check fail, hashStr =  and reason = " + e11.getMessage());
            return new ABVariantState.Closed(5);
        }
    }
}
