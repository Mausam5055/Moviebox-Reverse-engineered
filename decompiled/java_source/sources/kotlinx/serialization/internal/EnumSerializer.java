package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes7.dex */
public final class EnumSerializer implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Enum[] f68076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private kotlinx.serialization.descriptors.f f68077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f68078c;

    public EnumSerializer(final String serialName, Enum[] values) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(values, "values");
        this.f68076a = values;
        this.f68078c = LazyKt.b(new Function0<kotlinx.serialization.descriptors.f>() { // from class: kotlinx.serialization.internal.EnumSerializer$descriptor$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlinx.serialization.descriptors.f invoke() {
                kotlinx.serialization.descriptors.f fVar = this.this$0.f68077b;
                return fVar == null ? this.this$0.c(serialName) : fVar;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlinx.serialization.descriptors.f c(String str) {
        EnumDescriptor enumDescriptor = new EnumDescriptor(str, this.f68076a.length);
        for (Enum r11 : this.f68076a) {
            PluginGeneratedSerialDescriptor.m(enumDescriptor, r11.name(), false, 2, null);
        }
        return enumDescriptor;
    }

    @Override // kotlinx.serialization.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Enum deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        int iE = decoder.e(getDescriptor());
        if (iE >= 0) {
            Enum[] enumArr = this.f68076a;
            if (iE < enumArr.length) {
                return enumArr[iE];
            }
        }
        throw new SerializationException(iE + " is not among valid " + getDescriptor().i() + " enum values, values size is " + this.f68076a.length);
    }

    @Override // kotlinx.serialization.g
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void serialize(e00.f encoder, Enum value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        int iH0 = ArraysKt.h0(this.f68076a, value);
        if (iH0 != -1) {
            encoder.k(getDescriptor(), iH0);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(value);
        sb2.append(" is not a valid enum ");
        sb2.append(getDescriptor().i());
        sb2.append(", must be one of ");
        String string = Arrays.toString(this.f68076a);
        Intrinsics.g(string, "toString(this)");
        sb2.append(string);
        throw new SerializationException(sb2.toString());
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return (kotlinx.serialization.descriptors.f) this.f68078c.getValue();
    }

    public String toString() {
        return "kotlinx.serialization.internal.EnumSerializer<" + getDescriptor().i() + '>';
    }
}
