package a2;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f35a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f36b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f37c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f38d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f39e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f40f;

    public a(long j11, int i11, List list, List list2, List list3, List list4) {
        this.f35a = j11;
        this.f36b = i11;
        this.f37c = Collections.unmodifiableList(list);
        this.f38d = Collections.unmodifiableList(list2);
        this.f39e = Collections.unmodifiableList(list3);
        this.f40f = Collections.unmodifiableList(list4);
    }
}
