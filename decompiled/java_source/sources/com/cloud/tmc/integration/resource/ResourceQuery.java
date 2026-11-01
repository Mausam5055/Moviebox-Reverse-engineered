package com.cloud.tmc.integration.resource;

import java.io.Serializable;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class ResourceQuery implements Serializable {
    public String appId;
    public String page;
    public String path;
    public Set<String> queryParameterNames;

    public ResourceQuery(String str, String str2, String str3, Set<String> set) {
        this.appId = str;
        this.path = str2;
        this.page = str3;
        this.queryParameterNames = set;
    }
}
