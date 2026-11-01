package g9;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f63454a = new r() { // from class: g9.p
        @Override // g9.r
        public /* synthetic */ l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // g9.r
        public final l[] createExtractors() {
            return q.b();
        }
    };

    l[] c(Uri uri, Map map);

    l[] createExtractors();
}
