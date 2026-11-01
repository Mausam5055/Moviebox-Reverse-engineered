package l2;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f68712a = new x() { // from class: l2.v
        @Override // l2.x
        public /* synthetic */ x a(i3.s.a aVar) {
            return w.d(this, aVar);
        }

        @Override // l2.x
        public /* synthetic */ x b(int i11) {
            return w.b(this, i11);
        }

        @Override // l2.x
        public /* synthetic */ r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override // l2.x
        public final r[] createExtractors() {
            return w.e();
        }

        @Override // l2.x
        public /* synthetic */ x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    x a(i3.s.a aVar);

    x b(int i11);

    r[] c(Uri uri, Map map);

    r[] createExtractors();

    x d(boolean z10);
}
