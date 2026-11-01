package com.cloud.tmc.miniapp.performanceanalyse;

import com.cloud.tmc.kernel.proxy.performanceanalyse.ICommunicationTimeProxy;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class CommunicationTime implements ICommunicationTimeProxy {
    public final Map<String, Long> OooO00o = new LinkedHashMap();
    public final Map<String, Integer> OooO0O0 = new LinkedHashMap();

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.ICommunicationTimeProxy
    public void clear(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        this.OooO00o.remove(str);
        this.OooO0O0.remove(str);
    }

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.ICommunicationTimeProxy
    public int getTotalNum(String str) {
        Integer num;
        if (str == null || str.length() == 0 || (num = this.OooO0O0.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.ICommunicationTimeProxy
    public long getTotalTime(String str) {
        Long l11;
        if (str == null || str.length() == 0 || (l11 = this.OooO00o.get(str)) == null) {
            return 0L;
        }
        return l11.longValue();
    }

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.ICommunicationTimeProxy
    public void plusNum(String str, int i11) {
        if (str == null || str.length() == 0) {
            return;
        }
        if (!this.OooO0O0.containsKey(str)) {
            this.OooO0O0.put(str, 0);
        }
        Integer num = this.OooO0O0.get(str);
        if (num != null) {
            this.OooO0O0.put(str, Integer.valueOf(num.intValue() + i11));
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.ICommunicationTimeProxy
    public void plusTime(String str, long j11) {
        if (str == null || str.length() == 0) {
            return;
        }
        if (!this.OooO00o.containsKey(str)) {
            this.OooO00o.put(str, 0L);
        }
        Long l11 = this.OooO00o.get(str);
        if (l11 != null) {
            this.OooO00o.put(str, Long.valueOf(l11.longValue() + j11));
        }
    }
}
