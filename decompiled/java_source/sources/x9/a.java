package x9;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f78053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f78054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f78055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f78056f;

    public a(int i11, int i12, List list, List list2, List list3, List list4) {
        this.f78051a = i11;
        this.f78052b = i12;
        this.f78053c = Collections.unmodifiableList(list);
        this.f78054d = Collections.unmodifiableList(list2);
        this.f78055e = Collections.unmodifiableList(list3);
        this.f78056f = Collections.unmodifiableList(list4);
    }
}
