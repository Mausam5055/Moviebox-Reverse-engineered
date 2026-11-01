package com.amazonaws.util;

import com.amazonaws.logging.LogFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class TimingInfoFullSupport extends TimingInfo {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f19008d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f19009e;

    TimingInfoFullSupport(Long l11, long j11, Long l12) {
        super(l11, j11, l12);
        this.f19008d = new HashMap();
        this.f19009e = new HashMap();
    }

    @Override // com.amazonaws.util.TimingInfo
    public void a(String str, TimingInfo timingInfo) {
        List arrayList = (List) this.f19008d.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.f19008d.put(str, arrayList);
        }
        if (timingInfo.k()) {
            arrayList.add(timingInfo);
            return;
        }
        LogFactory.b(getClass()).a("Skip submeasurement timing info with no end time for " + str);
    }

    @Override // com.amazonaws.util.TimingInfo
    public Map d() {
        return this.f19009e;
    }

    @Override // com.amazonaws.util.TimingInfo
    public Map g() {
        return this.f19008d;
    }

    @Override // com.amazonaws.util.TimingInfo
    public void j(String str) {
        Number numberQ = q(str);
        l(str, (numberQ != null ? numberQ.intValue() : 0) + 1);
    }

    @Override // com.amazonaws.util.TimingInfo
    public void l(String str, long j11) {
        this.f19009e.put(str, Long.valueOf(j11));
    }

    public Number q(String str) {
        return (Number) this.f19009e.get(str);
    }
}
