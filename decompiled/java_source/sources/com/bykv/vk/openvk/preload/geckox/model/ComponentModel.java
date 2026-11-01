package com.bykv.vk.openvk.preload.geckox.model;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ComponentModel {

    @com.bykv.vk.openvk.preload.a.a.b(a = "packages")
    private Map<String, List<UpdatePackage>> packages;

    @com.bykv.vk.openvk.preload.a.a.b(a = "universal_strategies")
    private Map<String, b> universalStrategies;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @com.bykv.vk.openvk.preload.a.a.b(a = "c")
        public String f20714a;
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @com.bykv.vk.openvk.preload.a.a.b(a = "specified_clean")
        public List<a> f20715a;
    }

    public Map<String, List<UpdatePackage>> getPackages() {
        return this.packages;
    }

    public Map<String, b> getUniversalStrategies() {
        return this.universalStrategies;
    }
}
