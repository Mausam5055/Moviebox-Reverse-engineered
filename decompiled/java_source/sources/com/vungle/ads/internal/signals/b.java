package com.vungle.ads.internal.signals;

import androidx.collection.s;
import e00.c;
import e00.d;
import e00.e;
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
public final class b {
    public static final C0717b Companion = new C0717b(null);
    private long adAvailabilityCallbackTime;
    private String eventId;
    private final Long lastAdLoadTime;
    private final long loadAdTime;
    private long playAdTime;
    private int screenOrientation;
    private String templateSignals;
    private long timeBetweenAdAvailabilityAndPlayAd;
    private final long timeSinceLastAdLoad;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final /* synthetic */ f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.signals.SignaledAd", aVar, 5);
            pluginGeneratedSerialDescriptor.l("500", true);
            pluginGeneratedSerialDescriptor.l("109", false);
            pluginGeneratedSerialDescriptor.l("107", true);
            pluginGeneratedSerialDescriptor.l("110", true);
            pluginGeneratedSerialDescriptor.l("108", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            b2 b2Var = b2.f68112a;
            kotlinx.serialization.b bVarS = d00.a.s(b2Var);
            kotlinx.serialization.b bVarS2 = d00.a.s(b2Var);
            b1 b1Var = b1.f68110a;
            return new kotlinx.serialization.b[]{bVarS, b1Var, bVarS2, b1Var, r0.f68192a};
        }

