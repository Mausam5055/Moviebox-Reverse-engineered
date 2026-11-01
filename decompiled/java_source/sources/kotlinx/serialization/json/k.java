package kotlinx.serialization.json;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes7.dex */
public abstract class k {

    public static final class a implements kotlinx.serialization.descriptors.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Lazy f68352a;

        a(Function0 function0) {
            this.f68352a = LazyKt.b(function0);
        }

        private final kotlinx.serialization.descriptors.f a() {
            return (kotlinx.serialization.descriptors.f) this.f68352a.getValue();
        }

        @Override // kotlinx.serialization.descriptors.f
        public boolean b() {
            return kotlinx.serialization.descriptors.f.a.c(this);
        }

        @Override // kotlinx.serialization.descriptors.f
        public int c(String name) {
            Intrinsics.h(name, "name");
            return a().c(name);
        }

        @Override // kotlinx.serialization.descriptors.f
        public kotlinx.serialization.descriptors.h d() {
            return a().d();
        }

        @Override // kotlinx.serialization.descriptors.f
        public int e() {
            return a().e();
        }

        @Override // kotlinx.serialization.descriptors.f
        public String f(int i11) {
            return a().f(i11);
        }

        @Override // kotlinx.serialization.descriptors.f
        public List g(int i11) {
            return a().g(i11);
        }

        @Override // kotlinx.serialization.descriptors.f
        public List getAnnotations() {
            return kotlinx.serialization.descriptors.f.a.a(this);
        }

        @Override // kotlinx.serialization.descriptors.f
        public kotlinx.serialization.descriptors.f h(int i11) {
            return a().h(i11);
        }

        @Override // kotlinx.serialization.descriptors.f
        public String i() {
            return a().i();
        }

        @Override // kotlinx.serialization.descriptors.f
        public boolean isInline() {
            return kotlinx.serialization.descriptors.f.a.b(this);
        }

        @Override // kotlinx.serialization.descriptors.f
        public boolean j(int i11) {
            return a().j(i11);
        }
    }

    public static final g d(e00.e eVar) {
        Intrinsics.h(eVar, "<this>");
        g gVar = eVar instanceof g ? (g) eVar : null;
        if (gVar != null) {
            return gVar;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got " + Reflection.b(eVar.getClass()));
    }

    public static final l e(e00.f fVar) {
        Intrinsics.h(fVar, "<this>");
        l lVar = fVar instanceof l ? (l) fVar : null;
        if (lVar != null) {
            return lVar;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got " + Reflection.b(fVar.getClass()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlinx.serialization.descriptors.f f(Function0 function0) {
        return new a(function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(e00.e eVar) {
        d(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(e00.f fVar) {
        e(fVar);
    }
}
