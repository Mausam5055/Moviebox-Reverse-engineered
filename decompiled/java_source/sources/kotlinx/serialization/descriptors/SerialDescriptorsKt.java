package kotlinx.serialization.descriptors;

import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.internal.t1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SerialDescriptorsKt {
    public static final f a(String serialName, e kind) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(kind, "kind");
        if (StringsKt.q0(serialName)) {
            throw new IllegalArgumentException("Blank serial names are prohibited");
        }
        return t1.a(serialName, kind);
    }

    public static final f b(String serialName, f[] typeParameters, Function1 builderAction) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(typeParameters, "typeParameters");
        Intrinsics.h(builderAction, "builderAction");
        if (StringsKt.q0(serialName)) {
            throw new IllegalArgumentException("Blank serial names are prohibited");
        }
        a aVar = new a(serialName);
        builderAction.invoke(aVar);
        return new SerialDescriptorImpl(serialName, i.a.f68070a, aVar.f().size(), ArraysKt.K0(typeParameters), aVar);
    }

    public static final f c(String serialName, h kind, f[] typeParameters, Function1 builder) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(kind, "kind");
        Intrinsics.h(typeParameters, "typeParameters");
        Intrinsics.h(builder, "builder");
        if (StringsKt.q0(serialName)) {
            throw new IllegalArgumentException("Blank serial names are prohibited");
        }
        if (Intrinsics.c(kind, i.a.f68070a)) {
            throw new IllegalArgumentException("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
        }
        a aVar = new a(serialName);
        builder.invoke(aVar);
        return new SerialDescriptorImpl(serialName, kind, aVar.f().size(), ArraysKt.K0(typeParameters), aVar);
    }

    public static /* synthetic */ f d(String str, h hVar, f[] fVarArr, Function1 function1, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            function1 = new Function1<a, Unit>() { // from class: kotlinx.serialization.descriptors.SerialDescriptorsKt$buildSerialDescriptor$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((a) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(a aVar) {
                    Intrinsics.h(aVar, "$this$null");
                }
            };
        }
        return c(str, hVar, fVarArr, function1);
    }
}
