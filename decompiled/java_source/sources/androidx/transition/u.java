package androidx.transition;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class u extends j {
    int P;
    ArrayList N = new ArrayList();
    private boolean O = true;
    boolean Q = false;
    private int R = 0;

    class a extends r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ j f15105a;

        a(j jVar) {
            this.f15105a = jVar;
        }

        @Override // androidx.transition.r, androidx.transition.j.f
        public void e(j jVar) {
            this.f15105a.W();
            jVar.S(this);
        }
    }

    static class b extends r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        u f15107a;

        b(u uVar) {
            this.f15107a = uVar;
        }

        @Override // androidx.transition.r, androidx.transition.j.f
        public void b(j jVar) {
            u uVar = this.f15107a;
            if (uVar.Q) {
                return;
            }
            uVar.d0();
            this.f15107a.Q = true;
        }

        @Override // androidx.transition.r, androidx.transition.j.f
        public void e(j jVar) {
            u uVar = this.f15107a;
            int i11 = uVar.P - 1;
            uVar.P = i11;
            if (i11 == 0) {
                uVar.Q = false;
                uVar.p();
            }
            jVar.S(this);
        }
    }

    private void i0(j jVar) {
        this.N.add(jVar);
        jVar.f15055r = this;
    }

    private void r0() {
        b bVar = new b(this);
        Iterator it = this.N.iterator();
        while (it.hasNext()) {
            ((j) it.next()).a(bVar);
        }
        this.P = this.N.size();
    }

    @Override // androidx.transition.j
    public void Q(View view) {
        super.Q(view);
        int size = this.N.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((j) this.N.get(i11)).Q(view);
        }
    }

    @Override // androidx.transition.j
    public void U(View view) {
        super.U(view);
        int size = this.N.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((j) this.N.get(i11)).U(view);
        }
    }

    @Override // androidx.transition.j
    protected void W() {
        if (this.N.isEmpty()) {
            d0();
            p();
            return;
        }
        r0();
        if (this.O) {
            Iterator it = this.N.iterator();
            while (it.hasNext()) {
                ((j) it.next()).W();
            }
            return;
        }
        for (int i11 = 1; i11 < this.N.size(); i11++) {
            ((j) this.N.get(i11 - 1)).a(new a((j) this.N.get(i11)));
        }
        j jVar = (j) this.N.get(0);
        if (jVar != null) {
            jVar.W();
        }
    }

    @Override // androidx.transition.j
    public void Y(j.e eVar) {
        super.Y(eVar);
        this.R |= 8;
        int size = this.N.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((j) this.N.get(i11)).Y(eVar);
        }
    }

    @Override // androidx.transition.j
    public void a0(g gVar) {
        super.a0(gVar);
        this.R |= 4;
        if (this.N != null) {
            for (int i11 = 0; i11 < this.N.size(); i11++) {
                ((j) this.N.get(i11)).a0(gVar);
            }
        }
    }

    @Override // androidx.transition.j
    public void b0(t tVar) {
        super.b0(tVar);
        this.R |= 2;
        int size = this.N.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((j) this.N.get(i11)).b0(tVar);
        }
    }

    @Override // androidx.transition.j
    protected void cancel() {
        super.cancel();
        int size = this.N.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((j) this.N.get(i11)).cancel();
        }
    }

    @Override // androidx.transition.j
    String e0(String str) {
        String strE0 = super.e0(str);
        for (int i11 = 0; i11 < this.N.size(); i11++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strE0);
            sb2.append("\n");
            sb2.append(((j) this.N.get(i11)).e0(str + "  "));
            strE0 = sb2.toString();
        }
        return strE0;
    }

    @Override // androidx.transition.j
    public void f(w wVar) {
        if (H(wVar.f15110b)) {
            for (j jVar : this.N) {
                if (jVar.H(wVar.f15110b)) {
                    jVar.f(wVar);
                    wVar.f15111c.add(jVar);
                }
            }
        }
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public u a(j.f fVar) {
        return (u) super.a(fVar);
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public u b(View view) {
        for (int i11 = 0; i11 < this.N.size(); i11++) {
            ((j) this.N.get(i11)).b(view);
        }
        return (u) super.b(view);
    }

    public u h0(j jVar) {
        i0(jVar);
        long j11 = this.f15040c;
        if (j11 >= 0) {
            jVar.X(j11);
        }
        if ((this.R & 1) != 0) {
            jVar.Z(s());
        }
        if ((this.R & 2) != 0) {
            jVar.b0(w());
        }
        if ((this.R & 4) != 0) {
            jVar.a0(v());
        }
        if ((this.R & 8) != 0) {
            jVar.Y(r());
        }
        return this;
    }

    @Override // androidx.transition.j
    void i(w wVar) {
        super.i(wVar);
        int size = this.N.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((j) this.N.get(i11)).i(wVar);
        }
    }

    @Override // androidx.transition.j
    public void j(w wVar) {
        if (H(wVar.f15110b)) {
            for (j jVar : this.N) {
                if (jVar.H(wVar.f15110b)) {
                    jVar.j(wVar);
                    wVar.f15111c.add(jVar);
                }
            }
        }
    }

    public j j0(int i11) {
        if (i11 < 0 || i11 >= this.N.size()) {
            return null;
        }
        return (j) this.N.get(i11);
    }

    public int k0() {
        return this.N.size();
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public u S(j.f fVar) {
        return (u) super.S(fVar);
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public j clone() {
        u uVar = (u) super.clone();
        uVar.N = new ArrayList();
        int size = this.N.size();
        for (int i11 = 0; i11 < size; i11++) {
            uVar.i0(((j) this.N.get(i11)).clone());
        }
        return uVar;
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public u T(View view) {
        for (int i11 = 0; i11 < this.N.size(); i11++) {
            ((j) this.N.get(i11)).T(view);
        }
        return (u) super.T(view);
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public u X(long j11) {
        ArrayList arrayList;
        super.X(j11);
        if (this.f15040c >= 0 && (arrayList = this.N) != null) {
            int size = arrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((j) this.N.get(i11)).X(j11);
            }
        }
        return this;
    }

    @Override // androidx.transition.j
    void o(ViewGroup viewGroup, x xVar, x xVar2, ArrayList arrayList, ArrayList arrayList2) {
        long jZ = z();
        int size = this.N.size();
        for (int i11 = 0; i11 < size; i11++) {
            j jVar = (j) this.N.get(i11);
            if (jZ > 0 && (this.O || i11 == 0)) {
                long jZ2 = jVar.z();
                if (jZ2 > 0) {
                    jVar.c0(jZ2 + jZ);
                } else {
                    jVar.c0(jZ);
                }
            }
            jVar.o(viewGroup, xVar, xVar2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public u Z(TimeInterpolator timeInterpolator) {
        this.R |= 1;
        ArrayList arrayList = this.N;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((j) this.N.get(i11)).Z(timeInterpolator);
            }
        }
        return (u) super.Z(timeInterpolator);
    }

    public u p0(int i11) {
        if (i11 == 0) {
            this.O = true;
        } else {
            if (i11 != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i11);
            }
            this.O = false;
        }
        return this;
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public u c0(long j11) {
        return (u) super.c0(j11);
    }
}
