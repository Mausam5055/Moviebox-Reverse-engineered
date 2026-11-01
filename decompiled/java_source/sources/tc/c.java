package tc;

import android.content.Context;
import com.google.firebase.perf.util.i;
import com.google.firebase.perf.v1.NetworkRequestMetric;
import java.net.URI;

/* JADX INFO: loaded from: classes5.dex */
final class c extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final sc.a f76178c = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NetworkRequestMetric f76179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f76180b;

    c(NetworkRequestMetric networkRequestMetric, Context context) {
        this.f76180b = context;
        this.f76179a = networkRequestMetric;
    }

    private URI g(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URI.create(str);
        } catch (IllegalArgumentException | IllegalStateException e11) {
            f76178c.k("getResultUrl throws exception %s", e11.getMessage());
            return null;
        }
    }

    private boolean h(URI uri, Context context) {
        if (uri == null) {
            return false;
        }
        return i.a(uri, context);
    }

    private boolean i(String str) {
        if (str == null) {
            return true;
        }
        return str.trim().isEmpty();
    }

    private boolean j(String str) {
        return i(str);
    }

    private boolean k(String str) {
        return (str == null || i(str) || str.length() > 255) ? false : true;
    }

    private boolean m(int i11) {
        return i11 > 0;
    }

    private boolean n(long j11) {
        return j11 >= 0;
    }

    private boolean o(int i11) {
        return i11 == -1 || i11 > 0;
    }

    private boolean p(String str) {
        if (str == null) {
            return false;
        }
        return "http".equalsIgnoreCase(str) || "https".equalsIgnoreCase(str);
    }

    private boolean q(long j11) {
        return j11 >= 0;
    }

    private boolean r(String str) {
        return str == null;
    }

    @Override // tc.e
    public boolean c() {
        if (j(this.f76179a.I())) {
            f76178c.j("URL is missing:" + this.f76179a.I());
            return false;
        }
        URI uriG = g(this.f76179a.I());
        if (uriG == null) {
            f76178c.j("URL cannot be parsed");
            return false;
        }
        if (!h(uriG, this.f76180b)) {
            f76178c.j("URL fails allowlist rule: " + uriG);
            return false;
        }
        if (!k(uriG.getHost())) {
            f76178c.j("URL host is null or invalid");
            return false;
        }
        if (!p(uriG.getScheme())) {
            f76178c.j("URL scheme is null or invalid");
            return false;
        }
        if (!r(uriG.getUserInfo())) {
            f76178c.j("URL user info is null");
            return false;
        }
        if (!o(uriG.getPort())) {
            f76178c.j("URL port is less than or equal to 0");
            return false;
        }
        if (!l(this.f76179a.K() ? this.f76179a.z() : null)) {
            f76178c.j("HTTP Method is null or invalid: " + this.f76179a.z());
            return false;
        }
        if (this.f76179a.L() && !m(this.f76179a.A())) {
            f76178c.j("HTTP ResponseCode is a negative value:" + this.f76179a.A());
            return false;
        }
        if (this.f76179a.M() && !n(this.f76179a.C())) {
            f76178c.j("Request Payload is a negative value:" + this.f76179a.C());
            return false;
        }
        if (this.f76179a.N() && !n(this.f76179a.E())) {
            f76178c.j("Response Payload is a negative value:" + this.f76179a.E());
            return false;
        }
        if (!this.f76179a.J() || this.f76179a.x() <= 0) {
            f76178c.j("Start time of the request is null, or zero, or a negative value:" + this.f76179a.x());
            return false;
        }
        if (this.f76179a.O() && !q(this.f76179a.F())) {
            f76178c.j("Time to complete the request is a negative value:" + this.f76179a.F());
            return false;
        }
        if (this.f76179a.Q() && !q(this.f76179a.H())) {
            f76178c.j("Time from the start of the request to the start of the response is null or a negative value:" + this.f76179a.H());
            return false;
        }
        if (this.f76179a.P() && this.f76179a.G() > 0) {
            if (this.f76179a.L()) {
                return true;
            }
            f76178c.j("Did not receive a HTTP Response Code");
            return false;
        }
        f76178c.j("Time from the start of the request to the end of the response is null, negative or zero:" + this.f76179a.G());
        return false;
    }

    boolean l(NetworkRequestMetric.HttpMethod httpMethod) {
        return (httpMethod == null || httpMethod == NetworkRequestMetric.HttpMethod.HTTP_METHOD_UNKNOWN) ? false : true;
    }
}
