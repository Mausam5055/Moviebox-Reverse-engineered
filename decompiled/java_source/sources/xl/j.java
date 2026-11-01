package xl;

import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public class j implements h.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f78364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f78365b;

    public j(a aVar, Object obj) {
        this.f78364a = obj;
        this.f78365b = aVar;
    }

    public boolean a(File file) {
        return this.f78365b.a(this.f78364a, file, 0L);
    }
}
