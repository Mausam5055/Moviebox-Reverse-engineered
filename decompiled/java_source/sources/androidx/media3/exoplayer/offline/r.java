package androidx.media3.exoplayer.offline;

import android.net.Uri;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class r implements androidx.media3.exoplayer.upstream.q.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.q.a f12429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f12430b;

    public r(androidx.media3.exoplayer.upstream.q.a aVar, List list) {
        this.f12429a = aVar;
        this.f12430b = list;
    }

    @Override // androidx.media3.exoplayer.upstream.q.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public q parse(Uri uri, InputStream inputStream) {
        q qVar = (q) this.f12429a.parse(uri, inputStream);
        List list = this.f12430b;
        return (list == null || list.isEmpty()) ? qVar : (q) qVar.copy(this.f12430b);
    }
}
