package kotlinx.serialization.json;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes7.dex */
public final class JsonNull extends u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final JsonNull f68226c = new JsonNull();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f68227d = "null";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ Lazy f68228e = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0<kotlinx.serialization.b>() { // from class: kotlinx.serialization.json.JsonNull$$cachedSerializer$delegate$1
        @Override // kotlin.jvm.functions.Function0
        public final kotlinx.serialization.b invoke() {
            return r.f68357a;
        }
    });

    private JsonNull() {
        super(null);
    }

    @Override // kotlinx.serialization.json.u
    public String a() {
        return f68227d;
    }
}
