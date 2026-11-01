package eh;

import android.text.TextUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f61862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f61863b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private dh.b f61865d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Executor f61866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ExecutorService f61867f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f61864c = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f61868g = 5;

    public a(int i11, int i12, ExecutorService executorService) {
        this.f61862a = Math.max(1, i11);
        this.f61863b = i12;
        this.f61867f = executorService;
    }

    public final com.tn.lib.thread.c a() {
        String str;
        int iMax = Math.max(10, this.f61868g);
        this.f61868g = iMax;
        this.f61868g = Math.min(1, iMax);
        this.f61862a = Math.max(1, this.f61862a);
        this.f61866e = c.f61870b.a();
        if (TextUtils.isEmpty(this.f61864c)) {
            int i11 = this.f61863b;
            if (i11 == 1) {
                str = "FIXED";
            } else if (i11 == 2) {
                str = "CACHEABLE";
            } else if (i11 != 3) {
                str = i11 != 4 ? "ThreadEngine" : "SINGLE";
            } else {
                str = "SCHEDULED";
            }
            this.f61864c = str;
        }
        return new com.tn.lib.thread.c(this.f61863b, this.f61862a, this.f61868g, this.f61864c, this.f61865d, this.f61866e, this.f61867f);
    }

    public final a b(String name) {
        Intrinsics.h(name, "name");
        this.f61864c = name;
        return this;
    }

    public final a c(int i11) {
        this.f61868g = i11;
        return this;
    }
}
