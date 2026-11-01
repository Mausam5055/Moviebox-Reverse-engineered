package q4;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
abstract class p implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List f73111a;

    p(List list) {
        this.f73111a = list;
    }

    @Override // q4.o
    public List b() {
        return this.f73111a;
    }

    @Override // q4.o
    public boolean c() {
        if (this.f73111a.isEmpty()) {
            return true;
        }
        return this.f73111a.size() == 1 && ((w4.a) this.f73111a.get(0)).i();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (!this.f73111a.isEmpty()) {
            sb2.append("values=");
            sb2.append(Arrays.toString(this.f73111a.toArray()));
        }
        return sb2.toString();
    }
}
