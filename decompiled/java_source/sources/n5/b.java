package n5;

/* JADX INFO: loaded from: classes3.dex */
public class b implements m7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f70249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70250b;

    public b(int i11, int i12) {
        this.f70249a = i11;
        this.f70250b = i12;
    }

    @Override // m7.a
    public int a() {
        return (this.f70250b - this.f70249a) + 1;
    }

    @Override // m7.a
    public Object getItem(int i11) {
        if (i11 < 0 || i11 >= a()) {
            return 0;
        }
        return Integer.valueOf(this.f70249a + i11);
    }
}
