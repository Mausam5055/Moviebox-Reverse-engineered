package com.vungle.ads.internal.model;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.m1;
import kotlinx.serialization.internal.w1;

/* JADX INFO: loaded from: classes7.dex */
public final class g {
    public static final b Companion = new b(null);
    private final boolean headerBidding;
    private final String referenceId;
    private final String type;
    private Long wakeupTime;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.Placement", aVar, 3);
            pluginGeneratedSerialDescriptor.l("placement_ref_id", false);
            pluginGeneratedSerialDescriptor.l("is_hb", true);
            pluginGeneratedSerialDescriptor.l(NativeComponentConstants.KEY_COMPONENT_TYPE, true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            b2 b2Var = b2.f68112a;
            return new kotlinx.serialization.b[]{b2Var, kotlinx.serialization.internal.i.f68152a, d00.a.s(b2Var)};
        }

        @Override // kotlinx.serialization.a
        public g deserialize(e00.e decoder) {
            boolean z10;
            int i11;
            String str;
            Object objN;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            e00.c cVarB = decoder.b(descriptor2);
            if (cVarB.p()) {
                String strM = cVarB.m(descriptor2, 0);
                boolean zC = cVarB.C(descriptor2, 1);
                objN = cVarB.n(descriptor2, 2, b2.f68112a, null);
                str = strM;
                z10 = zC;
                i11 = 7;
            } else {
                boolean z11 = true;
                boolean zC2 = false;
                String strM2 = null;
                Object objN2 = null;
                int i12 = 0;
                while (z11) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z11 = false;
                    } else if (iO == 0) {
                        strM2 = cVarB.m(descriptor2, 0);
                        i12 |= 1;
                    } else if (iO == 1) {
                        zC2 = cVarB.C(descriptor2, 1);
                        i12 |= 2;
                    } else {
                        if (iO != 2) {
                            throw new UnknownFieldException(iO);
                        }
                        objN2 = cVarB.n(descriptor2, 2, b2.f68112a, objN2);
                        i12 |= 4;
                    }
                }
                z10 = zC2;
                i11 = i12;
                str = strM2;
                objN = objN2;
            }
            cVarB.c(descriptor2);
            return new g(i11, str, z10, (String) objN, (w1) null);
        }

        @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.g
        public void serialize(e00.f encoder, g value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            e00.d dVarB = encoder.b(descriptor2);
            g.write$Self(value, dVarB, descriptor2);
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

    @Deprecated
    public /* synthetic */ g(int i11, String str, boolean z10, String str2, w1 w1Var) {
        if (1 != (i11 & 1)) {
            m1.a(i11, 1, a.INSTANCE.getDescriptor());
        }
        this.referenceId = str;
        if ((i11 & 2) == 0) {
            this.headerBidding = false;
        } else {
            this.headerBidding = z10;
        }
        if ((i11 & 4) == 0) {
            this.type = null;
        } else {
            this.type = str2;
        }
        this.wakeupTime = null;
    }

    public g(String referenceId, boolean z10, String str) {
        Intrinsics.h(referenceId, "referenceId");
        this.referenceId = referenceId;
        this.headerBidding = z10;
        this.type = str;
    }

    public /* synthetic */ g(String str, boolean z10, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? null : str2);
    }

    public static /* synthetic */ g copy$default(g gVar, String str, boolean z10, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = gVar.referenceId;
        }
        if ((i11 & 2) != 0) {
            z10 = gVar.headerBidding;
        }
        if ((i11 & 4) != 0) {
            str2 = gVar.type;
        }
        return gVar.copy(str, z10, str2);
    }

    public static /* synthetic */ void getHeaderBidding$annotations() {
    }

    public static /* synthetic */ void getReferenceId$annotations() {
    }

    public static /* synthetic */ void getType$annotations() {
    }

    public static /* synthetic */ void getWakeupTime$annotations() {
    }

    @JvmStatic
    public static final void write$Self(g self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        output.y(serialDesc, 0, self.referenceId);
        if (output.z(serialDesc, 1) || self.headerBidding) {
            output.x(serialDesc, 1, self.headerBidding);
        }
        if (!output.z(serialDesc, 2) && self.type == null) {
            return;
        }
        output.i(serialDesc, 2, b2.f68112a, self.type);
    }

    public final String component1() {
        return this.referenceId;
    }

    public final boolean component2() {
        return this.headerBidding;
    }

    public final String component3() {
        return this.type;
    }

    public final g copy(String referenceId, boolean z10, String str) {
        Intrinsics.h(referenceId, "referenceId");
        return new g(referenceId, z10, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return Intrinsics.c(this.referenceId, gVar.referenceId) && this.headerBidding == gVar.headerBidding && Intrinsics.c(this.type, gVar.type);
    }

    public final boolean getHeaderBidding() {
        return this.headerBidding;
    }

    public final String getReferenceId() {
        return this.referenceId;
    }

    public final String getType() {
        return this.type;
    }

    public final Long getWakeupTime() {
        return this.wakeupTime;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public int hashCode() {
        int iHashCode = this.referenceId.hashCode() * 31;
        boolean z10 = this.headerBidding;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int i11 = (iHashCode + r11) * 31;
        String str = this.type;
        return i11 + (str == null ? 0 : str.hashCode());
    }

    public final boolean isAppOpen() {
        return Intrinsics.c(this.type, com.vungle.ads.internal.b.PLACEMENT_TYPE_APP_OPEN);
    }

    public final boolean isBanner() {
        return Intrinsics.c(this.type, "banner");
    }

    public final boolean isInline() {
        return Intrinsics.c(this.type, "in_line");
    }

    public final boolean isInterstitial() {
        return Intrinsics.c(this.type, com.vungle.ads.internal.b.PLACEMENT_TYPE_INTERSTITIAL);
    }

    public final boolean isMREC() {
        return Intrinsics.c(this.type, "mrec");
    }

    public final boolean isNative() {
        return Intrinsics.c(this.type, "native");
    }

    public final boolean isRewardedVideo() {
        return Intrinsics.c(this.type, com.vungle.ads.internal.b.PLACEMENT_TYPE_REWARDED);
    }

    public final void setWakeupTime(Long l11) {
        this.wakeupTime = l11;
    }

    public final void snooze(long j11) {
        this.wakeupTime = Long.valueOf(System.currentTimeMillis() + (j11 * ((long) 1000)));
    }

    public String toString() {
        return "Placement(referenceId=" + this.referenceId + ", headerBidding=" + this.headerBidding + ", type=" + this.type + ')';
    }
}
