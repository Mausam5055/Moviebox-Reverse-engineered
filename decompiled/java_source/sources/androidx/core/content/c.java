package androidx.core.content;

import android.content.LocusId;
import android.os.Build;
import androidx.core.util.i;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LocusId f8139b;

    private static class a {
        static LocusId a(String str) {
            return new LocusId(str);
        }

        static String b(LocusId locusId) {
            return locusId.getId();
        }
    }

    public c(String str) {
        this.f8138a = (String) i.j(str, "id cannot be empty");
        if (Build.VERSION.SDK_INT >= 29) {
            this.f8139b = a.a(str);
        } else {
            this.f8139b = null;
        }
    }

    private String a() {
        return this.f8138a.length() + "_chars";
    }

    public static c c(LocusId locusId) {
        i.h(locusId, "locusId cannot be null");
        return new c((String) i.j(a.b(locusId), "id cannot be empty"));
    }

    public LocusId b() {
        return this.f8139b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        String str = this.f8138a;
        if (str == null) {
            return cVar.f8138a == null;
        }
        return str.equals(cVar.f8138a);
    }

    public int hashCode() {
        String str = this.f8138a;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "LocusIdCompat[" + a() + "]";
    }
}
