package com.amazonaws.services.s3.model;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TagSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map f18829a;

    public TagSet() {
        this.f18829a = new HashMap(1);
    }

    public TagSet(Map map) {
        HashMap map2 = new HashMap(1);
        this.f18829a = map2;
        map2.putAll(map);
    }

    public Map a() {
        return this.f18829a;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{");
        stringBuffer.append("Tags: " + a());
        stringBuffer.append("}");
        return stringBuffer.toString();
    }
}
