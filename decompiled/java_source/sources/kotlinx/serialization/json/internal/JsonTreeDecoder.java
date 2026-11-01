package kotlinx.serialization.json.internal;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.s0;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes7.dex */
class JsonTreeDecoder extends c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final JsonObject f68278f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f68279g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.f f68280h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f68281i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f68282j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeDecoder(kotlinx.serialization.json.a json, JsonObject value, String str, kotlinx.serialization.descriptors.f fVar) {
        super(json, value, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(value, "value");
        this.f68278f = value;
        this.f68279g = str;
        this.f68280h = fVar;
    }

    public /* synthetic */ JsonTreeDecoder(kotlinx.serialization.json.a aVar, JsonObject jsonObject, String str, kotlinx.serialization.descriptors.f fVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, jsonObject, (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? null : fVar);
    }

    private final boolean x0(kotlinx.serialization.descriptors.f fVar, int i11) {
        boolean z10 = (d().e().f() || fVar.j(i11) || !fVar.h(i11).b()) ? false : true;
        this.f68282j = z10;
        return z10;
    }

    private final boolean y0(kotlinx.serialization.descriptors.f fVar, int i11, String str) {
        kotlinx.serialization.json.a aVarD = d();
        kotlinx.serialization.descriptors.f fVarH = fVar.h(i11);
        if (!fVarH.b() && (g0(str) instanceof JsonNull)) {
            return true;
        }
        if (Intrinsics.c(fVarH.d(), kotlinx.serialization.descriptors.h.b.f68069a)) {
            kotlinx.serialization.json.h hVarG0 = g0(str);
            kotlinx.serialization.json.u uVar = hVarG0 instanceof kotlinx.serialization.json.u ? (kotlinx.serialization.json.u) hVarG0 : null;
            String strF = uVar != null ? kotlinx.serialization.json.j.f(uVar) : null;
            if (strF != null && JsonNamesMapKt.d(fVarH, aVarD, strF) == -3) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.json.internal.c, kotlinx.serialization.internal.TaggedDecoder, e00.e
    public boolean D() {
        return !this.f68282j && super.D();
    }

    @Override // kotlinx.serialization.json.internal.c, kotlinx.serialization.internal.TaggedDecoder, e00.e
    public e00.c b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return descriptor == this.f68280h ? this : super.b(descriptor);
    }

    @Override // kotlinx.serialization.json.internal.c, kotlinx.serialization.internal.TaggedDecoder, e00.c
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Set setL;
        Intrinsics.h(descriptor, "descriptor");
        if (this.f68294e.g() || (descriptor.d() instanceof kotlinx.serialization.descriptors.d)) {
            return;
        }
        if (this.f68294e.j()) {
            Set setA = s0.a(descriptor);
            Map map = (Map) kotlinx.serialization.json.w.a(d()).a(descriptor, JsonNamesMapKt.c());
            Set setKeySet = map != null ? map.keySet() : null;
            if (setKeySet == null) {
                setKeySet = SetsKt.f();
            }
            setL = SetsKt.l(setA, setKeySet);
        } else {
            setL = s0.a(descriptor);
        }
        for (String str : v0().keySet()) {
            if (!setL.contains(str) && !Intrinsics.c(str, this.f68279g)) {
                throw w.g(str, v0().toString());
            }
        }
    }

    @Override // kotlinx.serialization.internal.e1
    protected String c0(kotlinx.serialization.descriptors.f desc, int i11) {
        Object next;
        Intrinsics.h(desc, "desc");
        String strF = desc.f(i11);
        if (!this.f68294e.j() || v0().keySet().contains(strF)) {
            return strF;
        }
        Map map = (Map) kotlinx.serialization.json.w.a(d()).b(desc, JsonNamesMapKt.c(), new JsonTreeDecoder$elementName$alternativeNamesMap$1(desc));
        Iterator it = v0().keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Integer num = (Integer) map.get((String) next);
            if (num != null && num.intValue() == i11) {
                break;
            }
        }
        String str = (String) next;
        return str == null ? strF : str;
    }

    @Override // kotlinx.serialization.json.internal.c
    protected kotlinx.serialization.json.h g0(String tag) {
        Intrinsics.h(tag, "tag");
        return (kotlinx.serialization.json.h) MapsKt.i(v0(), tag);
    }

    @Override // e00.c
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        while (this.f68281i < descriptor.e()) {
            int i11 = this.f68281i;
            this.f68281i = i11 + 1;
            String strX = X(descriptor, i11);
            int i12 = this.f68281i - 1;
            this.f68282j = false;
            if (v0().containsKey(strX) || x0(descriptor, i12)) {
                if (!this.f68294e.d() || !y0(descriptor, i12, strX)) {
                    return i12;
                }
            }
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.c
    /* JADX INFO: renamed from: z0 */
    public JsonObject v0() {
        return this.f68278f;
    }
}
