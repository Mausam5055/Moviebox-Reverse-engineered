package kotlinx.serialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes7.dex */
final class c implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f68048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KClass f68049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f68050c;

    public c(f original, KClass kClass) {
        Intrinsics.h(original, "original");
        Intrinsics.h(kClass, "kClass");
        this.f68048a = original;
        this.f68049b = kClass;
        this.f68050c = original.i() + '<' + kClass.g() + '>';
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean b() {
        return this.f68048a.b();
    }

    @Override // kotlinx.serialization.descriptors.f
    public int c(String name) {
        Intrinsics.h(name, "name");
        return this.f68048a.c(name);
    }

    @Override // kotlinx.serialization.descriptors.f
    public h d() {
        return this.f68048a.d();
    }

    @Override // kotlinx.serialization.descriptors.f
    public int e() {
        return this.f68048a.e();
    }

    public boolean equals(Object obj) {
        c cVar = obj instanceof c ? (c) obj : null;
        return cVar != null && Intrinsics.c(this.f68048a, cVar.f68048a) && Intrinsics.c(cVar.f68049b, this.f68049b);
    }

    @Override // kotlinx.serialization.descriptors.f
    public String f(int i11) {
        return this.f68048a.f(i11);
    }

    @Override // kotlinx.serialization.descriptors.f
    public List g(int i11) {
        return this.f68048a.g(i11);
    }

    @Override // kotlinx.serialization.descriptors.f
    public List getAnnotations() {
        return this.f68048a.getAnnotations();
    }

    @Override // kotlinx.serialization.descriptors.f
    public f h(int i11) {
        return this.f68048a.h(i11);
    }

    public int hashCode() {
        return (this.f68049b.hashCode() * 31) + i().hashCode();
    }

    @Override // kotlinx.serialization.descriptors.f
    public String i() {
        return this.f68050c;
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean isInline() {
        return this.f68048a.isInline();
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean j(int i11) {
        return this.f68048a.j(i11);
    }

    public String toString() {
        return "ContextDescriptor(kClass: " + this.f68049b + ", original: " + this.f68048a + ')';
    }
}
