package a2;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f81a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f82b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f83c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f84d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e f85e;

    public g(String str, long j11, List list, List list2) {
        this(str, j11, list, list2, null);
    }

    public g(String str, long j11, List list, List list2, e eVar) {
        this.f81a = str;
        this.f82b = j11;
        this.f83c = Collections.unmodifiableList(list);
        this.f84d = Collections.unmodifiableList(list2);
        this.f85e = eVar;
    }

    public int a(int i11) {
        int size = this.f83c.size();
        for (int i12 = 0; i12 < size; i12++) {
            if (((a) this.f83c.get(i12)).f36b == i11) {
                return i12;
            }
        }
        return -1;
    }
}
