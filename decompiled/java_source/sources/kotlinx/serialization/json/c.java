package kotlinx.serialization.json;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f68237a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f f68238b = a.f68239b;

    private static final class a implements kotlinx.serialization.descriptors.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f68239b = new a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f68240c = "kotlinx.serialization.json.JsonArray";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ kotlinx.serialization.descriptors.f f68241a = d00.a.h(JsonElementSerializer.f68224a).getDescriptor();

        private a() {
        }

        @Override // kotlinx.serialization.descriptors.f
        public boolean b() {
            return this.f68241a.b();
        }

        @Override // kotlinx.serialization.descriptors.f
        public int c(String name) {
            Intrinsics.h(name, "name");
            return this.f68241a.c(name);
        }

        @Override // kotlinx.serialization.descriptors.f
        public kotlinx.serialization.descriptors.h d() {
            return this.f68241a.d();
        }

        @Override // kotlinx.serialization.descriptors.f
        public int e() {
            return this.f68241a.e();
        }

        @Override // kotlinx.serialization.descriptors.f
        public String f(int i11) {
            return this.f68241a.f(i11);
        }

        @Override // kotlinx.serialization.descriptors.f
        public List g(int i11) {
            return this.f68241a.g(i11);
        }

        @Override // kotlinx.serialization.descriptors.f
        public List getAnnotations() {
            return this.f68241a.getAnnotations();
        }

        @Override // kotlinx.serialization.descriptors.f
        public kotlinx.serialization.descriptors.f h(int i11) {
            return this.f68241a.h(i11);
        }

        @Override // kotlinx.serialization.descriptors.f
        public String i() {
            return f68240c;
        }

        @Override // kotlinx.serialization.descriptors.f
        public boolean isInline() {
            return this.f68241a.isInline();
        }

        @Override // kotlinx.serialization.descriptors.f
        public boolean j(int i11) {
            return this.f68241a.j(i11);
        }
    }

    private c() {
    }

    @Override // kotlinx.serialization.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public b deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        k.g(decoder);
        return new b((List) d00.a.h(JsonElementSerializer.f68224a).deserialize(decoder));
    }

    @Override // kotlinx.serialization.g
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(e00.f encoder, b value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        k.h(encoder);
        d00.a.h(JsonElementSerializer.f68224a).serialize(encoder, value);
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f68238b;
    }
}
