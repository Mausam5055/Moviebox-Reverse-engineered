package com.cloud.tmc.miniapp.performanceanalyse;

import android.os.Bundle;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.AdAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.IPerformanceAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.MiniAppAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.MiniCardAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.OfflineDownloadAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.RenderAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.V8AnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.WorkerAnalyseType;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class PerformanceTrack implements PerformanceAnalyseProxy {
    public final Lazy OooO00o = LazyKt.b(OooOOO0.OooO00o);
    public final Lazy OooO0O0 = LazyKt.b(OooOO0.OooO00o);
    public final Lazy OooO0OO = LazyKt.b(OooO.OooO00o);
    public final Lazy OooO0Oo = LazyKt.b(OooOO0O.OooO00o);
    public final Lazy OooO0o0 = LazyKt.b(OooO00o.OooO00o);
    public final Lazy OooO0o = LazyKt.b(OooO0O0.OooO00o);
    public final Lazy OooO0oO = LazyKt.b(OooO0OO.OooO00o);
    public final Lazy OooO0oo = LazyKt.b(OooO0o.OooO00o);

    public static final class OooO extends Lambda implements Function0<com.cloud.tmc.miniapp.performanceanalyse.OooOO0O> {
        public static final OooO OooO00o = new OooO();

        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return new com.cloud.tmc.miniapp.performanceanalyse.OooOO0O();
        }
    }

    public static final class OooO00o extends Lambda implements Function0<com.cloud.tmc.miniapp.performanceanalyse.OooO00o> {
        public static final OooO00o OooO00o = new OooO00o();

        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return new com.cloud.tmc.miniapp.performanceanalyse.OooO00o();
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<com.cloud.tmc.miniapp.performanceanalyse.OooO0OO> {
        public static final OooO0O0 OooO00o = new OooO0O0();

        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return new com.cloud.tmc.miniapp.performanceanalyse.OooO0OO();
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<com.cloud.tmc.miniapp.performanceanalyse.OooO0o> {
        public static final OooO0OO OooO00o = new OooO0OO();

        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return new com.cloud.tmc.miniapp.performanceanalyse.OooO0o();
        }
    }

    public static final class OooO0o extends Lambda implements Function0<com.cloud.tmc.miniapp.performanceanalyse.OooO> {
        public static final OooO0o OooO00o = new OooO0o();

        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return new com.cloud.tmc.miniapp.performanceanalyse.OooO();
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<com.cloud.tmc.miniapp.performanceanalyse.OooOOO0> {
        public static final OooOO0 OooO00o = new OooOO0();

        public OooOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return new com.cloud.tmc.miniapp.performanceanalyse.OooOOO0();
        }
    }

    public static final class OooOO0O extends Lambda implements Function0<OooOOO> {
        public static final OooOO0O OooO00o = new OooOO0O();

        public OooOO0O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return new OooOOO();
        }
    }

    public static final class OooOOO0 extends Lambda implements Function0<OooOOOO> {
        public static final OooOOO0 OooO00o = new OooOOO0();

        public OooOOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return new OooOOOO();
        }
    }

    public final com.cloud.tmc.miniapp.performanceanalyse.OooO00o getAdTrack() {
        return (com.cloud.tmc.miniapp.performanceanalyse.OooO00o) this.OooO0o0.getValue();
    }

    public final com.cloud.tmc.miniapp.performanceanalyse.OooOO0O getPointTrack() {
        return (com.cloud.tmc.miniapp.performanceanalyse.OooOO0O) this.OooO0OO.getValue();
    }

    public final com.cloud.tmc.miniapp.performanceanalyse.OooOOO0 getRenderTrack() {
        return (com.cloud.tmc.miniapp.performanceanalyse.OooOOO0) this.OooO0O0.getValue();
    }

    public final OooOOO getV8Track() {
        return (OooOOO) this.OooO0Oo.getValue();
    }

    public final OooOOOO getWorkerTrack() {
        return (OooOOOO) this.OooO00o.getValue();
    }

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy
    public void record(String str, IPerformanceAnalyseType target, String str2) {
        Intrinsics.h(target, "target");
        record(str, target, str2, null);
    }

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy
    public void record(String str, IPerformanceAnalyseType target, String str2, Bundle bundle) {
        Intrinsics.h(target, "target");
        if (target instanceof WorkerAnalyseType) {
            getWorkerTrack().OooO00o(str, (WorkerAnalyseType) target, str2);
            return;
        }
        if (target instanceof RenderAnalyseType) {
            getRenderTrack().OooO00o(str, (RenderAnalyseType) target, str2);
            return;
        }
        if (target instanceof PointAnalyseType) {
            getPointTrack().OooO00o(str, (PointAnalyseType) target, str2, bundle);
            return;
        }
        if (target instanceof V8AnalyseType) {
            getV8Track().OooO00o(str, (V8AnalyseType) target, str2);
            return;
        }
        if (target instanceof MiniAppAnalyseType) {
            ((com.cloud.tmc.miniapp.performanceanalyse.OooO0OO) this.OooO0o.getValue()).OooO00o(str, (MiniAppAnalyseType) target);
            return;
        }
        if (target instanceof MiniCardAnalyseType) {
            ((com.cloud.tmc.miniapp.performanceanalyse.OooO0o) this.OooO0oO.getValue()).OooO00o(str, (MiniCardAnalyseType) target, bundle);
            return;
        }
        if (target instanceof OfflineDownloadAnalyseType) {
            ((com.cloud.tmc.miniapp.performanceanalyse.OooO) this.OooO0oo.getValue()).OooO00o(str, (OfflineDownloadAnalyseType) target, str2, bundle);
        } else if (target instanceof AdAnalyseType) {
            AdAnalyseType target2 = (AdAnalyseType) target;
            getAdTrack().getClass();
            Intrinsics.h(target2, "target");
            ((ReportProxy) TmcProxy.get(ReportProxy.class)).reportAd(str, target2.name(), bundle);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy
    public void recordForAd(String str, String target, String str2, Bundle bundle) {
        if (target != null) {
            getAdTrack().getClass();
            Intrinsics.h(target, "target");
            ((ReportProxy) TmcProxy.get(ReportProxy.class)).reportAd(str, target, bundle);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy
    public void recordForCommon(String str, String str2, Bundle bundle) {
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(str, str2, bundle);
    }
}
