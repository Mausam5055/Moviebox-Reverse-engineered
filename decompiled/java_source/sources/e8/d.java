package e8;

/* JADX INFO: loaded from: classes4.dex */
public class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c[] f61606a;

    public d(c... cVarArr) {
        this.f61606a = cVarArr;
    }

    @Override // e8.c
    public void a(int i11, String str, String str2) {
        for (c cVar : this.f61606a) {
            cVar.a(i11, str, str2);
        }
    }
}
