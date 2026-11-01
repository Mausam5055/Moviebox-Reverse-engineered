package m4;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class r implements m, n4.a.b, k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f69296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f69297c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LottieDrawable f69298d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n4.m f69299e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f69300f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f69295a = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f69301g = new b();

    public r(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, r4.l lVar) {
        this.f69296b = lVar.b();
        this.f69297c = lVar.d();
        this.f69298d = lottieDrawable;
        n4.m mVarA = lVar.c().a();
        this.f69299e = mVarA;
        aVar.i(mVarA);
        mVarA.a(this);
    }

    private void g() {
        this.f69300f = false;
        this.f69298d.invalidateSelf();
    }

    @Override // n4.a.b
    public void a() {
        g();
    }

    @Override // p4.e
    public void b(Object obj, w4.c cVar) {
        if (obj == p0.P) {
            this.f69299e.o(cVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026  */
    /* JADX WARN: Code duplicated, block: B:12:0x002a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0036 A[SYNTHETIC] */
    @Override // m4.c
    public void c(List list, List list2) {
        ArrayList arrayList = null;
        for (int i11 = 0; i11 < list.size(); i11++) {
            c cVar = (c) list.get(i11);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f69301g.a(uVar);
                    uVar.b(this);
                } else if (!(cVar instanceof s)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((s) cVar);
                }
            } else if (!(cVar instanceof s)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((s) cVar);
            }
        }
        this.f69299e.r(arrayList);
    }

    @Override // p4.e
    public void d(p4.d dVar, int i11, List list, p4.d dVar2) {
        v4.k.k(dVar, i11, list, dVar2, this);
    }

    @Override // m4.c
    public String getName() {
        return this.f69296b;
    }

    @Override // m4.m
    public Path getPath() {
        if (this.f69300f && !this.f69299e.k()) {
            return this.f69295a;
        }
        this.f69295a.reset();
        if (this.f69297c) {
            this.f69300f = true;
            return this.f69295a;
        }
        Path path = (Path) this.f69299e.h();
        if (path == null) {
            return this.f69295a;
        }
        this.f69295a.set(path);
        this.f69295a.setFillType(Path.FillType.EVEN_ODD);
        this.f69301g.b(this.f69295a);
        this.f69300f = true;
        return this.f69295a;
    }
}
