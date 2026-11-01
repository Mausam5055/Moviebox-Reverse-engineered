package kotlinx.serialization.json.internal;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
public abstract class TreeJsonEncoderKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(kotlinx.serialization.descriptors.f fVar) {
        return (fVar.d() instanceof kotlinx.serialization.descriptors.e) || fVar.d() == kotlinx.serialization.descriptors.h.b.f68069a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final kotlinx.serialization.json.h c(kotlinx.serialization.json.a aVar, Object obj, kotlinx.serialization.g serializer) {
        Intrinsics.h(aVar, "<this>");
        Intrinsics.h(serializer, "serializer");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        new c0(aVar, new Function1<kotlinx.serialization.json.h, Unit>() { // from class: kotlinx.serialization.json.internal.TreeJsonEncoderKt$writeJson$encoder$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                invoke((kotlinx.serialization.json.h) obj2);
                return Unit.f67061a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void invoke(kotlinx.serialization.json.h it) {
                Intrinsics.h(it, "it");
                objectRef.element = it;
            }
        }).e(serializer, obj);
        T t11 = objectRef.element;
        if (t11 != 0) {
            return (kotlinx.serialization.json.h) t11;
        }
        Intrinsics.z("result");
        return null;
    }
}
