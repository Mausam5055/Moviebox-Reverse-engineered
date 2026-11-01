package com.vungle.ads.internal.signals;

import com.bykv.vk.openvk.preload.falconx.statistic.StatisticData;
import com.transsion.mpush.api.LocalPushMessage;
import com.vungle.ads.internal.model.j;
import e00.c;
import e00.d;
import e00.e;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.f;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b1;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.m1;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.w1;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    public static final b Companion = new b(null);
    private final int sessionCount;
    private long sessionCreationTime;
    private int sessionDepthCounter;
    private long sessionDuration;
    private final String sessionId;
    private List<com.vungle.ads.internal.signals.b> signaledAd;
    private List<j> unclosedAd;

    /* JADX INFO: renamed from: com.vungle.ads.internal.signals.a$a, reason: collision with other inner class name */
    public static final class C0716a implements i0 {
        public static final C0716a INSTANCE;
        public static final /* synthetic */ f descriptor;

        static {
            C0716a c0716a = new C0716a();
            INSTANCE = c0716a;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.signals.SessionData", c0716a, 7);
            pluginGeneratedSerialDescriptor.l("103", false);
            pluginGeneratedSerialDescriptor.l("101", true);
            pluginGeneratedSerialDescriptor.l(StatisticData.ERROR_CODE_NOT_FOUND, true);
            pluginGeneratedSerialDescriptor.l("106", true);
            pluginGeneratedSerialDescriptor.l(LocalPushMessage.STYLE_VERTICAL_TYPE, true);
            pluginGeneratedSerialDescriptor.l("104", true);
            pluginGeneratedSerialDescriptor.l("105", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private C0716a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            kotlinx.serialization.internal.f fVar = new kotlinx.serialization.internal.f(com.vungle.ads.internal.signals.b.a.INSTANCE);
            kotlinx.serialization.internal.f fVar2 = new kotlinx.serialization.internal.f(j.a.INSTANCE);
            r0 r0Var = r0.f68192a;
            b1 b1Var = b1.f68110a;
            return new kotlinx.serialization.b[]{r0Var, b2.f68112a, b1Var, fVar, b1Var, r0Var, fVar2};
        }

        @Override // kotlinx.serialization.a
        public a deserialize(e decoder) {
            int i11;
            Object objY;
            int i12;
            long j11;
            int i13;
            String str;
            Object objY2;
            long j12;
            Intrinsics.h(decoder, "decoder");
            f descriptor2 = getDescriptor();
            c cVarB = decoder.b(descriptor2);
            int i14 = 2;
            if (cVarB.p()) {
                int i15 = cVarB.i(descriptor2, 0);
                String strM = cVarB.m(descriptor2, 1);
                long jF = cVarB.f(descriptor2, 2);
                objY2 = cVarB.y(descriptor2, 3, new kotlinx.serialization.internal.f(com.vungle.ads.internal.signals.b.a.INSTANCE), null);
                long jF2 = cVarB.f(descriptor2, 4);
                int i16 = cVarB.i(descriptor2, 5);
                objY = cVarB.y(descriptor2, 6, new kotlinx.serialization.internal.f(j.a.INSTANCE), null);
                i11 = i15;
                i12 = i16;
                j11 = jF2;
                str = strM;
                i13 = 127;
                j12 = jF;
            } else {
                long jF3 = 0;
                boolean z10 = true;
                int i17 = 0;
                int i18 = 0;
                String strM2 = null;
                Object objY3 = null;
                long jF4 = 0;
                Object objY4 = null;
                int i19 = 0;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    switch (iO) {
                        case -1:
                            z10 = false;
                            break;
                        case 0:
                            i18 |= 1;
                            i17 = cVarB.i(descriptor2, 0);
                            break;
                        case 1:
                            strM2 = cVarB.m(descriptor2, 1);
                            i18 |= 2;
                            break;
                        case 2:
                            jF4 = cVarB.f(descriptor2, i14);
                            i18 |= 4;
                            break;
                        case 3:
                            objY3 = cVarB.y(descriptor2, 3, new kotlinx.serialization.internal.f(com.vungle.ads.internal.signals.b.a.INSTANCE), objY3);
                            i18 |= 8;
                            i14 = 2;
                            break;
                        case 4:
                            jF3 = cVarB.f(descriptor2, 4);
                            i18 |= 16;
                            i14 = 2;
                            break;
                        case 5:
                            i19 = cVarB.i(descriptor2, 5);
                            i18 |= 32;
                            i14 = 2;
                            break;
                        case 6:
                            objY4 = cVarB.y(descriptor2, 6, new kotlinx.serialization.internal.f(j.a.INSTANCE), objY4);
                            i18 |= 64;
                            i14 = 2;
                            break;
                        default:
                            throw new UnknownFieldException(iO);
                    }
                }
                i11 = i17;
                objY = objY4;
                i12 = i19;
                j11 = jF3;
                i13 = i18;
                str = strM2;
                objY2 = objY3;
                j12 = jF4;
            }
            cVarB.c(descriptor2);
            return new a(i13, i11, str, j12, (List) objY2, j11, i12, (List) objY, null);
        }

        @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
        public f getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.g
        public void serialize(e00.f encoder, a value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            f descriptor2 = getDescriptor();
            d dVarB = encoder.b(descriptor2);
            a.write$Self(value, dVarB, descriptor2);
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
            return C0716a.INSTANCE;
        }
    }

    public a(int i11) {
        this.sessionCount = i11;
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "randomUUID().toString()");
        this.sessionId = string;
        this.sessionCreationTime = System.currentTimeMillis() / 1000;
        this.signaledAd = new ArrayList();
        this.unclosedAd = new ArrayList();
    }

    @Deprecated
    public /* synthetic */ a(int i11, int i12, String str, long j11, List list, long j12, int i13, List list2, w1 w1Var) {
        if (1 != (i11 & 1)) {
            m1.a(i11, 1, C0716a.INSTANCE.getDescriptor());
        }
        this.sessionCount = i12;
        if ((i11 & 2) == 0) {
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "randomUUID().toString()");
            this.sessionId = string;
        } else {
            this.sessionId = str;
        }
        if ((i11 & 4) == 0) {
            this.sessionCreationTime = System.currentTimeMillis() / 1000;
        } else {
            this.sessionCreationTime = j11;
        }
        if ((i11 & 8) == 0) {
            this.signaledAd = new ArrayList();
        } else {
            this.signaledAd = list;
        }
        if ((i11 & 16) == 0) {
            this.sessionDuration = 0L;
        } else {
            this.sessionDuration = j12;
        }
        if ((i11 & 32) == 0) {
            this.sessionDepthCounter = 0;
        } else {
            this.sessionDepthCounter = i13;
        }
        if ((i11 & 64) == 0) {
            this.unclosedAd = new ArrayList();
        } else {
            this.unclosedAd = list2;
        }
    }

    public static /* synthetic */ a copy$default(a aVar, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = aVar.sessionCount;
        }
        return aVar.copy(i11);
    }

    public static /* synthetic */ void getSessionCount$annotations() {
    }

    public static /* synthetic */ void getSessionCreationTime$annotations() {
    }

    public static /* synthetic */ void getSessionDepthCounter$annotations() {
    }

    public static /* synthetic */ void getSessionDuration$annotations() {
    }

    public static /* synthetic */ void getSessionId$annotations() {
    }

    public static /* synthetic */ void getSignaledAd$annotations() {
    }

    public static /* synthetic */ void getUnclosedAd$annotations() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0032  */
    @JvmStatic
    public static final void write$Self(a self, d output, f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        output.w(serialDesc, 0, self.sessionCount);
        if (output.z(serialDesc, 1)) {
            output.y(serialDesc, 1, self.sessionId);
        } else {
            String str = self.sessionId;
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "randomUUID().toString()");
            if (!Intrinsics.c(str, string)) {
                output.y(serialDesc, 1, self.sessionId);
            }
        }
        if (output.z(serialDesc, 2) || self.sessionCreationTime != System.currentTimeMillis() / 1000) {
            output.F(serialDesc, 2, self.sessionCreationTime);
        }
        if (output.z(serialDesc, 3) || !Intrinsics.c(self.signaledAd, new ArrayList())) {
            output.C(serialDesc, 3, new kotlinx.serialization.internal.f(com.vungle.ads.internal.signals.b.a.INSTANCE), self.signaledAd);
        }
        if (output.z(serialDesc, 4) || self.sessionDuration != 0) {
            output.F(serialDesc, 4, self.sessionDuration);
        }
        if (output.z(serialDesc, 5) || self.sessionDepthCounter != 0) {
            output.w(serialDesc, 5, self.sessionDepthCounter);
        }
        if (!output.z(serialDesc, 6) && Intrinsics.c(self.unclosedAd, new ArrayList())) {
            return;
        }
        output.C(serialDesc, 6, new kotlinx.serialization.internal.f(j.a.INSTANCE), self.unclosedAd);
    }

    public final int component1() {
        return this.sessionCount;
    }

    public final a copy(int i11) {
        return new a(i11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.sessionCount == ((a) obj).sessionCount;
    }

    public final int getSessionCount() {
        return this.sessionCount;
    }

    public final long getSessionCreationTime() {
        return this.sessionCreationTime;
    }

    public final int getSessionDepthCounter() {
        return this.sessionDepthCounter;
    }

    public final long getSessionDuration() {
        return this.sessionDuration;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final List<com.vungle.ads.internal.signals.b> getSignaledAd() {
        return this.signaledAd;
    }

    public final List<j> getUnclosedAd() {
        return this.unclosedAd;
    }

    public int hashCode() {
        return this.sessionCount;
    }

    public final void setSessionCreationTime(long j11) {
        this.sessionCreationTime = j11;
    }

    public final void setSessionDepthCounter(int i11) {
        this.sessionDepthCounter = i11;
    }

    public final void setSessionDuration(long j11) {
        this.sessionDuration = j11;
    }

    public final void setSignaledAd(List<com.vungle.ads.internal.signals.b> list) {
        Intrinsics.h(list, "<set-?>");
        this.signaledAd = list;
    }

    public final void setUnclosedAd(List<j> list) {
        Intrinsics.h(list, "<set-?>");
        this.unclosedAd = list;
    }

    public String toString() {
        return "SessionData(sessionCount=" + this.sessionCount + ')';
    }
}
