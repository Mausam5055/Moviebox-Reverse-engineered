package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public class PluginGeneratedSerialDescriptor implements kotlinx.serialization.descriptors.f, n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f68086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i0 f68087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f68088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f68089d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String[] f68090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List[] f68091f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f68092g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean[] f68093h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map f68094i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f68095j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f68096k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Lazy f68097l;

    public PluginGeneratedSerialDescriptor(String serialName, i0 i0Var, int i11) {
        Intrinsics.h(serialName, "serialName");
        this.f68086a = serialName;
        this.f68087b = i0Var;
        this.f68088c = i11;
        this.f68089d = -1;
        String[] strArr = new String[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            strArr[i12] = "[UNINITIALIZED]";
        }
        this.f68090e = strArr;
        int i13 = this.f68088c;
        this.f68091f = new List[i13];
        this.f68093h = new boolean[i13];
        this.f68094i = MapsKt.h();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.f68095j = LazyKt.a(lazyThreadSafetyMode, new Function0<kotlinx.serialization.b[]>() { // from class: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor$childSerializers$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlinx.serialization.b[] invoke() {
                kotlinx.serialization.b[] bVarArrChildSerializers;
                i0 i0Var2 = this.this$0.f68087b;
                return (i0Var2 == null || (bVarArrChildSerializers = i0Var2.childSerializers()) == null) ? o1.f68177a : bVarArrChildSerializers;
            }
        });
        this.f68096k = LazyKt.a(lazyThreadSafetyMode, new Function0<kotlinx.serialization.descriptors.f[]>() { // from class: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor$typeParameterDescriptors$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlinx.serialization.descriptors.f[] invoke() {
                ArrayList arrayList;
                kotlinx.serialization.b[] bVarArrTypeParametersSerializers;
                i0 i0Var2 = this.this$0.f68087b;
                if (i0Var2 == null || (bVarArrTypeParametersSerializers = i0Var2.typeParametersSerializers()) == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(bVarArrTypeParametersSerializers.length);
                    for (kotlinx.serialization.b bVar : bVarArrTypeParametersSerializers) {
                        arrayList.add(bVar.getDescriptor());
                    }
                }
                return l1.b(arrayList);
            }
        });
        this.f68097l = LazyKt.a(lazyThreadSafetyMode, new Function0<Integer>() { // from class: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor$_hashCode$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.this$0;
                return Integer.valueOf(n1.a(pluginGeneratedSerialDescriptor, pluginGeneratedSerialDescriptor.p()));
            }
        });
    }

    public /* synthetic */ PluginGeneratedSerialDescriptor(String str, i0 i0Var, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i12 & 2) != 0 ? null : i0Var, i11);
    }

    public static /* synthetic */ void m(PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor, String str, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addElement");
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        pluginGeneratedSerialDescriptor.l(str, z10);
    }

    private final Map n() {
        HashMap map = new HashMap();
        int length = this.f68090e.length;
        for (int i11 = 0; i11 < length; i11++) {
            map.put(this.f68090e[i11], Integer.valueOf(i11));
        }
        return map;
    }

    private final kotlinx.serialization.b[] o() {
        return (kotlinx.serialization.b[]) this.f68095j.getValue();
    }

    private final int q() {
        return ((Number) this.f68097l.getValue()).intValue();
    }

    @Override // kotlinx.serialization.internal.n
    public Set a() {
        return this.f68094i.keySet();
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean b() {
        return kotlinx.serialization.descriptors.f.a.c(this);
    }

    @Override // kotlinx.serialization.descriptors.f
    public int c(String name) {
        Intrinsics.h(name, "name");
        Integer num = (Integer) this.f68094i.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.f
    public kotlinx.serialization.descriptors.h d() {
        return kotlinx.serialization.descriptors.i.a.f68070a;
    }

    @Override // kotlinx.serialization.descriptors.f
    public final int e() {
        return this.f68088c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PluginGeneratedSerialDescriptor) {
            kotlinx.serialization.descriptors.f fVar = (kotlinx.serialization.descriptors.f) obj;
            if (Intrinsics.c(i(), fVar.i()) && Arrays.equals(p(), ((PluginGeneratedSerialDescriptor) obj).p()) && e() == fVar.e()) {
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
        return this.f68090e[i11];
    }

    @Override // kotlinx.serialization.descriptors.f
    public List g(int i11) {
        List list = this.f68091f[i11];
        return list == null ? CollectionsKt.l() : list;
    }

    @Override // kotlinx.serialization.descriptors.f
    public List getAnnotations() {
        List list = this.f68092g;
        return list == null ? CollectionsKt.l() : list;
    }

    @Override // kotlinx.serialization.descriptors.f
    public kotlinx.serialization.descriptors.f h(int i11) {
        return o()[i11].getDescriptor();
    }

    public int hashCode() {
        return q();
    }

    @Override // kotlinx.serialization.descriptors.f
    public String i() {
        return this.f68086a;
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean isInline() {
        return kotlinx.serialization.descriptors.f.a.b(this);
    }

    @Override // kotlinx.serialization.descriptors.f
    public boolean j(int i11) {
        return this.f68093h[i11];
    }

    public final void l(String name, boolean z10) {
        Intrinsics.h(name, "name");
        String[] strArr = this.f68090e;
        int i11 = this.f68089d + 1;
        this.f68089d = i11;
        strArr[i11] = name;
        this.f68093h[i11] = z10;
        this.f68091f[i11] = null;
        if (i11 == this.f68088c - 1) {
            this.f68094i = n();
        }
    }

    public final kotlinx.serialization.descriptors.f[] p() {
        return (kotlinx.serialization.descriptors.f[]) this.f68096k.getValue();
    }

    public String toString() {
        return CollectionsKt.s0(RangesKt.t(0, this.f68088c), ", ", i() + '(', ")", 0, null, new Function1<Integer, CharSequence>() { // from class: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor.toString.1
            {
                super(1);
            }

            public final CharSequence invoke(int i11) {
                return PluginGeneratedSerialDescriptor.this.f(i11) + ": " + PluginGeneratedSerialDescriptor.this.h(i11).i();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }
        }, 24, null);
    }
}
