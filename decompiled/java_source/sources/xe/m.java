package xe;

/* JADX INFO: loaded from: classes5.dex */
public class m extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f78225c;

    public m(com.google.zxing.i iVar) {
        super(iVar);
        this.f78225c = true;
    }

    @Override // xe.g
    protected com.google.zxing.b e(com.google.zxing.e eVar) {
        if (this.f78225c) {
            this.f78225c = false;
            return new com.google.zxing.b(new id.l(eVar.e()));
        }
        this.f78225c = true;
        return new com.google.zxing.b(new id.l(eVar));
    }
}
