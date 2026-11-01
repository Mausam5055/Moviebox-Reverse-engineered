package hn;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f64538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f64540c;

    public a(int i11, int i12) {
        this.f64538a = i11;
        this.f64539b = i12;
    }

    public /* synthetic */ a(int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, (i13 & 2) != 0 ? 0 : i12);
    }

    public final int a() {
        return this.f64539b;
    }

    public final List b() {
        return this.f64540c;
    }

    public final int c() {
        return this.f64538a;
    }

    public final boolean d() {
        return this.f64538a > this.f64539b;
    }

    public final void e(int i11) {
        this.f64539b = i11;
    }

    public final void f(List list) {
        this.f64540c = list;
    }
}
