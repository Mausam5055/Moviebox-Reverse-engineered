package androidx.compose.animation.core;

import java.util.Iterator;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class c1 implements b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q f2411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o f2412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o f2413c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o f2414d;

    public static final class a implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d0 f2415a;

        a(d0 d0Var) {
            this.f2415a = d0Var;
        }

        @Override // androidx.compose.animation.core.q
        public d0 get(int i11) {
            return this.f2415a;
        }
    }

    public c1(d0 d0Var) {
        this(new a(d0Var));
    }

    public c1(q qVar) {
        this.f2411a = qVar;
    }

    @Override // androidx.compose.animation.core.v0
    public /* synthetic */ boolean a() {
        return a1.a(this);
    }

    @Override // androidx.compose.animation.core.v0
    public o c(o oVar, o oVar2, o oVar3) {
        if (this.f2414d == null) {
            this.f2414d = p.g(oVar3);
        }
        o oVar4 = this.f2414d;
        if (oVar4 == null) {
            Intrinsics.z("endVelocityVector");
            oVar4 = null;
        }
        int iB = oVar4.b();
        for (int i11 = 0; i11 < iB; i11++) {
            o oVar5 = this.f2414d;
            if (oVar5 == null) {
                Intrinsics.z("endVelocityVector");
                oVar5 = null;
            }
            oVar5.e(i11, this.f2411a.get(i11).b(oVar.a(i11), oVar2.a(i11), oVar3.a(i11)));
        }
        o oVar6 = this.f2414d;
        if (oVar6 != null) {
            return oVar6;
        }
        Intrinsics.z("endVelocityVector");
        return null;
    }

    @Override // androidx.compose.animation.core.v0
    public o e(long j11, o oVar, o oVar2, o oVar3) {
        if (this.f2413c == null) {
            this.f2413c = p.g(oVar3);
        }
        o oVar4 = this.f2413c;
        if (oVar4 == null) {
            Intrinsics.z("velocityVector");
            oVar4 = null;
        }
        int iB = oVar4.b();
        for (int i11 = 0; i11 < iB; i11++) {
            o oVar5 = this.f2413c;
            if (oVar5 == null) {
                Intrinsics.z("velocityVector");
                oVar5 = null;
            }
            oVar5.e(i11, this.f2411a.get(i11).d(j11, oVar.a(i11), oVar2.a(i11), oVar3.a(i11)));
        }
        o oVar6 = this.f2413c;
        if (oVar6 != null) {
            return oVar6;
        }
        Intrinsics.z("velocityVector");
        return null;
    }

    @Override // androidx.compose.animation.core.v0
    public long f(o oVar, o oVar2, o oVar3) {
        Iterator<Integer> it = RangesKt.t(0, oVar.b()).iterator();
        long jMax = 0;
        while (it.hasNext()) {
            int iA = ((IntIterator) it).a();
            jMax = Math.max(jMax, this.f2411a.get(iA).e(oVar.a(iA), oVar2.a(iA), oVar3.a(iA)));
        }
        return jMax;
    }

    @Override // androidx.compose.animation.core.v0
    public o g(long j11, o oVar, o oVar2, o oVar3) {
        if (this.f2412b == null) {
            this.f2412b = p.g(oVar);
        }
        o oVar4 = this.f2412b;
        if (oVar4 == null) {
            Intrinsics.z("valueVector");
            oVar4 = null;
        }
        int iB = oVar4.b();
        for (int i11 = 0; i11 < iB; i11++) {
            o oVar5 = this.f2412b;
            if (oVar5 == null) {
                Intrinsics.z("valueVector");
                oVar5 = null;
            }
            oVar5.e(i11, this.f2411a.get(i11).c(j11, oVar.a(i11), oVar2.a(i11), oVar3.a(i11)));
        }
        o oVar6 = this.f2412b;
        if (oVar6 != null) {
            return oVar6;
        }
        Intrinsics.z("valueVector");
        return null;
    }
}
