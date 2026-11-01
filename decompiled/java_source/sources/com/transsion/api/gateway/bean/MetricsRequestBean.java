package com.transsion.api.gateway.bean;

import fm.a;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class MetricsRequestBean {

    @a(name = "collectType")
    public String collectType;

    @a(name = "commonTags")
    public HashMap<String, Object> commonTags;

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    @a(name = "db")
    public String f42491db;

    @a(name = "expireSeconds")
    public int expireSeconds;

    @a(name = "metricsName")
    public String metricsName;

    @a(name = "specificTags")
    public List<SpecificTagBean> specificTags;
}
