package n00;

import com.transsion.gslb.GslbSdk;

/* JADX INFO: loaded from: classes7.dex */
public class l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final l f70083c = new l();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f70084a = "https://ire-oneid.shalltry.com";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f70085b = "76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O";

    public static l d() {
        return f70083c;
    }

    public String a() {
        return GslbSdk.getDomain(this.f70084a, true) + "/one/v1/change";
    }

    public String b() {
        return this.f70085b;
    }

    public String c() {
        return this.f70084a;
    }

    public String e() {
        return GslbSdk.getDomain(this.f70084a, true) + "/one/v1/log";
    }

    public String f() {
        return GslbSdk.getDomain(this.f70084a, true) + "/one/v1/odid";
    }
}
