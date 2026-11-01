package androidx.compose.ui.text.style;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6409b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final i f6410c = new i(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final i f6411d = new i(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final i f6412e = new i(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6413a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i a(List list) {
            Integer numValueOf = 0;
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                numValueOf = Integer.valueOf(numValueOf.intValue() | ((i) list.get(i11)).e());
            }
            return new i(numValueOf.intValue());
        }

        public final i b() {
            return i.f6412e;
        }

        public final i c() {
            return i.f6410c;
        }

        public final i d() {
            return i.f6411d;
        }
    }

    public i(int i11) {
        this.f6413a = i11;
    }

    public final boolean d(i iVar) {
        int i11 = this.f6413a;
        return (iVar.f6413a | i11) == i11;
    }

    public final int e() {
        return this.f6413a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && this.f6413a == ((i) obj).f6413a;
    }

    public int hashCode() {
        return this.f6413a;
    }

    public String toString() {
        if (this.f6413a == 0) {
            return "TextDecoration.None";
        }
        ArrayList arrayList = new ArrayList();
        if ((this.f6413a & f6411d.f6413a) != 0) {
            arrayList.add("Underline");
        }
        if ((this.f6413a & f6412e.f6413a) != 0) {
            arrayList.add("LineThrough");
        }
        if (arrayList.size() == 1) {
            return "TextDecoration." + ((String) arrayList.get(0));
        }
        return "TextDecoration[" + q0.a.d(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
