package v10;

import io.reactivex.rxjava3.core.BackpressureStrategy;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.j;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
final class f implements retrofit2.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Type f77004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Scheduler f77005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f77006c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f77007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f77008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f77009f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f77010g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f77011h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f77012i;

    f(Type type, Scheduler scheduler, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        this.f77004a = type;
        this.f77005b = scheduler;
        this.f77006c = z10;
        this.f77007d = z11;
        this.f77008e = z12;
        this.f77009f = z13;
        this.f77010g = z14;
        this.f77011h = z15;
        this.f77012i = z16;
    }

    @Override // retrofit2.e
    public Type a() {
        return this.f77004a;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0028  */
    /* JADX WARN: Code duplicated, block: B:18:0x0030  */
    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    /* JADX WARN: Code duplicated, block: B:22:0x003b  */
    /* JADX WARN: Code duplicated, block: B:24:0x0040  */
    /* JADX WARN: Code duplicated, block: B:26:0x0044  */
    /* JADX WARN: Code duplicated, block: B:28:0x0049  */
    /* JADX WARN: Code duplicated, block: B:30:0x004d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0052  */
    @Override // retrofit2.e
    public Object b(retrofit2.d dVar) {
        j aVar;
        Scheduler scheduler;
        j bVar = this.f77006c ? new b(dVar) : new c(dVar);
        if (!this.f77007d) {
            if (this.f77008e) {
                aVar = new a(bVar);
            }
            scheduler = this.f77005b;
            if (scheduler != null) {
                bVar = bVar.E(scheduler);
            }
            if (this.f77009f) {
                return bVar.F(BackpressureStrategy.MISSING);
            }
            if (this.f77010g) {
                return bVar.A();
            }
            if (this.f77011h) {
                return bVar.z();
            }
            return this.f77012i ? bVar.s() : pz.a.o(bVar);
        }
        aVar = new e(bVar);
        bVar = aVar;
        scheduler = this.f77005b;
        if (scheduler != null) {
            bVar = bVar.E(scheduler);
        }
        if (this.f77009f) {
            return bVar.F(BackpressureStrategy.MISSING);
        }
        if (this.f77010g) {
            return bVar.A();
        }
        if (this.f77011h) {
            return bVar.z();
        }
        if (this.f77012i) {
        }
    }
}
