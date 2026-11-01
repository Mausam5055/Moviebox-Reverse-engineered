package n4;

import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class q extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Object f70247i;

    public q(w4.c cVar) {
        this(cVar, null);
    }

    public q(w4.c cVar, Object obj) {
        super(Collections.emptyList());
        o(cVar);
        this.f70247i = obj;
    }

    @Override // n4.a
    float c() {
        return 1.0f;
    }

    @Override // n4.a
    public Object h() {
        w4.c cVar = this.f70180e;
        Object obj = this.f70247i;
        return cVar.b(0.0f, 0.0f, obj, obj, f(), f(), f());
    }

    @Override // n4.a
    Object i(w4.a aVar, float f11) {
        return h();
    }

    @Override // n4.a
    public void l() {
        if (this.f70180e != null) {
            super.l();
        }
    }

    @Override // n4.a
    public void n(float f11) {
        this.f70179d = f11;
    }
}
