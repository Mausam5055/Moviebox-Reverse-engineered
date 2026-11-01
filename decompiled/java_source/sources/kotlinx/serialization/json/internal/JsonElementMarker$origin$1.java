package kotlinx.serialization.json.internal;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
/* synthetic */ class JsonElementMarker$origin$1 extends FunctionReferenceImpl implements Function2<kotlinx.serialization.descriptors.f, Integer, Boolean> {
    JsonElementMarker$origin$1(Object obj) {
        super(2, obj, JsonElementMarker.class, "readIfAbsent", "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z", 0);
    }

    public final Boolean invoke(kotlinx.serialization.descriptors.f p11, int i11) {
        Intrinsics.h(p11, "p0");
        return Boolean.valueOf(((JsonElementMarker) this.receiver).e(p11, i11));
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke((kotlinx.serialization.descriptors.f) obj, ((Number) obj2).intValue());
    }
}
