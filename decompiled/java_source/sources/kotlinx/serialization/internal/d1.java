package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d1 extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.serialization.b f68123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.serialization.b f68124b;

    private d1(kotlinx.serialization.b bVar, kotlinx.serialization.b bVar2) {
        super(null);
        this.f68123a = bVar;
        this.f68124b = bVar2;
    }

    public /* synthetic */ d1(kotlinx.serialization.b bVar, kotlinx.serialization.b bVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, bVar2);
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public abstract kotlinx.serialization.descriptors.f getDescriptor();

    public final kotlinx.serialization.b m() {
        return this.f68123a;
    }

    public final kotlinx.serialization.b n() {
        return this.f68124b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final void g(e00.c decoder, Map builder, int i11, int i12) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        if (i12 < 0) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL");
        }
        IntProgression intProgressionS = RangesKt.s(RangesKt.t(0, i12 * 2), 2);
        int first = intProgressionS.getFirst();
        int last = intProgressionS.getLast();
        int step = intProgressionS.getStep();
        if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
            return;
        }
        while (true) {
            h(decoder, i11 + first, builder, false);
            if (first == last) {
                return;
            } else {
                first += step;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final void h(e00.c decoder, int i11, Map builder, boolean z10) {
        int iO;
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        Object objC = e00.c.a.c(decoder, getDescriptor(), i11, this.f68123a, null, 8, null);
        if (z10) {
            iO = decoder.o(getDescriptor());
            if (iO != i11 + 1) {
                throw new IllegalArgumentException(("Value must follow key in a map, index for key: " + i11 + ", returned index for value: " + iO).toString());
            }
        } else {
            iO = i11 + 1;
        }
        int i12 = iO;
        builder.put(objC, (!builder.containsKey(objC) || (this.f68124b.getDescriptor().d() instanceof kotlinx.serialization.descriptors.e)) ? e00.c.a.c(decoder, getDescriptor(), i12, this.f68124b, null, 8, null) : decoder.y(getDescriptor(), i12, this.f68124b, MapsKt.i(builder, objC)));
    }

    @Override // kotlinx.serialization.g
    public void serialize(e00.f encoder, Object obj) {
        Intrinsics.h(encoder, "encoder");
        int iE = e(obj);
        kotlinx.serialization.descriptors.f descriptor = getDescriptor();
        e00.d dVarJ = encoder.j(descriptor, iE);
        Iterator itD = d(obj);
        int i11 = 0;
        while (itD.hasNext()) {
            Map.Entry entry = (Map.Entry) itD.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i12 = i11 + 1;
            dVarJ.C(getDescriptor(), i11, m(), key);
            i11 += 2;
            dVarJ.C(getDescriptor(), i12, n(), value);
        }
        dVarJ.c(descriptor);
    }
}
