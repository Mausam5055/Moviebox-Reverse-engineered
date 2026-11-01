package xe;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class g implements com.google.zxing.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.zxing.i f78205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f78206b = new ArrayList();

    public g(com.google.zxing.i iVar) {
        this.f78205a = iVar;
    }

    @Override // com.google.zxing.l
    public void a(com.google.zxing.k kVar) {
        this.f78206b.add(kVar);
    }

    protected com.google.zxing.j b(com.google.zxing.b bVar) {
        this.f78206b.clear();
        try {
            com.google.zxing.i iVar = this.f78205a;
            return iVar instanceof com.google.zxing.f ? ((com.google.zxing.f) iVar).d(bVar) : iVar.b(bVar);
        } catch (Exception unused) {
            return null;
        } finally {
            this.f78205a.reset();
        }
    }

    public com.google.zxing.j c(com.google.zxing.e eVar) {
        return b(e(eVar));
    }

    public List d() {
        return new ArrayList(this.f78206b);
    }

    protected com.google.zxing.b e(com.google.zxing.e eVar) {
        return new com.google.zxing.b(new id.l(eVar));
    }
}
