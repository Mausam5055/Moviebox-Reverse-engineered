package com.google.firebase.perf.metrics;

import com.google.firebase.perf.session.PerfSession;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Trace f32310a;

    j(Trace trace) {
        this.f32310a = trace;
    }

    com.google.firebase.perf.v1.i a() {
        com.google.firebase.perf.v1.i.b bVarQ = com.google.firebase.perf.v1.i.M().r(this.f32310a.getName()).p(this.f32310a.getStartTime().getMicros()).q(this.f32310a.getStartTime().getDurationMicros(this.f32310a.getEndTime()));
        for (Counter counter : this.f32310a.getCounters().values()) {
            bVarQ.n(counter.getName(), counter.getCount());
        }
        List<Trace> subtraces = this.f32310a.getSubtraces();
        if (!subtraces.isEmpty()) {
            Iterator<Trace> it = subtraces.iterator();
            while (it.hasNext()) {
                bVarQ.k(new j(it.next()).a());
            }
        }
        bVarQ.m(this.f32310a.getAttributes());
        com.google.firebase.perf.v1.h[] hVarArrBuildAndSort = PerfSession.buildAndSort(this.f32310a.getSessions());
        if (hVarArrBuildAndSort != null) {
            bVarQ.d(Arrays.asList(hVarArrBuildAndSort));
        }
        return (com.google.firebase.perf.v1.i) bVarQ.build();
    }
}
