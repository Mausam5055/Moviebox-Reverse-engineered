package g10;

import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes7.dex */
public class r extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static int[] f63162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static int[] f63163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static int f63164c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static String f63165d;

    public r() {
        f63162a = new int[]{2, 570425344, 0, 4096, 458752, 3, 0, 0, 1030, 1280, 0, 0, 0, 0, 0, 0, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306};
        f63163b = new int[]{Sdk$SDKError.Reason.AD_EXPIRED_VALUE, 286331153, 572662306, 1091653905, 303173905, 287445265};
        f63165d = "ISO-2022-JP";
        f63164c = 8;
    }

    @Override // g10.y
    public int[] a() {
        return f63162a;
    }

    @Override // g10.y
    public String b() {
        return f63165d;
    }

    @Override // g10.y
    public boolean d() {
        return false;
    }

    @Override // g10.y
    public int e() {
        return f63164c;
    }

    @Override // g10.y
    public int[] f() {
        return f63163b;
    }
}
