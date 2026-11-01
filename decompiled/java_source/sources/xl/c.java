package xl;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile h f78318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f78319b;

    public c(Context context) {
        this.f78319b = context;
    }

    public h a(long j11, long j12) {
        if (this.f78318a == null) {
            synchronized (this) {
                try {
                    if (this.f78318a == null) {
                        this.f78318a = new g(this.f78319b, j11, j12).a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f78318a;
    }
}
