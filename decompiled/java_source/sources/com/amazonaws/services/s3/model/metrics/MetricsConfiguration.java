package com.amazonaws.services.s3.model.metrics;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class MetricsConfiguration implements Serializable {
    private MetricsFilter filter;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f18848id;

    public MetricsFilter getFilter() {
        return this.filter;
    }

    public String getId() {
        return this.f18848id;
    }

    public void setFilter(MetricsFilter metricsFilter) {
        this.filter = metricsFilter;
    }

    public void setId(String str) {
        this.f18848id = str;
    }

    public MetricsConfiguration withFilter(MetricsFilter metricsFilter) {
        setFilter(metricsFilter);
        return this;
    }

    public MetricsConfiguration withId(String str) {
        setId(str);
        return this;
    }
}
