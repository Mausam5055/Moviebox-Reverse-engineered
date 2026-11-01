package bi;

import android.os.Bundle;
import android.os.SystemClock;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.hisavana.common.tracking.TrackingKey;
import com.meituan.android.walle.ChannelReader;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {
    public static final Bundle a(e eVar) {
        Intrinsics.h(eVar, "<this>");
        return androidx.core.os.d.b(TuplesKt.a("usage", Integer.valueOf(eVar.G())), TuplesKt.a("call_id", eVar.a()), TuplesKt.a("call_result_code", Integer.valueOf(eVar.b())), TuplesKt.a("error_code", Integer.valueOf(eVar.m())), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, eVar.n()), TuplesKt.a(TmcConstants.CHANNEL_REQUEST_SERVER_API, eVar.B()), TuplesKt.a("complete_api", eVar.i()), TuplesKt.a("ip_address", eVar.q()), TuplesKt.a("req_time", Long.valueOf(eVar.w())), TuplesKt.a("dns_time", Long.valueOf(eVar.l())), TuplesKt.a("tcp_time", Long.valueOf(eVar.E())), TuplesKt.a("ssl_time", Long.valueOf(eVar.D())), TuplesKt.a("send_time", Long.valueOf(eVar.A())), TuplesKt.a("wait_time", Long.valueOf(eVar.H())), TuplesKt.a("rec_time", Long.valueOf(eVar.u())), TuplesKt.a("req_body_size", Long.valueOf(eVar.v())), TuplesKt.a("res_body_size", Long.valueOf(eVar.y())), TuplesKt.a("cdn_req_time", Long.valueOf(eVar.e())), TuplesKt.a("cdn_down_time", Long.valueOf(eVar.c())), TuplesKt.a("cdn_speed", eVar.f()), TuplesKt.a("cdn_provider", eVar.d()), TuplesKt.a(PlaceTypes.COUNTRY, eVar.k()), TuplesKt.a("host", eVar.o()), TuplesKt.a(TrackingKey.IS_OFFLINE, Integer.valueOf(eVar.r())), TuplesKt.a(ChannelReader.CHANNEL_KEY, eVar.g()), TuplesKt.a("sdk_version", eVar.z()), TuplesKt.a("server_time", Long.valueOf(eVar.C())), TuplesKt.a("protocol", eVar.t()), TuplesKt.a("compare_tag", eVar.h()), TuplesKt.a("http_type", Integer.valueOf(eVar.p())), TuplesKt.a("content_encoding", eVar.j()), TuplesKt.a("tls_version", eVar.F()), TuplesKt.a("request_downgrade", Integer.valueOf(eVar.x())));
    }

    public static final void b(String str) {
        Intrinsics.h(str, "<this>");
        o.f16547a.j("NetworkMonitor", "=======/ " + str + " /=======");
    }

    public static final void c(String str) {
        Intrinsics.h(str, "<this>");
        o.f16547a.h("NetworkMonitor", "=======/ " + str + " /=======");
    }

    public static final long d() {
        return SystemClock.elapsedRealtime();
    }

    public static final long e(long j11) {
        return d() - j11;
    }

    public static final String f(Exception exc) {
        Intrinsics.h(exc, "<this>");
        if (exc.getMessage() == null) {
            return "";
        }
        String message = exc.getMessage();
        Intrinsics.e(message);
        int iMin = Math.min(message.length(), 200);
        String message2 = exc.getMessage();
        Intrinsics.e(message2);
        String strSubstring = message2.substring(0, iMin);
        Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final void g(e eVar) {
        String str;
        Intrinsics.h(eVar, "<this>");
        o.f16547a.h("NetworkMonitor", eVar.toString());
        if (d.b(eVar.o()) || l.a(eVar.s()) || n.a(eVar.B())) {
            str = "process_black";
        } else {
            str = (d.c(eVar.o()) || l.b(eVar.s()) || n.b(eVar.B())) ? "process_white" : "process";
        }
        new yi.a(str, 1814).c(a(eVar), null).b();
    }
}
