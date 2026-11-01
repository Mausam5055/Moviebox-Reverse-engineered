package n4;

import android.graphics.Path;
import java.util.List;
import m4.s;

/* JADX INFO: loaded from: classes2.dex */
public class m extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final r4.i f70217i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Path f70218j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Path f70219k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Path f70220l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private List f70221m;

    public m(List list) {
        super(list);
        this.f70217i = new r4.i();
        this.f70218j = new Path();
    }

    @Override // n4.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public Path i(w4.a aVar, float f11) {
        r4.i iVar = (r4.i) aVar.f77564b;
        r4.i iVar2 = (r4.i) aVar.f77565c;
        this.f70217i.c(iVar, iVar2 == null ? iVar : iVar2, f11);
        r4.i iVarE = this.f70217i;
        List list = this.f70221m;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                iVarE = ((s) this.f70221m.get(size)).e(iVarE);
            }
        }
        v4.k.h(iVarE, this.f70218j);
        if (this.f70180e == null) {
            return this.f70218j;
        }
        if (this.f70219k == null) {
            this.f70219k = new Path();
            this.f70220l = new Path();
        }
        v4.k.h(iVar, this.f70219k);
        if (iVar2 != null) {
            v4.k.h(iVar2, this.f70220l);
        }
        w4.c cVar = this.f70180e;
        float f12 = aVar.f77569g;
        float fFloatValue = aVar.f77570h.floatValue();
        Path path = this.f70219k;
        return (Path) cVar.b(f12, fFloatValue, path, iVar2 == null ? path : this.f70220l, f11, e(), f());
    }

    public void r(List list) {
        this.f70221m = list;
    }
}
