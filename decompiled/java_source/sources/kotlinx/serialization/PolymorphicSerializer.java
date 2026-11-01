package kotlinx.serialization;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class PolymorphicSerializer extends kotlinx.serialization.internal.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KClass f68022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f68023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f68024c;

    public PolymorphicSerializer(KClass baseClass) {
        Intrinsics.h(baseClass, "baseClass");
        this.f68022a = baseClass;
        this.f68023b = CollectionsKt.l();
        this.f68024c = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0<kotlinx.serialization.descriptors.f>() { // from class: kotlinx.serialization.PolymorphicSerializer$descriptor$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlinx.serialization.descriptors.f invoke() {
                final PolymorphicSerializer polymorphicSerializer = this.this$0;
                return kotlinx.serialization.descriptors.b.c(SerialDescriptorsKt.c("kotlinx.serialization.Polymorphic", kotlinx.serialization.descriptors.d.a.f68051a, new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() { // from class: kotlinx.serialization.PolymorphicSerializer$descriptor$2.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((kotlinx.serialization.descriptors.a) obj);
                        return Unit.f67061a;
                    }

                    public final void invoke(kotlinx.serialization.descriptors.a buildSerialDescriptor) {
                        Intrinsics.h(buildSerialDescriptor, "$this$buildSerialDescriptor");
                        kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, NativeComponentConstants.KEY_COMPONENT_TYPE, d00.a.G(StringCompanionObject.f67289a).getDescriptor(), null, false, 12, null);
                        kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, AppMeasurementSdk.ConditionalUserProperty.VALUE, SerialDescriptorsKt.d("kotlinx.serialization.Polymorphic<" + polymorphicSerializer.e().g() + '>', kotlinx.serialization.descriptors.h.a.f68068a, new kotlinx.serialization.descriptors.f[0], null, 8, null), null, false, 12, null);
                        buildSerialDescriptor.h(polymorphicSerializer.f68023b);
                    }
                }), this.this$0.e());
            }
        });
    }

    @Override // kotlinx.serialization.internal.b
    public KClass e() {
        return this.f68022a;
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return (kotlinx.serialization.descriptors.f) this.f68024c.getValue();
    }

    public String toString() {
        return "kotlinx.serialization.PolymorphicSerializer(baseClass: " + e() + ')';
    }
}
