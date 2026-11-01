package kotlinx.serialization.internal;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class s1 implements kotlinx.serialization.descriptors.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f68195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.e f68196b;

    public s1(String serialName, kotlinx.serialization.descriptors.e kind) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(kind, "kind");
        this.f68195a = serialName;
        this.f68196b = kind;
    }

    private final Void a() {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean b() {
        return kotlinx.serialization.descriptors.f.a.c(this);
    }

    @Override // kotlinx.serialization.descriptors.f
    public int c(String name) {
        Intrinsics.h(name, "name");
        a();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.descriptors.f
    public int e() {
        return 0;
    }

    @Override // kotlinx.serialization.descriptors.f
    public String f(int i11) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.descriptors.f
    public List g(int i11) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.descriptors.f
    public List getAnnotations() {
        return kotlinx.serialization.descriptors.f.a.a(this);
    }

    @Override // kotlinx.serialization.descriptors.f
    public kotlinx.serialization.descriptors.f h(int i11) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.descriptors.f
    public String i() {
        return this.f68195a;
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean isInline() {
        return kotlinx.serialization.descriptors.f.a.b(this);
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean j(int i11) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.descriptors.f
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public kotlinx.serialization.descriptors.e d() {
        return this.f68196b;
    }

    public String toString() {
        return "PrimitiveDescriptor(" + i() + ')';
    }
}
