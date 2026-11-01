package rb;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f74278a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f74279b;

    public j(int i11) {
        this.f74279b = i11;
    }

    public List a() {
        List listB = b();
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < listB.size(); i11++) {
            arrayList.add(((i) listB.get(i11)).h());
        }
        return arrayList;
    }

    public synchronized List b() {
        return Collections.unmodifiableList(new ArrayList(this.f74278a));
    }

    public synchronized boolean c(List list) {
        this.f74278a.clear();
        if (list.size() <= this.f74279b) {
            return this.f74278a.addAll(list);
        }
        ob.g.f().k("Ignored 0 entries when adding rollout assignments. Maximum allowable: " + this.f74279b);
        return this.f74278a.addAll(list.subList(0, this.f74279b));
    }
}
