package x9;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f78097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f78098c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f78099d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e f78100e;

    public g(String str, long j11, List list, List list2) {
        this(str, j11, list, list2, null);
    }

    public g(String str, long j11, List list, List list2, e eVar) {
        this.f78096a = str;
        this.f78097b = j11;
        this.f78098c = Collections.unmodifiableList(list);
        this.f78099d = Collections.unmodifiableList(list2);
        this.f78100e = eVar;
    }

    public int a(int i11) {
        int size = this.f78098c.size();
        for (int i12 = 0; i12 < size; i12++) {
            if (((a) this.f78098c.get(i12)).f78052b == i11) {
                return i12;
            }
        }
        return -1;
    }
}
