package kotlinx.serialization.descriptors;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.internal.l1;
import kotlinx.serialization.internal.n;
import kotlinx.serialization.internal.n1;

/* JADX INFO: loaded from: classes7.dex */
public final class SerialDescriptorImpl implements f, n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f68029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f68030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f68031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f68032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set f68033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String[] f68034f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final f[] f68035g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List[] f68036h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean[] f68037i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Map f68038j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final f[] f68039k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Lazy f68040l;

    public SerialDescriptorImpl(String serialName, h kind, int i11, List typeParameters, a builder) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(kind, "kind");
        Intrinsics.h(typeParameters, "typeParameters");
        Intrinsics.h(builder, "builder");
        this.f68029a = serialName;
        this.f68030b = kind;
        this.f68031c = i11;
        this.f68032d = builder.c();
        this.f68033e = CollectionsKt.P0(builder.f());
        Object[] array = builder.f().toArray(new String[0]);
        Intrinsics.f(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        String[] strArr = (String[]) array;
        this.f68034f = strArr;
        this.f68035g = l1.b(builder.e());
        Object[] array2 = builder.d().toArray(new List[0]);
        Intrinsics.f(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        this.f68036h = (List[]) array2;
        this.f68037i = CollectionsKt.M0(builder.g());
        Iterable<IndexedValue> iterableR0 = ArraysKt.R0(strArr);
        ArrayList arrayList = new ArrayList(CollectionsKt.v(iterableR0, 10));
        for (IndexedValue indexedValue : iterableR0) {
            arrayList.add(TuplesKt.a(indexedValue.getValue(), Integer.valueOf(indexedValue.getIndex())));
        }
        this.f68038j = MapsKt.s(arrayList);
        this.f68039k = l1.b(typeParameters);
        this.f68040l = LazyKt.b(new Function0<Integer>() { // from class: kotlinx.serialization.descriptors.SerialDescriptorImpl$_hashCode$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                SerialDescriptorImpl serialDescriptorImpl = this.this$0;
                return Integer.valueOf(n1.a(serialDescriptorImpl, serialDescriptorImpl.f68039k));
            }
        });
    }

    private final int l() {
        return ((Number) this.f68040l.getValue()).intValue();
    }

    @Override // kotlinx.serialization.internal.n
    public Set a() {
        return this.f68033e;
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean b() {
        return f.a.c(this);
    }

    @Override // kotlinx.serialization.descriptors.f
    public int c(String name) {
        Intrinsics.h(name, "name");
        Integer num = (Integer) this.f68038j.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.f
    public h d() {
        return this.f68030b;
    }

    @Override // kotlinx.serialization.descriptors.f
    public int e() {
        return this.f68031c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SerialDescriptorImpl) {
            f fVar = (f) obj;
            if (Intrinsics.c(i(), fVar.i()) && Arrays.equals(this.f68039k, ((SerialDescriptorImpl) obj).f68039k) && e() == fVar.e()) {
                int iE = e();
                for (int i11 = 0; i11 < iE; i11++) {
                    if (Intrinsics.c(h(i11).i(), fVar.h(i11).i()) && Intrinsics.c(h(i11).d(), fVar.h(i11).d())) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.f
    public String f(int i11) {
        return this.f68034f[i11];
    }

    @Override // kotlinx.serialization.descriptors.f
    public List g(int i11) {
        return this.f68036h[i11];
    }

    @Override // kotlinx.serialization.descriptors.f
    public List getAnnotations() {
        return this.f68032d;
    }

    @Override // kotlinx.serialization.descriptors.f
    public f h(int i11) {
        return this.f68035g[i11];
    }

    public int hashCode() {
        return l();
    }

    @Override // kotlinx.serialization.descriptors.f
    public String i() {
        return this.f68029a;
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean isInline() {
        return f.a.b(this);
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean j(int i11) {
        return this.f68037i[i11];
    }

    public String toString() {
        return CollectionsKt.s0(RangesKt.t(0, e()), ", ", i() + '(', ")", 0, null, new Function1<Integer, CharSequence>() { // from class: kotlinx.serialization.descriptors.SerialDescriptorImpl.toString.1
            {
                super(1);
            }

            public final CharSequence invoke(int i11) {
                return SerialDescriptorImpl.this.f(i11) + ": " + SerialDescriptorImpl.this.h(i11).i();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }
        }, 24, null);
    }
}
