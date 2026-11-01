package ez;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.f;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.v0;
import kotlinx.serialization.internal.w1;

/* JADX INFO: loaded from: classes7.dex */
public final class b {
    public static final C0752b Companion = new C0752b(null);
    private Map<String, String> _customData;
    private volatile ez.a _demographic;
    private volatile c _location;
    private volatile d _revenue;
    private volatile e _sessionContext;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final /* synthetic */ f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.fpd.FirstPartyData", aVar, 5);
            pluginGeneratedSerialDescriptor.l("session_context", true);
            pluginGeneratedSerialDescriptor.l("demographic", true);
            pluginGeneratedSerialDescriptor.l(RequestParameters.SUBRESOURCE_LOCATION, true);
            pluginGeneratedSerialDescriptor.l("revenue", true);
            pluginGeneratedSerialDescriptor.l("custom_data", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            kotlinx.serialization.b bVarS = d00.a.s(e.a.INSTANCE);
            kotlinx.serialization.b bVarS2 = d00.a.s(ez.a.C0751a.INSTANCE);
            kotlinx.serialization.b bVarS3 = d00.a.s(c.a.INSTANCE);
            kotlinx.serialization.b bVarS4 = d00.a.s(d.a.INSTANCE);
            b2 b2Var = b2.f68112a;
            return new kotlinx.serialization.b[]{bVarS, bVarS2, bVarS3, bVarS4, d00.a.s(new v0(b2Var, b2Var))};
        }

        @Override // kotlinx.serialization.a
        public b deserialize(e00.e decoder) {
            Object objN;
            Object objN2;
            Object objN3;
            Object objN4;
            int i11;
            Object objN5;
            Intrinsics.h(decoder, "decoder");
            f descriptor2 = getDescriptor();
            e00.c cVarB = decoder.b(descriptor2);
            Object objN6 = null;
            if (cVarB.p()) {
                objN5 = cVarB.n(descriptor2, 0, e.a.INSTANCE, null);
                objN = cVarB.n(descriptor2, 1, ez.a.C0751a.INSTANCE, null);
                objN2 = cVarB.n(descriptor2, 2, c.a.INSTANCE, null);
                objN3 = cVarB.n(descriptor2, 3, d.a.INSTANCE, null);
                b2 b2Var = b2.f68112a;
                objN4 = cVarB.n(descriptor2, 4, new v0(b2Var, b2Var), null);
                i11 = 31;
            } else {
                boolean z10 = true;
                int i12 = 0;
                Object objN7 = null;
                Object objN8 = null;
                Object objN9 = null;
                Object objN10 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        objN6 = cVarB.n(descriptor2, 0, e.a.INSTANCE, objN6);
                        i12 |= 1;
                    } else if (iO == 1) {
                        objN7 = cVarB.n(descriptor2, 1, ez.a.C0751a.INSTANCE, objN7);
                        i12 |= 2;
                    } else if (iO == 2) {
                        objN8 = cVarB.n(descriptor2, 2, c.a.INSTANCE, objN8);
                        i12 |= 4;
                    } else if (iO == 3) {
                        objN9 = cVarB.n(descriptor2, 3, d.a.INSTANCE, objN9);
                        i12 |= 8;
                    } else {
                        if (iO != 4) {
                            throw new UnknownFieldException(iO);
                        }
                        b2 b2Var2 = b2.f68112a;
                        objN10 = cVarB.n(descriptor2, 4, new v0(b2Var2, b2Var2), objN10);
                        i12 |= 16;
                    }
                }
                objN = objN7;
                objN2 = objN8;
                objN3 = objN9;
                objN4 = objN10;
                Object obj = objN6;
                i11 = i12;
                objN5 = obj;
            }
            cVarB.c(descriptor2);
            return new b(i11, (e) objN5, (ez.a) objN, (c) objN2, (d) objN3, (Map) objN4, null);
        }

        @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
        public f getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.g
        public void serialize(e00.f encoder, b value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            f descriptor2 = getDescriptor();
            e00.d dVarB = encoder.b(descriptor2);
            b.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    /* JADX INFO: renamed from: ez.b$b, reason: collision with other inner class name */
    public static final class C0752b {
        private C0752b() {
        }

        public /* synthetic */ C0752b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return a.INSTANCE;
        }
    }

    public b() {
    }

    @Deprecated
    public /* synthetic */ b(int i11, e eVar, ez.a aVar, c cVar, d dVar, Map map, w1 w1Var) {
        if ((i11 & 1) == 0) {
            this._sessionContext = null;
        } else {
            this._sessionContext = eVar;
        }
        if ((i11 & 2) == 0) {
            this._demographic = null;
        } else {
            this._demographic = aVar;
        }
        if ((i11 & 4) == 0) {
            this._location = null;
        } else {
            this._location = cVar;
        }
        if ((i11 & 8) == 0) {
            this._revenue = null;
        } else {
            this._revenue = dVar;
        }
        if ((i11 & 16) == 0) {
            this._customData = null;
        } else {
            this._customData = map;
        }
    }

    private static /* synthetic */ void get_customData$annotations() {
    }

    private static /* synthetic */ void get_demographic$annotations() {
    }

    private static /* synthetic */ void get_location$annotations() {
    }

    private static /* synthetic */ void get_revenue$annotations() {
    }

    private static /* synthetic */ void get_sessionContext$annotations() {
    }

    @JvmStatic
    public static final void write$Self(b self, e00.d output, f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self._sessionContext != null) {
            output.i(serialDesc, 0, e.a.INSTANCE, self._sessionContext);
        }
        if (output.z(serialDesc, 1) || self._demographic != null) {
            output.i(serialDesc, 1, ez.a.C0751a.INSTANCE, self._demographic);
        }
        if (output.z(serialDesc, 2) || self._location != null) {
            output.i(serialDesc, 2, c.a.INSTANCE, self._location);
        }
        if (output.z(serialDesc, 3) || self._revenue != null) {
            output.i(serialDesc, 3, d.a.INSTANCE, self._revenue);
        }
        if (!output.z(serialDesc, 4) && self._customData == null) {
            return;
        }
        b2 b2Var = b2.f68112a;
        output.i(serialDesc, 4, new v0(b2Var, b2Var), self._customData);
    }

    public final synchronized void clearAll() {
        try {
            this._sessionContext = null;
            this._demographic = null;
            this._location = null;
            this._revenue = null;
            Map<String, String> map = this._customData;
            if (map != null) {
                map.clear();
            }
            this._customData = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized Map<String, String> getCustomData() {
        Map<String, String> concurrentHashMap;
        concurrentHashMap = this._customData;
        if (concurrentHashMap == null) {
            concurrentHashMap = new ConcurrentHashMap<>();
            this._customData = concurrentHashMap;
        }
        return concurrentHashMap;
    }

    public final synchronized ez.a getDemographic() {
        ez.a aVar;
        aVar = this._demographic;
        if (aVar == null) {
            aVar = new ez.a();
            this._demographic = aVar;
        }
        return aVar;
    }

    public final synchronized c getLocation() {
        c cVar;
        cVar = this._location;
        if (cVar == null) {
            cVar = new c();
            this._location = cVar;
        }
        return cVar;
    }

    public final synchronized d getRevenue() {
        d dVar;
        dVar = this._revenue;
        if (dVar == null) {
            dVar = new d();
            this._revenue = dVar;
        }
        return dVar;
    }

    public final synchronized e getSessionContext() {
        e eVar;
        eVar = this._sessionContext;
        if (eVar == null) {
            eVar = new e();
            this._sessionContext = eVar;
        }
        return eVar;
    }
}
