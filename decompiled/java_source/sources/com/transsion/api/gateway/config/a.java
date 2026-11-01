package com.transsion.api.gateway.config;

import com.transsion.api.gateway.bean.RemoteConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f42492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f42493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f42494c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f42495d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f42496e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f42497f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f42498g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f42499h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f42500i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f42501j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f42502k;

    /* JADX INFO: renamed from: com.transsion.api.gateway.config.a$a, reason: collision with other inner class name */
    public static final class C0603a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f42503a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f42504b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f42505c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f42506d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f42507e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f42508f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public String f42509g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List f42510h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f42511i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public List f42512j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public List f42513k;

        public C0603a() {
            this.f42503a = false;
            this.f42504b = false;
            this.f42505c = true;
            this.f42506d = 60000;
            this.f42507e = 3600000L;
            this.f42508f = 3600000L;
            this.f42511i = 0;
            this.f42512j = new ArrayList();
            this.f42513k = new ArrayList();
        }

        public C0603a(a aVar) {
            this.f42503a = aVar.f42492a;
            this.f42504b = aVar.f42493b;
            this.f42505c = aVar.f42494c;
            this.f42506d = aVar.f42495d;
            this.f42507e = aVar.f42496e;
            this.f42508f = aVar.f42498g;
            this.f42512j = aVar.f42501j;
            this.f42513k = aVar.f42502k;
            this.f42511i = aVar.f42497f;
            this.f42509g = aVar.f42499h;
            this.f42510h = aVar.f42500i;
        }

        public C0603a a(RemoteConfig remoteConfig) {
            this.f42503a = remoteConfig.activateGatewayDns;
            this.f42504b = remoteConfig.useGateway;
            this.f42505c = remoteConfig.activateTracking;
            this.f42506d = remoteConfig.requestTimeout;
            this.f42507e = remoteConfig.refreshInterval;
            this.f42508f = remoteConfig.metricsInterval;
            this.f42512j = remoteConfig.useGatewayHostList;
            this.f42513k = remoteConfig.gatewayStrategy;
            this.f42511i = remoteConfig.configVersion;
            this.f42509g = remoteConfig.gatewayHost;
            this.f42510h = remoteConfig.gatewayIp;
            return this;
        }
    }

    public a(C0603a c0603a) {
        this.f42492a = c0603a.f42503a;
        this.f42493b = c0603a.f42504b;
        this.f42494c = c0603a.f42505c;
        this.f42495d = c0603a.f42506d;
        this.f42496e = c0603a.f42507e;
        this.f42497f = c0603a.f42511i;
        this.f42498g = c0603a.f42508f;
        this.f42499h = c0603a.f42509g;
        this.f42500i = c0603a.f42510h;
        this.f42501j = c0603a.f42512j;
        this.f42502k = c0603a.f42513k;
    }

    public String toString() {
        return "GatewayConfig{activateGatewayDns=" + this.f42492a + ", useGateway=" + this.f42493b + ", activateTracking=" + this.f42494c + ", requestTimeout=" + this.f42495d + ", refreshInterval=" + this.f42496e + ", configVersion=" + this.f42497f + ", metricsInterval=" + this.f42498g + ", gatewayHost='" + this.f42499h + "', gatewayIp=" + this.f42500i + ", useGatewayHostList=" + this.f42501j + ", gatewayStrategy=" + this.f42502k + '}';
    }
}
