package w1;

import android.net.Uri;
import androidx.media3.common.PriorityTaskManager;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements androidx.media3.datasource.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.datasource.a f77534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PriorityTaskManager f77535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f77536c;

    public k(androidx.media3.datasource.a aVar, PriorityTaskManager priorityTaskManager, int i11) {
        this.f77534a = (androidx.media3.datasource.a) androidx.media3.common.util.a.e(aVar);
        this.f77535b = (PriorityTaskManager) androidx.media3.common.util.a.e(priorityTaskManager);
        this.f77536c = i11;
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) {
        this.f77535b.c(this.f77536c);
        return this.f77534a.a(hVar);
    }

    @Override // androidx.media3.datasource.a
    public void c(n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f77534a.c(nVar);
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        this.f77534a.close();
    }

    @Override // androidx.media3.datasource.a
    public Map getResponseHeaders() {
        return this.f77534a.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        return this.f77534a.getUri();
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) {
        this.f77535b.c(this.f77536c);
        return this.f77534a.read(bArr, i11, i12);
    }
}
