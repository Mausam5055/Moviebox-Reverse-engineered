package n5;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a implements m7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f70248a;

    public a(List list) {
        this.f70248a = list;
    }

    @Override // m7.a
    public int a() {
        return this.f70248a.size();
    }

    @Override // m7.a
    public Object getItem(int i11) {
        return (i11 < 0 || i11 >= this.f70248a.size()) ? "" : this.f70248a.get(i11);
    }
}
