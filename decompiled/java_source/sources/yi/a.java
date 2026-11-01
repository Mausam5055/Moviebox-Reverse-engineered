package yi;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.data.athena;
import com.transsion.athena.taaneh.aethna;
import com.transsion.ga.AthenaAnalytics;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TrackData f79019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f79020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f79021c;

    public a(String str) {
        long jB = athena.b();
        this.f79021c = jB;
        if (jB == 0) {
            aethna.b("FAILED! You should init Athena first before track the event " + str);
        }
        this.f79020b = str;
        this.f79019a = new TrackData();
    }

    public a(String str, int i11) {
        this.f79021c = i11;
        this.f79020b = str;
        this.f79019a = new TrackData();
    }

    private void a(String str, Bundle bundle) {
        if (bundle != null) {
            this.f79019a.add(str, bundle);
        }
    }

    public void b() {
        AthenaAnalytics.L(this.f79021c).h0(this.f79020b, this.f79019a, this.f79021c);
    }

    public a c(Bundle bundle, Bundle bundle2) {
        a("eparam", bundle);
        a("ext", bundle2);
        return this;
    }
}
