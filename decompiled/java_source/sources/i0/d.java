package i0;

import android.content.res.Configuration;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f64851a = new HashMap();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.compose.ui.graphics.vector.c f64852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f64853b;

        public a(androidx.compose.ui.graphics.vector.c cVar, int i11) {
            this.f64852a = cVar;
            this.f64853b = i11;
        }

        public final int a() {
            return this.f64853b;
        }

        public final androidx.compose.ui.graphics.vector.c b() {
            return this.f64852a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f64852a, aVar.f64852a) && this.f64853b == aVar.f64853b;
        }

        public int hashCode() {
            return (this.f64852a.hashCode() * 31) + this.f64853b;
        }

        public String toString() {
            return "ImageVectorEntry(imageVector=" + this.f64852a + ", configFlags=" + this.f64853b + ')';
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Resources.Theme f64854a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f64855b;

        public b(Resources.Theme theme, int i11) {
            this.f64854a = theme;
            this.f64855b = i11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f64854a, bVar.f64854a) && this.f64855b == bVar.f64855b;
        }

        public int hashCode() {
            return (this.f64854a.hashCode() * 31) + this.f64855b;
        }

        public String toString() {
            return "Key(theme=" + this.f64854a + ", id=" + this.f64855b + ')';
        }
    }

    public final void a() {
        this.f64851a.clear();
    }

    public final a b(b bVar) {
        WeakReference weakReference = (WeakReference) this.f64851a.get(bVar);
        if (weakReference != null) {
            return (a) weakReference.get();
        }
        return null;
    }

    public final void c(int i11) {
        Iterator it = this.f64851a.entrySet().iterator();
        while (it.hasNext()) {
            a aVar = (a) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
            if (aVar == null || Configuration.needNewResources(i11, aVar.a())) {
                it.remove();
            }
        }
    }

    public final void d(b bVar, a aVar) {
        this.f64851a.put(bVar, new WeakReference(aVar));
    }
}
