package kotlinx.serialization.internal;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c1 implements kotlinx.serialization.descriptors.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f68116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.f f68117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.f f68118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f68119d;

    private c1(String str, kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.descriptors.f fVar2) {
        this.f68116a = str;
        this.f68117b = fVar;
        this.f68118c = fVar2;
        this.f68119d = 2;
    }

    public /* synthetic */ c1(String str, kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.descriptors.f fVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, fVar, fVar2);
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean b() {
        return kotlinx.serialization.descriptors.f.a.c(this);
    }

    @Override // kotlinx.serialization.descriptors.f
    public int c(String name) {
        Intrinsics.h(name, "name");
        Integer numV = StringsKt.v(name);
        if (numV != null) {
            return numV.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid map index");
    }

    @Override // kotlinx.serialization.descriptors.f
    public kotlinx.serialization.descriptors.h d() {
        return kotlinx.serialization.descriptors.i.c.f68072a;
    }

    @Override // kotlinx.serialization.descriptors.f
    public int e() {
        return this.f68119d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c1)) {
            return false;
        }
        c1 c1Var = (c1) obj;
        return Intrinsics.c(i(), c1Var.i()) && Intrinsics.c(this.f68117b, c1Var.f68117b) && Intrinsics.c(this.f68118c, c1Var.f68118c);
    }

    @Override // kotlinx.serialization.descriptors.f
    public String f(int i11) {
        return String.valueOf(i11);
    }

    @Override // kotlinx.serialization.descriptors.f
    public List g(int i11) {
        if (i11 >= 0) {
            return CollectionsKt.l();
        }
        throw new IllegalArgumentException(("Illegal index " + i11 + ", " + i() + " expects only non-negative indices").toString());
    }

    @Override // kotlinx.serialization.descriptors.f
    public List getAnnotations() {
        return kotlinx.serialization.descriptors.f.a.a(this);
    }

    @Override // kotlinx.serialization.descriptors.f
    public kotlinx.serialization.descriptors.f h(int i11) {
        if (i11 >= 0) {
            int i12 = i11 % 2;
            if (i12 == 0) {
                return this.f68117b;
            }
            if (i12 == 1) {
                return this.f68118c;
            }
            throw new IllegalStateException("Unreached");
        }
        throw new IllegalArgumentException(("Illegal index " + i11 + ", " + i() + " expects only non-negative indices").toString());
    }

    public int hashCode() {
        return (((i().hashCode() * 31) + this.f68117b.hashCode()) * 31) + this.f68118c.hashCode();
    }

    @Override // kotlinx.serialization.descriptors.f
    public String i() {
        return this.f68116a;
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean isInline() {
        return kotlinx.serialization.descriptors.f.a.b(this);
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean j(int i11) {
        if (i11 >= 0) {
            return false;
        }
        throw new IllegalArgumentException(("Illegal index " + i11 + ", " + i() + " expects only non-negative indices").toString());
    }

    public String toString() {
        return i() + '(' + this.f68117b + ", " + this.f68118c + ')';
    }
}
