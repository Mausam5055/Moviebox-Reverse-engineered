package n4;

import com.airbnb.lottie.model.content.Mask;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f70205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f70206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f70207c;

    public h(List list) {
        this.f70207c = list;
        this.f70205a = new ArrayList(list.size());
        this.f70206b = new ArrayList(list.size());
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f70205a.add(((Mask) list.get(i11)).b().a());
            this.f70206b.add(((Mask) list.get(i11)).c().a());
        }
    }

    public List a() {
        return this.f70205a;
    }

    public List b() {
        return this.f70207c;
    }

    public List c() {
        return this.f70206b;
    }
}