        @Override // kotlinx.serialization.a
        public b deserialize(e decoder) {
            long jF;
            int i11;
            Object obj;
            long j11;
            int i12;
            Object objN;
            Intrinsics.h(decoder, "decoder");
            f descriptor2 = getDescriptor();
            c cVarB = decoder.b(descriptor2);
            int i13 = 3;
            if (cVarB.p()) {
                b2 b2Var = b2.f68112a;
                Object objN2 = cVarB.n(descriptor2, 0, b2Var, null);
                long jF2 = cVarB.f(descriptor2, 1);
                objN = cVarB.n(descriptor2, 2, b2Var, null);
                long jF3 = cVarB.f(descriptor2, 3);
                i11 = 31;
                i12 = cVarB.i(descriptor2, 4);
                obj = objN2;
                j11 = jF2;
                jF = jF3;
            } else {
                jF = 0;
                boolean z10 = true;
                int i14 = 0;
                Object objN3 = null;
                Object objN4 = null;
                long jF4 = 0;
                int i15 = 0;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        objN3 = cVarB.n(descriptor2, 0, b2.f68112a, objN3);
                        i15 |= 1;
                    } else if (iO == 1) {
                        jF4 = cVarB.f(descriptor2, 1);
                        i15 |= 2;
                    } else if (iO == 2) {
                        objN4 = cVarB.n(descriptor2, 2, b2.f68112a, objN4);
                        i15 |= 4;
                    } else if (iO == i13) {
                        jF = cVarB.f(descriptor2, i13);
                        i15 |= 8;
                    } else {
                        if (iO != 4) {
                            throw new UnknownFieldException(iO);
                        }
                        i14 = cVarB.i(descriptor2, 4);
                        i15 |= 16;
                    }
                    i13 = 3;
                }
                i11 = i15;
                obj = objN3;
                j11 = jF4;
                i12 = i14;
                objN = objN4;
            }
            cVarB.c(descriptor2);
            return new b(i11, (String) obj, j11, (String) objN, jF, i12, null);
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
            d dVarB = encoder.b(descriptor2);
            b.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    /* JADX INFO: renamed from: com.vungle.ads.internal.signals.b$b, reason: collision with other inner class name */
    public static final class C0717b {
        private C0717b() {
        }

        public /* synthetic */ C0717b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return a.INSTANCE;
        }
    }

    public b() {
        this(null, 0L, 3, null);
    }

    @Deprecated
    public /* synthetic */ b(int i11, String str, long j11, String str2, long j12, int i12, w1 w1Var) {
        if (2 != (i11 & 2)) {
            m1.a(i11, 2, a.INSTANCE.getDescriptor());
        }
        this.lastAdLoadTime = 0L;
        this.loadAdTime = 0L;
        if ((i11 & 1) == 0) {
            this.templateSignals = null;
        } else {
            this.templateSignals = str;
        }
        this.timeSinceLastAdLoad = j11;
        if ((i11 & 4) == 0) {
            this.eventId = null;
        } else {
            this.eventId = str2;
        }
        if ((i11 & 8) == 0) {
            this.timeBetweenAdAvailabilityAndPlayAd = 0L;
        } else {
            this.timeBetweenAdAvailabilityAndPlayAd = j12;
        }
        if ((i11 & 16) == 0) {
            this.screenOrientation = 0;
        } else {
            this.screenOrientation = i12;
        }
        this.adAvailabilityCallbackTime = 0L;
        this.playAdTime = 0L;
        this.timeSinceLastAdLoad = getTimeDifference(0L, 0L);
    }

    public b(Long l11, long j11) {
        this.lastAdLoadTime = l11;
        this.loadAdTime = j11;
        this.timeSinceLastAdLoad = getTimeDifference(l11, j11);
    }

    public /* synthetic */ b(Long l11, long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0L : l11, (i11 & 2) != 0 ? 0L : j11);
    }

    public static /* synthetic */ b copy$default(b bVar, Long l11, long j11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            l11 = bVar.lastAdLoadTime;
        }
        if ((i11 & 2) != 0) {
            j11 = bVar.loadAdTime;
        }
        return bVar.copy(l11, j11);
    }

    public static /* synthetic */ void getAdAvailabilityCallbackTime$annotations() {
    }

    public static /* synthetic */ void getEventId$annotations() {
    }

    public static /* synthetic */ void getLastAdLoadTime$annotations() {
    }

    public static /* synthetic */ void getLoadAdTime$annotations() {
    }

    public static /* synthetic */ void getPlayAdTime$annotations() {
    }

    public static /* synthetic */ void getScreenOrientation$annotations() {
    }

    public static /* synthetic */ void getTemplateSignals$annotations() {
    }

    public static /* synthetic */ void getTimeBetweenAdAvailabilityAndPlayAd$annotations() {
    }

    private final long getTimeDifference(Long l11, long j11) {
        if (l11 == null) {
            return -1L;
        }
        long jLongValue = j11 - l11.longValue();
        if (jLongValue < 0) {
            return -1L;
        }
        return jLongValue;
    }

    public static /* synthetic */ void getTimeSinceLastAdLoad$annotations() {
    }

    @JvmStatic
    public static final void write$Self(b self, d output, f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.templateSignals != null) {
            output.i(serialDesc, 0, b2.f68112a, self.templateSignals);
        }
        output.F(serialDesc, 1, self.timeSinceLastAdLoad);
        if (output.z(serialDesc, 2) || self.eventId != null) {
            output.i(serialDesc, 2, b2.f68112a, self.eventId);
        }
        if (output.z(serialDesc, 3) || self.timeBetweenAdAvailabilityAndPlayAd != 0) {
            output.F(serialDesc, 3, self.timeBetweenAdAvailabilityAndPlayAd);
        }
        if (!output.z(serialDesc, 4) && self.screenOrientation == 0) {
            return;
        }
        output.w(serialDesc, 4, self.screenOrientation);
    }

    public final void calculateTimeBetweenAdAvailabilityAndPlayAd() {
        this.timeBetweenAdAvailabilityAndPlayAd = getTimeDifference(Long.valueOf(this.adAvailabilityCallbackTime), this.playAdTime);
    }

    public final Long component1() {
        return this.lastAdLoadTime;
    }

    public final long component2() {
        return this.loadAdTime;
    }

    public final b copy(Long l11, long j11) {
        return new b(l11, j11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.lastAdLoadTime, bVar.lastAdLoadTime) && this.loadAdTime == bVar.loadAdTime;
    }

    public final long getAdAvailabilityCallbackTime() {
        return this.adAvailabilityCallbackTime;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final Long getLastAdLoadTime() {
        return this.lastAdLoadTime;
    }

    public final long getLoadAdTime() {
        return this.loadAdTime;
    }

    public final long getPlayAdTime() {
        return this.playAdTime;
    }

    public final int getScreenOrientation() {
        return this.screenOrientation;
    }

    public final String getTemplateSignals() {
        return this.templateSignals;
    }

    public final long getTimeBetweenAdAvailabilityAndPlayAd() {
        return this.timeBetweenAdAvailabilityAndPlayAd;
    }

    public final long getTimeSinceLastAdLoad() {
        return this.timeSinceLastAdLoad;
    }

    public int hashCode() {
        Long l11 = this.lastAdLoadTime;
        return ((l11 == null ? 0 : l11.hashCode()) * 31) + s.a(this.loadAdTime);
    }

    public final void setAdAvailabilityCallbackTime(long j11) {
        this.adAvailabilityCallbackTime = j11;
    }

    public final void setEventId(String str) {
        this.eventId = str;
    }

    public final void setPlayAdTime(long j11) {
        this.playAdTime = j11;
    }

    public final void setScreenOrientation(int i11) {
        this.screenOrientation = i11;
    }

    public final void setTemplateSignals(String str) {
        this.templateSignals = str;
    }

    public final void setTimeBetweenAdAvailabilityAndPlayAd(long j11) {
        this.timeBetweenAdAvailabilityAndPlayAd = j11;
    }

    public String toString() {
        return "SignaledAd(lastAdLoadTime=" + this.lastAdLoadTime + ", loadAdTime=" + this.loadAdTime + ')';
    }
}
