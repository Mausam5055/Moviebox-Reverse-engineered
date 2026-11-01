package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f5018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f5019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f5021d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5022e;

    public o(List list) {
        this(list, null);
    }

    public o(List list, g gVar) {
        this.f5018a = list;
        this.f5019b = gVar;
        MotionEvent motionEventD = d();
        this.f5020c = n.a(motionEventD != null ? motionEventD.getButtonState() : 0);
        MotionEvent motionEventD2 = d();
        this.f5021d = g0.b(motionEventD2 != null ? motionEventD2.getMetaState() : 0);
        this.f5022e = a();
    }

    private final int a() {
        MotionEvent motionEventD = d();
        if (motionEventD == null) {
            List list = this.f5018a;
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                w wVar = (w) list.get(i11);
                if (p.d(wVar)) {
                    return q.f5023a.e();
                }
                if (p.b(wVar)) {
                    return q.f5023a.d();
                }
            }
            return q.f5023a.c();
        }
        int actionMasked = motionEventD.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    switch (actionMasked) {
                        case 5:
                            break;
                        case 6:
                            break;
                        case 7:
                            break;
                        case 8:
                            return q.f5023a.f();
                        case 9:
                            return q.f5023a.a();
                        case 10:
                            return q.f5023a.b();
                        default:
                            return q.f5023a.g();
                    }
                }
                return q.f5023a.c();
            }
            return q.f5023a.e();
        }
        return q.f5023a.d();
    }

    public final List b() {
        return this.f5018a;
    }

    public final g c() {
        return this.f5019b;
    }

    public final MotionEvent d() {
        g gVar = this.f5019b;
        if (gVar != null) {
            return gVar.c();
        }
        return null;
    }

    public final int e() {
        return this.f5022e;
    }

    public final void f(int i11) {
        this.f5022e = i11;
    }
}
