package g5;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f63343a;

    public d(Bundle bundle) {
        this.f63343a = bundle;
    }

    public boolean a() {
        return this.f63343a.getBoolean("google_play_instant");
    }

    public long b() {
        return this.f63343a.getLong("install_begin_timestamp_seconds");
    }

    public long c() {
        return this.f63343a.getLong("install_begin_timestamp_server_seconds");
    }

    public String d() {
        return this.f63343a.getString("install_referrer");
    }

    public String e() {
        return this.f63343a.getString("install_version");
    }

    public long f() {
        return this.f63343a.getLong("referrer_click_timestamp_seconds");
    }

    public long g() {
        return this.f63343a.getLong("referrer_click_timestamp_server_seconds");
    }
}
