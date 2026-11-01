package com.vungle.ads.internal.model;

import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.w1;

/* JADX INFO: loaded from: classes7.dex */
public final class h {
    public static final b Companion = new b(null);
    private final String sdkUserAgent;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.RtbRequest", aVar, 1);
            pluginGeneratedSerialDescriptor.l("sdk_user_agent", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            return new kotlinx.serialization.b[]{d00.a.s(b2.f68112a)};
        }

        @Override // kotlinx.serialization.a
        public h deserialize(e00.e decoder) {
            Object objN;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            e00.c cVarB = decoder.b(descriptor2);
            int i11 = 1;
            w1 w1Var = null;
            if (cVarB.p()) {
                objN = cVarB.n(descriptor2, 0, b2.f68112a, null);
            } else {
                boolean z10 = true;
                int i12 = 0;
                objN = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else {
                        if (iO != 0) {
                            throw new UnknownFieldException(iO);
                        }
                        objN = cVarB.n(descriptor2, 0, b2.f68112a, objN);
                        i12 = 1;
                    }
                }
                i11 = i12;
            }
            cVarB.c(descriptor2);
            return new h(i11, (String) objN, w1Var);
        }

        @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.g
        public void serialize(e00.f encoder, h value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            e00.d dVarB = encoder.b(descriptor2);
            h.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return a.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h() {
        this((String) null, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    @Deprecated
    public /* synthetic */ h(int i11, String str, w1 w1Var) {
        if ((i11 & 1) == 0) {
            this.sdkUserAgent = null;
        } else {
            this.sdkUserAgent = str;
        }
    }

    public h(String str) {
        this.sdkUserAgent = str;
    }

    public /* synthetic */ h(String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str);
    }

    public static /* synthetic */ h copy$default(h hVar, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = hVar.sdkUserAgent;
        }
        return hVar.copy(str);
    }

    public static /* synthetic */ void getSdkUserAgent$annotations() {
    }

    @JvmStatic
    public static final void write$Self(h self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (!output.z(serialDesc, 0) && self.sdkUserAgent == null) {
            return;
        }
        output.i(serialDesc, 0, b2.f68112a, self.sdkUserAgent);
    }

    public final String component1() {
        return this.sdkUserAgent;
    }

    public final h copy(String str) {
        return new h(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h) && Intrinsics.c(this.sdkUserAgent, ((h) obj).sdkUserAgent);
    }

    public final String getSdkUserAgent() {
        return this.sdkUserAgent;
    }

    public int hashCode() {
        String str = this.sdkUserAgent;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "RtbRequest(sdkUserAgent=" + this.sdkUserAgent + ')';
    }
}
