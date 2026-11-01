package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.MetricType;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class AWSRequestMetricsFullSupport extends AWSRequestMetrics {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Log f18979d = LogFactory.c("com.amazonaws.latency");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f18980e = UrlUtils.EQUAL_MARK;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f18981f = ", ";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f18982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f18983c;

    public AWSRequestMetricsFullSupport() {
        super(TimingInfo.n());
        this.f18982b = new HashMap();
        this.f18983c = new HashMap();
    }

    private void k(Object obj, Object obj2, StringBuilder sb2) {
        sb2.append(obj);
        sb2.append(f18980e);
        sb2.append(obj2);
        sb2.append(f18981f);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void a(MetricType metricType, Object obj) {
        h(metricType.name(), obj);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void b(MetricType metricType) {
        i(metricType.name());
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void d(MetricType metricType) {
        j(metricType.name());
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void e() {
        if (f18979d.c()) {
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry entry : this.f18982b.entrySet()) {
                k(entry.getKey(), entry.getValue(), sb2);
            }
            for (Map.Entry entry2 : this.f18978a.d().entrySet()) {
                k(entry2.getKey(), entry2.getValue(), sb2);
            }
            for (Map.Entry entry3 : this.f18978a.g().entrySet()) {
                k(entry3.getKey(), entry3.getValue(), sb2);
            }
            f18979d.d(sb2.toString());
        }
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void f(MetricType metricType, long j11) {
        l(metricType.name(), j11);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void g(MetricType metricType) {
        m(metricType.name());
    }

    public void h(String str, Object obj) {
        List arrayList = (List) this.f18982b.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.f18982b.put(str, arrayList);
        }
        arrayList.add(obj);
    }

    public void i(String str) {
        TimingInfo timingInfo = (TimingInfo) this.f18983c.get(str);
        if (timingInfo != null) {
            timingInfo.c();
            this.f18978a.a(str, TimingInfo.p(timingInfo.f(), Long.valueOf(timingInfo.e())));
            return;
        }
        LogFactory.b(getClass()).j("Trying to end an event which was never started: " + str);
    }

    public void j(String str) {
        this.f18978a.j(str);
    }

    public void l(String str, long j11) {
        this.f18978a.l(str, j11);
    }

    public void m(String str) {
        this.f18983c.put(str, TimingInfo.o(System.nanoTime()));
    }
}
