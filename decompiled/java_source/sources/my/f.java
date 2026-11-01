package my;

import android.text.format.Formatter;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.n;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f70040a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f70041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f70042c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f70043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f70044e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f70045f;

    public f(String path, String state, boolean z10, boolean z11) {
        long jK;
        Intrinsics.h(path, "path");
        Intrinsics.h(state, "state");
        this.f70040a = path;
        this.f70041b = state;
        this.f70042c = z10;
        this.f70043d = z11;
        long j11 = 0;
        try {
            jK = n.k(path);
        } catch (Throwable unused) {
            jK = 0;
        }
        this.f70044e = jK;
        try {
            j11 = n.j(path);
        } catch (Throwable unused2) {
        }
        this.f70045f = j11;
    }

    public final long a() {
        return this.f70045f;
    }

    public final String b() {
        return this.f70040a;
    }

    public final boolean c() {
        return this.f70042c;
    }

    public String toString() {
        return "SDCardInfo {path = " + this.f70040a + ", state = " + this.f70041b + ", isRemovable = " + this.f70042c + ", isEmulated = " + this.f70043d + ", totalSize = " + Formatter.formatFileSize(Utils.a(), this.f70044e) + ", availableSize = " + Formatter.formatFileSize(Utils.a(), this.f70045f) + "}";
    }
}
