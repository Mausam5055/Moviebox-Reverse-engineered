package kotlinx.serialization.json;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.WriteMode;
import kotlinx.serialization.json.internal.a0;
import kotlinx.serialization.json.internal.b0;
import kotlinx.serialization.json.internal.k0;
import kotlinx.serialization.json.internal.n0;
import kotlinx.serialization.json.internal.p0;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a implements kotlinx.serialization.j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0816a f68231d = new C0816a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f68232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f00.c f68233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlinx.serialization.json.internal.u f68234c;

    /* JADX INFO: renamed from: kotlinx.serialization.json.a$a, reason: collision with other inner class name */
    public static final class C0816a extends a {
        private C0816a() {
            super(new f(false, false, false, false, false, false, null, false, false, null, false, false, UnixStat.PERM_MASK, null), f00.d.a(), null);
        }

        public /* synthetic */ C0816a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private a(f fVar, f00.c cVar) {
        this.f68232a = fVar;
        this.f68233b = cVar;
        this.f68234c = new kotlinx.serialization.json.internal.u();
    }

    public /* synthetic */ a(f fVar, f00.c cVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(fVar, cVar);
    }

    @Override // kotlinx.serialization.e
    public f00.c a() {
        return this.f68233b;
    }

    @Override // kotlinx.serialization.j
    public final Object b(kotlinx.serialization.a deserializer, String string) {
        Intrinsics.h(deserializer, "deserializer");
        Intrinsics.h(string, "string");
        n0 n0Var = new n0(string);
        Object objG = new k0(this, WriteMode.OBJ, n0Var, deserializer.getDescriptor(), null).G(deserializer);
        n0Var.w();
        return objG;
    }

    @Override // kotlinx.serialization.j
    public final String c(kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(serializer, "serializer");
        b0 b0Var = new b0();
        try {
            a0.a(this, b0Var, serializer, obj);
            return b0Var.toString();
        } finally {
            b0Var.g();
        }
    }

    public final Object d(kotlinx.serialization.a deserializer, h element) {
        Intrinsics.h(deserializer, "deserializer");
        Intrinsics.h(element, "element");
        return p0.a(this, element, deserializer);
    }

    public final f e() {
        return this.f68232a;
    }

    public final kotlinx.serialization.json.internal.u f() {
        return this.f68234c;
    }
}
