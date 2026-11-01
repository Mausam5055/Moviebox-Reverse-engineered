package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f32547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConfigRealtimeHttpClient f32548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConfigFetchHandler f32549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.firebase.f f32550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final jc.e f32551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f32552f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Context f32553g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f32554h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final n f32555i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ScheduledExecutorService f32556j;

    public o(com.google.firebase.f fVar, jc.e eVar, ConfigFetchHandler configFetchHandler, e eVar2, Context context, String str, n nVar, ScheduledExecutorService scheduledExecutorService) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.f32547a = linkedHashSet;
        this.f32548b = new ConfigRealtimeHttpClient(fVar, eVar, configFetchHandler, eVar2, context, str, linkedHashSet, nVar, scheduledExecutorService);
        this.f32550d = fVar;
        this.f32549c = configFetchHandler;
        this.f32551e = eVar;
        this.f32552f = eVar2;
        this.f32553g = context;
        this.f32554h = str;
        this.f32555i = nVar;
        this.f32556j = scheduledExecutorService;
    }

    private synchronized void a() {
        if (!this.f32547a.isEmpty()) {
            this.f32548b.C();
        }
    }

    public synchronized void b(boolean z10) {
        this.f32548b.z(z10);
        if (!z10) {
            a();
        }
    }
}
