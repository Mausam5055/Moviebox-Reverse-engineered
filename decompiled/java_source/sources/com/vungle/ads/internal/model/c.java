package com.vungle.ads.internal.model;

import androidx.collection.s;
import androidx.core.app.NotificationCompat;
import java.util.List;
import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b1;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.m1;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.w1;

/* JADX INFO: loaded from: classes7.dex */
public final class c {
    public static final e Companion = new e(null);
    private final com.vungle.ads.internal.model.b app;
    private final com.vungle.ads.internal.model.d device;
    private h ext;
    private i request;
    private final j user;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.CommonRequestBody", aVar, 5);
            pluginGeneratedSerialDescriptor.l("device", false);
            pluginGeneratedSerialDescriptor.l("app", true);
            pluginGeneratedSerialDescriptor.l("user", true);
            pluginGeneratedSerialDescriptor.l("ext", true);
            pluginGeneratedSerialDescriptor.l("request", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            return new kotlinx.serialization.b[]{com.vungle.ads.internal.model.d.a.INSTANCE, d00.a.s(com.vungle.ads.internal.model.b.a.INSTANCE), d00.a.s(j.a.INSTANCE), d00.a.s(h.a.INSTANCE), d00.a.s(i.a.INSTANCE)};
        }

        @Override // kotlinx.serialization.a
        public c deserialize(e00.e decoder) {
            Object objN;
            Object objN2;
            Object objN3;
            Object objN4;
            int i11;
            Object objY;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            e00.c cVarB = decoder.b(descriptor2);
            Object objY2 = null;
            if (cVarB.p()) {
                objY = cVarB.y(descriptor2, 0, com.vungle.ads.internal.model.d.a.INSTANCE, null);
                objN = cVarB.n(descriptor2, 1, com.vungle.ads.internal.model.b.a.INSTANCE, null);
                objN2 = cVarB.n(descriptor2, 2, j.a.INSTANCE, null);
                objN3 = cVarB.n(descriptor2, 3, h.a.INSTANCE, null);
                objN4 = cVarB.n(descriptor2, 4, i.a.INSTANCE, null);
                i11 = 31;
            } else {
                boolean z10 = true;
                int i12 = 0;
                Object objN5 = null;
                Object objN6 = null;
                Object objN7 = null;
                Object objN8 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        objY2 = cVarB.y(descriptor2, 0, com.vungle.ads.internal.model.d.a.INSTANCE, objY2);
                        i12 |= 1;
                    } else if (iO == 1) {
                        objN5 = cVarB.n(descriptor2, 1, com.vungle.ads.internal.model.b.a.INSTANCE, objN5);
                        i12 |= 2;
                    } else if (iO == 2) {
                        objN6 = cVarB.n(descriptor2, 2, j.a.INSTANCE, objN6);
                        i12 |= 4;
                    } else if (iO == 3) {
                        objN7 = cVarB.n(descriptor2, 3, h.a.INSTANCE, objN7);
                        i12 |= 8;
                    } else {
                        if (iO != 4) {
                            throw new UnknownFieldException(iO);
                        }
                        objN8 = cVarB.n(descriptor2, 4, i.a.INSTANCE, objN8);
                        i12 |= 16;
                    }
                }
                objN = objN5;
                objN2 = objN6;
                objN3 = objN7;
                objN4 = objN8;
                Object obj = objY2;
                i11 = i12;
                objY = obj;
            }
            cVarB.c(descriptor2);
            return new c(i11, (com.vungle.ads.internal.model.d) objY, (com.vungle.ads.internal.model.b) objN, (j) objN2, (h) objN3, (i) objN4, (w1) null);
        }

        @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.g
        public void serialize(e00.f encoder, c value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            e00.d dVarB = encoder.b(descriptor2);
            c.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    public static final class b {
        public static final C0711b Companion = new C0711b(null);
        private final int height;
        private final int width;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.CommonRequestBody.AdSizeParam", aVar, 2);
                pluginGeneratedSerialDescriptor.l("w", false);
                pluginGeneratedSerialDescriptor.l("h", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                r0 r0Var = r0.f68192a;
                return new kotlinx.serialization.b[]{r0Var, r0Var};
            }

            @Override // kotlinx.serialization.a
            public b deserialize(e00.e decoder) {
                int i11;
                int i12;
                int i13;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                if (cVarB.p()) {
                    i11 = cVarB.i(descriptor2, 0);
                    i12 = cVarB.i(descriptor2, 1);
                    i13 = 3;
                } else {
                    boolean z10 = true;
                    i11 = 0;
                    int i14 = 0;
                    int i15 = 0;
                    while (z10) {
                        int iO = cVarB.o(descriptor2);
                        if (iO == -1) {
                            z10 = false;
                        } else if (iO == 0) {
                            i11 = cVarB.i(descriptor2, 0);
                            i15 |= 1;
                        } else {
                            if (iO != 1) {
                                throw new UnknownFieldException(iO);
                            }
                            i14 = cVarB.i(descriptor2, 1);
                            i15 |= 2;
                        }
                    }
                    i12 = i14;
                    i13 = i15;
                }
                cVarB.c(descriptor2);
                return new b(i13, i11, i12, null);
            }

            @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
            public kotlinx.serialization.descriptors.f getDescriptor() {
                return descriptor;
            }

            @Override // kotlinx.serialization.g
            public void serialize(e00.f encoder, b value) {
                Intrinsics.h(encoder, "encoder");
                Intrinsics.h(value, "value");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.d dVarB = encoder.b(descriptor2);
                b.write$Self(value, dVarB, descriptor2);
                dVarB.c(descriptor2);
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] typeParametersSerializers() {
                return i0.a.a(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.c$b$b, reason: collision with other inner class name */
        public static final class C0711b {
            private C0711b() {
            }

            public /* synthetic */ C0711b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final kotlinx.serialization.b serializer() {
                return a.INSTANCE;
            }
        }

        public b(int i11, int i12) {
            this.width = i11;
            this.height = i12;
        }

        @Deprecated
        public /* synthetic */ b(int i11, int i12, int i13, w1 w1Var) {
            if (3 != (i11 & 3)) {
                m1.a(i11, 3, a.INSTANCE.getDescriptor());
            }
            this.width = i12;
            this.height = i13;
        }

        public static /* synthetic */ b copy$default(b bVar, int i11, int i12, int i13, Object obj) {
            if ((i13 & 1) != 0) {
                i11 = bVar.width;
            }
            if ((i13 & 2) != 0) {
                i12 = bVar.height;
            }
            return bVar.copy(i11, i12);
        }

        public static /* synthetic */ void getHeight$annotations() {
        }

        public static /* synthetic */ void getWidth$annotations() {
        }

        @JvmStatic
        public static final void write$Self(b self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            output.w(serialDesc, 0, self.width);
            output.w(serialDesc, 1, self.height);
        }

        public final int component1() {
            return this.width;
        }

        public final int component2() {
            return this.height;
        }

        public final b copy(int i11, int i12) {
            return new b(i11, i12);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.width == bVar.width && this.height == bVar.height;
        }

        public final int getHeight() {
            return this.height;
        }

        public final int getWidth() {
            return this.width;
        }

        public int hashCode() {
            return (this.width * 31) + this.height;
        }

        public String toString() {
            return "AdSizeParam(width=" + this.width + ", height=" + this.height + ')';
        }
    }

    /* JADX INFO: renamed from: com.vungle.ads.internal.model.c$c, reason: collision with other inner class name */
    public static final class C0712c {
        public static final b Companion = new b(null);
        private final String status;

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.c$c$a */
        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.CommonRequestBody.CCPA", aVar, 1);
                pluginGeneratedSerialDescriptor.l(NotificationCompat.CATEGORY_STATUS, false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                return new kotlinx.serialization.b[]{b2.f68112a};
            }

            @Override // kotlinx.serialization.a
            public C0712c deserialize(e00.e decoder) {
                String strM;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                int i11 = 1;
                w1 w1Var = null;
                if (cVarB.p()) {
                    strM = cVarB.m(descriptor2, 0);
                } else {
                    boolean z10 = true;
                    int i12 = 0;
                    strM = null;
                    while (z10) {
                        int iO = cVarB.o(descriptor2);
                        if (iO == -1) {
                            z10 = false;
                        } else {
                            if (iO != 0) {
                                throw new UnknownFieldException(iO);
                            }
                            strM = cVarB.m(descriptor2, 0);
                            i12 = 1;
                        }
                    }
                    i11 = i12;
                }
                cVarB.c(descriptor2);
                return new C0712c(i11, strM, w1Var);
            }

            @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
            public kotlinx.serialization.descriptors.f getDescriptor() {
                return descriptor;
            }

            @Override // kotlinx.serialization.g
            public void serialize(e00.f encoder, C0712c value) {
                Intrinsics.h(encoder, "encoder");
                Intrinsics.h(value, "value");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.d dVarB = encoder.b(descriptor2);
                C0712c.write$Self(value, dVarB, descriptor2);
                dVarB.c(descriptor2);
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] typeParametersSerializers() {
                return i0.a.a(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.c$c$b */
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
        public /* synthetic */ C0712c(int i11, String str, w1 w1Var) {
            if (1 != (i11 & 1)) {
                m1.a(i11, 1, a.INSTANCE.getDescriptor());
            }
            this.status = str;
        }

        public C0712c(String status) {
            Intrinsics.h(status, "status");
            this.status = status;
        }

        public static /* synthetic */ C0712c copy$default(C0712c c0712c, String str, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = c0712c.status;
            }
            return c0712c.copy(str);
        }

        @JvmStatic
        public static final void write$Self(C0712c self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            output.y(serialDesc, 0, self.status);
        }

        public final String component1() {
            return this.status;
        }

        public final C0712c copy(String status) {
            Intrinsics.h(status, "status");
            return new C0712c(status);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0712c) && Intrinsics.c(this.status, ((C0712c) obj).status);
        }

        public final String getStatus() {
            return this.status;
        }

        public int hashCode() {
            return this.status.hashCode();
        }

        public String toString() {
            return "CCPA(status=" + this.status + ')';
        }
    }

    public static final class d {
        public static final b Companion = new b(null);
        private final Boolean isCoppa;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.CommonRequestBody.COPPA", aVar, 1);
                pluginGeneratedSerialDescriptor.l("is_coppa", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                return new kotlinx.serialization.b[]{d00.a.s(kotlinx.serialization.internal.i.f68152a)};
            }

            @Override // kotlinx.serialization.a
            public d deserialize(e00.e decoder) {
                Object objN;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                int i11 = 1;
                w1 w1Var = null;
                if (cVarB.p()) {
                    objN = cVarB.n(descriptor2, 0, kotlinx.serialization.internal.i.f68152a, null);
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
                            objN = cVarB.n(descriptor2, 0, kotlinx.serialization.internal.i.f68152a, objN);
                            i12 = 1;
                        }
                    }
                    i11 = i12;
                }
                cVarB.c(descriptor2);
                return new d(i11, (Boolean) objN, w1Var);
            }

            @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
            public kotlinx.serialization.descriptors.f getDescriptor() {
                return descriptor;
            }

            @Override // kotlinx.serialization.g
            public void serialize(e00.f encoder, d value) {
                Intrinsics.h(encoder, "encoder");
                Intrinsics.h(value, "value");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.d dVarB = encoder.b(descriptor2);
                d.write$Self(value, dVarB, descriptor2);
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
        public /* synthetic */ d(int i11, Boolean bool, w1 w1Var) {
            if (1 != (i11 & 1)) {
                m1.a(i11, 1, a.INSTANCE.getDescriptor());
            }
            this.isCoppa = bool;
        }

        public d(Boolean bool) {
            this.isCoppa = bool;
        }

        public static /* synthetic */ d copy$default(d dVar, Boolean bool, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                bool = dVar.isCoppa;
            }
            return dVar.copy(bool);
        }

        public static /* synthetic */ void isCoppa$annotations() {
        }

        @JvmStatic
        public static final void write$Self(d self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            output.i(serialDesc, 0, kotlinx.serialization.internal.i.f68152a, self.isCoppa);
        }

        public final Boolean component1() {
            return this.isCoppa;
        }

        public final d copy(Boolean bool) {
            return new d(bool);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && Intrinsics.c(this.isCoppa, ((d) obj).isCoppa);
        }

        public int hashCode() {
            Boolean bool = this.isCoppa;
            if (bool == null) {
                return 0;
            }
            return bool.hashCode();
        }

        public final Boolean isCoppa() {
            return this.isCoppa;
        }

        public String toString() {
            return "COPPA(isCoppa=" + this.isCoppa + ')';
        }
    }

    public static final class e {
        private e() {
        }

        public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return a.INSTANCE;
        }
    }

    public static final class f {
        public static final b Companion = new b(null);
        private final String consentMessageVersion;
        private final String consentSource;
        private final String consentStatus;
        private final long consentTimestamp;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.CommonRequestBody.GDPR", aVar, 4);
                pluginGeneratedSerialDescriptor.l("consent_status", false);
                pluginGeneratedSerialDescriptor.l("consent_source", false);
                pluginGeneratedSerialDescriptor.l("consent_timestamp", false);
                pluginGeneratedSerialDescriptor.l("consent_message_version", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                b2 b2Var = b2.f68112a;
                return new kotlinx.serialization.b[]{b2Var, b2Var, b1.f68110a, b2Var};
            }

            @Override // kotlinx.serialization.a
            public f deserialize(e00.e decoder) {
                String str;
                String strM;
                int i11;
                String str2;
                long j11;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                if (cVarB.p()) {
                    String strM2 = cVarB.m(descriptor2, 0);
                    String strM3 = cVarB.m(descriptor2, 1);
                    long jF = cVarB.f(descriptor2, 2);
                    str = strM2;
                    strM = cVarB.m(descriptor2, 3);
                    i11 = 15;
                    str2 = strM3;
                    j11 = jF;
                } else {
                    String strM4 = null;
                    String strM5 = null;
                    boolean z10 = true;
                    long jF2 = 0;
                    String strM6 = null;
                    int i12 = 0;
                    while (z10) {
                        int iO = cVarB.o(descriptor2);
                        if (iO == -1) {
                            z10 = false;
                        } else if (iO == 0) {
                            strM4 = cVarB.m(descriptor2, 0);
                            i12 |= 1;
                        } else if (iO == 1) {
                            strM5 = cVarB.m(descriptor2, 1);
                            i12 |= 2;
                        } else if (iO == 2) {
                            jF2 = cVarB.f(descriptor2, 2);
                            i12 |= 4;
                        } else {
                            if (iO != 3) {
                                throw new UnknownFieldException(iO);
                            }
                            strM6 = cVarB.m(descriptor2, 3);
                            i12 |= 8;
                        }
                    }
                    str = strM4;
                    strM = strM6;
                    i11 = i12;
                    str2 = strM5;
                    j11 = jF2;
                }
                cVarB.c(descriptor2);
                return new f(i11, str, str2, j11, strM, null);
            }

            @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
            public kotlinx.serialization.descriptors.f getDescriptor() {
                return descriptor;
            }

            @Override // kotlinx.serialization.g
            public void serialize(e00.f encoder, f value) {
                Intrinsics.h(encoder, "encoder");
                Intrinsics.h(value, "value");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.d dVarB = encoder.b(descriptor2);
                f.write$Self(value, dVarB, descriptor2);
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
        public /* synthetic */ f(int i11, String str, String str2, long j11, String str3, w1 w1Var) {
            if (15 != (i11 & 15)) {
                m1.a(i11, 15, a.INSTANCE.getDescriptor());
            }
            this.consentStatus = str;
            this.consentSource = str2;
            this.consentTimestamp = j11;
            this.consentMessageVersion = str3;
        }

        public f(String consentStatus, String consentSource, long j11, String consentMessageVersion) {
            Intrinsics.h(consentStatus, "consentStatus");
            Intrinsics.h(consentSource, "consentSource");
            Intrinsics.h(consentMessageVersion, "consentMessageVersion");
            this.consentStatus = consentStatus;
            this.consentSource = consentSource;
            this.consentTimestamp = j11;
            this.consentMessageVersion = consentMessageVersion;
        }

        public static /* synthetic */ f copy$default(f fVar, String str, String str2, long j11, String str3, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = fVar.consentStatus;
            }
            if ((i11 & 2) != 0) {
                str2 = fVar.consentSource;
            }
            String str4 = str2;
            if ((i11 & 4) != 0) {
                j11 = fVar.consentTimestamp;
            }
            long j12 = j11;
            if ((i11 & 8) != 0) {
                str3 = fVar.consentMessageVersion;
            }
            return fVar.copy(str, str4, j12, str3);
        }

        public static /* synthetic */ void getConsentMessageVersion$annotations() {
        }

        public static /* synthetic */ void getConsentSource$annotations() {
        }

        public static /* synthetic */ void getConsentStatus$annotations() {
        }

        public static /* synthetic */ void getConsentTimestamp$annotations() {
        }

        @JvmStatic
        public static final void write$Self(f self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            output.y(serialDesc, 0, self.consentStatus);
            output.y(serialDesc, 1, self.consentSource);
            output.F(serialDesc, 2, self.consentTimestamp);
            output.y(serialDesc, 3, self.consentMessageVersion);
        }

        public final String component1() {
            return this.consentStatus;
        }

        public final String component2() {
            return this.consentSource;
        }

        public final long component3() {
            return this.consentTimestamp;
        }

        public final String component4() {
            return this.consentMessageVersion;
        }

        public final f copy(String consentStatus, String consentSource, long j11, String consentMessageVersion) {
            Intrinsics.h(consentStatus, "consentStatus");
            Intrinsics.h(consentSource, "consentSource");
            Intrinsics.h(consentMessageVersion, "consentMessageVersion");
            return new f(consentStatus, consentSource, j11, consentMessageVersion);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return Intrinsics.c(this.consentStatus, fVar.consentStatus) && Intrinsics.c(this.consentSource, fVar.consentSource) && this.consentTimestamp == fVar.consentTimestamp && Intrinsics.c(this.consentMessageVersion, fVar.consentMessageVersion);
        }

        public final String getConsentMessageVersion() {
            return this.consentMessageVersion;
        }

        public final String getConsentSource() {
            return this.consentSource;
        }

        public final String getConsentStatus() {
            return this.consentStatus;
        }

        public final long getConsentTimestamp() {
            return this.consentTimestamp;
        }

        public int hashCode() {
            return (((((this.consentStatus.hashCode() * 31) + this.consentSource.hashCode()) * 31) + s.a(this.consentTimestamp)) * 31) + this.consentMessageVersion.hashCode();
        }

        public String toString() {
            return "GDPR(consentStatus=" + this.consentStatus + ", consentSource=" + this.consentSource + ", consentTimestamp=" + this.consentTimestamp + ", consentMessageVersion=" + this.consentMessageVersion + ')';
        }
    }

    public static final class g {
        public static final b Companion = new b(null);
        private final String tcf;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.CommonRequestBody.IAB", aVar, 1);
                pluginGeneratedSerialDescriptor.l("tcf", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                return new kotlinx.serialization.b[]{b2.f68112a};
            }

            @Override // kotlinx.serialization.a
            public g deserialize(e00.e decoder) {
                String strM;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                int i11 = 1;
                w1 w1Var = null;
                if (cVarB.p()) {
                    strM = cVarB.m(descriptor2, 0);
                } else {
                    boolean z10 = true;
                    int i12 = 0;
                    strM = null;
                    while (z10) {
                        int iO = cVarB.o(descriptor2);
                        if (iO == -1) {
                            z10 = false;
                        } else {
                            if (iO != 0) {
                                throw new UnknownFieldException(iO);
                            }
                            strM = cVarB.m(descriptor2, 0);
                            i12 = 1;
                        }
                    }
                    i11 = i12;
                }
                cVarB.c(descriptor2);
                return new g(i11, strM, w1Var);
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
        public /* synthetic */ g(int i11, String str, w1 w1Var) {
            if (1 != (i11 & 1)) {
                m1.a(i11, 1, a.INSTANCE.getDescriptor());
            }
            this.tcf = str;
        }

        public g(String tcf) {
            Intrinsics.h(tcf, "tcf");
            this.tcf = tcf;
        }

        public static /* synthetic */ g copy$default(g gVar, String str, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = gVar.tcf;
            }
            return gVar.copy(str);
        }

        public static /* synthetic */ void getTcf$annotations() {
        }

        @JvmStatic
        public static final void write$Self(g self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            output.y(serialDesc, 0, self.tcf);
        }

        public final String component1() {
            return this.tcf;
        }

        public final g copy(String tcf) {
            Intrinsics.h(tcf, "tcf");
            return new g(tcf);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof g) && Intrinsics.c(this.tcf, ((g) obj).tcf);
        }

        public final String getTcf() {
            return this.tcf;
        }

        public int hashCode() {
            return this.tcf.hashCode();
        }

        public String toString() {
            return "IAB(tcf=" + this.tcf + ')';
        }
    }

    public static final class h {
        public static final b Companion = new b(null);
        private final String configExtension;
        private final Long configLastValidatedTimestamp;
        private String signals;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.CommonRequestBody.RequestExt", aVar, 3);
                pluginGeneratedSerialDescriptor.l("config_extension", true);
                pluginGeneratedSerialDescriptor.l("signals", true);
                pluginGeneratedSerialDescriptor.l("config_last_validated_ts", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                b2 b2Var = b2.f68112a;
                return new kotlinx.serialization.b[]{d00.a.s(b2Var), d00.a.s(b2Var), d00.a.s(b1.f68110a)};
            }

            @Override // kotlinx.serialization.a
            public h deserialize(e00.e decoder) {
                int i11;
                Object objN;
                Object objN2;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                Object objN3 = null;
                if (cVarB.p()) {
                    b2 b2Var = b2.f68112a;
                    Object objN4 = cVarB.n(descriptor2, 0, b2Var, null);
                    objN = cVarB.n(descriptor2, 1, b2Var, null);
                    objN2 = cVarB.n(descriptor2, 2, b1.f68110a, null);
                    objN3 = objN4;
                    i11 = 7;
                } else {
                    boolean z10 = true;
                    int i12 = 0;
                    Object objN5 = null;
                    Object objN6 = null;
                    while (z10) {
                        int iO = cVarB.o(descriptor2);
                        if (iO == -1) {
                            z10 = false;
                        } else if (iO == 0) {
                            objN3 = cVarB.n(descriptor2, 0, b2.f68112a, objN3);
                            i12 |= 1;
                        } else if (iO == 1) {
                            objN5 = cVarB.n(descriptor2, 1, b2.f68112a, objN5);
                            i12 |= 2;
                        } else {
                            if (iO != 2) {
                                throw new UnknownFieldException(iO);
                            }
                            objN6 = cVarB.n(descriptor2, 2, b1.f68110a, objN6);
                            i12 |= 4;
                        }
                    }
                    i11 = i12;
                    objN = objN5;
                    objN2 = objN6;
                }
                cVarB.c(descriptor2);
                return new h(i11, (String) objN3, (String) objN, (Long) objN2, (w1) null);
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

        public h() {
            this((String) null, (String) null, (Long) null, 7, (DefaultConstructorMarker) null);
        }

        @Deprecated
        public /* synthetic */ h(int i11, String str, String str2, Long l11, w1 w1Var) {
            if ((i11 & 1) == 0) {
                this.configExtension = null;
            } else {
                this.configExtension = str;
            }
            if ((i11 & 2) == 0) {
                this.signals = null;
            } else {
                this.signals = str2;
            }
            if ((i11 & 4) == 0) {
                this.configLastValidatedTimestamp = null;
            } else {
                this.configLastValidatedTimestamp = l11;
            }
        }

        public h(String str, String str2, Long l11) {
            this.configExtension = str;
            this.signals = str2;
            this.configLastValidatedTimestamp = l11;
        }

        public /* synthetic */ h(String str, String str2, Long l11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : l11);
        }

        public static /* synthetic */ h copy$default(h hVar, String str, String str2, Long l11, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = hVar.configExtension;
            }
            if ((i11 & 2) != 0) {
                str2 = hVar.signals;
            }
            if ((i11 & 4) != 0) {
                l11 = hVar.configLastValidatedTimestamp;
            }
            return hVar.copy(str, str2, l11);
        }

        public static /* synthetic */ void getConfigExtension$annotations() {
        }

        public static /* synthetic */ void getConfigLastValidatedTimestamp$annotations() {
        }

        public static /* synthetic */ void getSignals$annotations() {
        }

        @JvmStatic
        public static final void write$Self(h self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.configExtension != null) {
                output.i(serialDesc, 0, b2.f68112a, self.configExtension);
            }
            if (output.z(serialDesc, 1) || self.signals != null) {
                output.i(serialDesc, 1, b2.f68112a, self.signals);
            }
            if (!output.z(serialDesc, 2) && self.configLastValidatedTimestamp == null) {
                return;
            }
            output.i(serialDesc, 2, b1.f68110a, self.configLastValidatedTimestamp);
        }

        public final String component1() {
            return this.configExtension;
        }

        public final String component2() {
            return this.signals;
        }

        public final Long component3() {
            return this.configLastValidatedTimestamp;
        }

        public final h copy(String str, String str2, Long l11) {
            return new h(str, str2, l11);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return Intrinsics.c(this.configExtension, hVar.configExtension) && Intrinsics.c(this.signals, hVar.signals) && Intrinsics.c(this.configLastValidatedTimestamp, hVar.configLastValidatedTimestamp);
        }

        public final String getConfigExtension() {
            return this.configExtension;
        }

        public final Long getConfigLastValidatedTimestamp() {
            return this.configLastValidatedTimestamp;
        }

        public final String getSignals() {
            return this.signals;
        }

        public int hashCode() {
            String str = this.configExtension;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.signals;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            Long l11 = this.configLastValidatedTimestamp;
            return iHashCode2 + (l11 != null ? l11.hashCode() : 0);
        }

        public final void setSignals(String str) {
            this.signals = str;
        }

        public String toString() {
            return "RequestExt(configExtension=" + this.configExtension + ", signals=" + this.signals + ", configLastValidatedTimestamp=" + this.configLastValidatedTimestamp + ')';
        }
    }

    public static final class i {
        public static final b Companion = new b(null);
        private b adSize;
        private final Long adStartTime;
        private final String advAppId;
        private final String placementReferenceId;
        private final List<String> placements;
        private final String user;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.CommonRequestBody.RequestParam", aVar, 6);
                pluginGeneratedSerialDescriptor.l("placements", true);
                pluginGeneratedSerialDescriptor.l("ad_size", true);
                pluginGeneratedSerialDescriptor.l("ad_start_time", true);
                pluginGeneratedSerialDescriptor.l("app_id", true);
                pluginGeneratedSerialDescriptor.l("placement_reference_id", true);
                pluginGeneratedSerialDescriptor.l("user", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                b2 b2Var = b2.f68112a;
                return new kotlinx.serialization.b[]{d00.a.s(new kotlinx.serialization.internal.f(b2Var)), d00.a.s(b.a.INSTANCE), d00.a.s(b1.f68110a), d00.a.s(b2Var), d00.a.s(b2Var), d00.a.s(b2Var)};
            }

            @Override // kotlinx.serialization.a
            public i deserialize(e00.e decoder) {
                Object objN;
                Object objN2;
                Object objN3;
                Object objN4;
                Object objN5;
                int i11;
                Object objN6;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                int i12 = 5;
                Object objN7 = null;
                if (cVarB.p()) {
                    b2 b2Var = b2.f68112a;
                    objN6 = cVarB.n(descriptor2, 0, new kotlinx.serialization.internal.f(b2Var), null);
                    objN = cVarB.n(descriptor2, 1, b.a.INSTANCE, null);
                    objN2 = cVarB.n(descriptor2, 2, b1.f68110a, null);
                    objN3 = cVarB.n(descriptor2, 3, b2Var, null);
                    objN4 = cVarB.n(descriptor2, 4, b2Var, null);
                    objN5 = cVarB.n(descriptor2, 5, b2Var, null);
                    i11 = 63;
                } else {
                    boolean z10 = true;
                    int i13 = 0;
                    Object objN8 = null;
                    Object objN9 = null;
                    Object objN10 = null;
                    Object objN11 = null;
                    Object objN12 = null;
                    while (z10) {
                        int iO = cVarB.o(descriptor2);
                        switch (iO) {
                            case -1:
                                z10 = false;
                                i12 = 5;
                                break;
                            case 0:
                                objN7 = cVarB.n(descriptor2, 0, new kotlinx.serialization.internal.f(b2.f68112a), objN7);
                                i13 |= 1;
                                i12 = 5;
                                break;
                            case 1:
                                objN8 = cVarB.n(descriptor2, 1, b.a.INSTANCE, objN8);
                                i13 |= 2;
                                break;
                            case 2:
                                objN9 = cVarB.n(descriptor2, 2, b1.f68110a, objN9);
                                i13 |= 4;
                                break;
                            case 3:
                                objN10 = cVarB.n(descriptor2, 3, b2.f68112a, objN10);
                                i13 |= 8;
                                break;
                            case 4:
                                objN11 = cVarB.n(descriptor2, 4, b2.f68112a, objN11);
                                i13 |= 16;
                                break;
                            case 5:
                                objN12 = cVarB.n(descriptor2, i12, b2.f68112a, objN12);
                                i13 |= 32;
                                break;
                            default:
                                throw new UnknownFieldException(iO);
                        }
                    }
                    objN = objN8;
                    objN2 = objN9;
                    objN3 = objN10;
                    objN4 = objN11;
                    objN5 = objN12;
                    Object obj = objN7;
                    i11 = i13;
                    objN6 = obj;
                }
                cVarB.c(descriptor2);
                return new i(i11, (List) objN6, (b) objN, (Long) objN2, (String) objN3, (String) objN4, (String) objN5, (w1) null);
            }

            @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
            public kotlinx.serialization.descriptors.f getDescriptor() {
                return descriptor;
            }

            @Override // kotlinx.serialization.g
            public void serialize(e00.f encoder, i value) {
                Intrinsics.h(encoder, "encoder");
                Intrinsics.h(value, "value");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.d dVarB = encoder.b(descriptor2);
                i.write$Self(value, dVarB, descriptor2);
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

        public i() {
            this((List) null, (b) null, (Long) null, (String) null, (String) null, (String) null, 63, (DefaultConstructorMarker) null);
        }

        @Deprecated
        public /* synthetic */ i(int i11, List list, b bVar, Long l11, String str, String str2, String str3, w1 w1Var) {
            if ((i11 & 1) == 0) {
                this.placements = null;
            } else {
                this.placements = list;
            }
            if ((i11 & 2) == 0) {
                this.adSize = null;
            } else {
                this.adSize = bVar;
            }
            if ((i11 & 4) == 0) {
                this.adStartTime = null;
            } else {
                this.adStartTime = l11;
            }
            if ((i11 & 8) == 0) {
                this.advAppId = null;
            } else {
                this.advAppId = str;
            }
            if ((i11 & 16) == 0) {
                this.placementReferenceId = null;
            } else {
                this.placementReferenceId = str2;
            }
            if ((i11 & 32) == 0) {
                this.user = null;
            } else {
                this.user = str3;
            }
        }

        public i(List<String> list, b bVar, Long l11, String str, String str2, String str3) {
            this.placements = list;
            this.adSize = bVar;
            this.adStartTime = l11;
            this.advAppId = str;
            this.placementReferenceId = str2;
            this.user = str3;
        }

        public /* synthetic */ i(List list, b bVar, Long l11, String str, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : bVar, (i11 & 4) != 0 ? null : l11, (i11 & 8) != 0 ? null : str, (i11 & 16) != 0 ? null : str2, (i11 & 32) != 0 ? null : str3);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ i copy$default(i iVar, List list, b bVar, Long l11, String str, String str2, String str3, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                list = iVar.placements;
            }
            if ((i11 & 2) != 0) {
                bVar = iVar.adSize;
            }
            b bVar2 = bVar;
            if ((i11 & 4) != 0) {
                l11 = iVar.adStartTime;
            }
            Long l12 = l11;
            if ((i11 & 8) != 0) {
                str = iVar.advAppId;
            }
            String str4 = str;
            if ((i11 & 16) != 0) {
                str2 = iVar.placementReferenceId;
            }
            String str5 = str2;
            if ((i11 & 32) != 0) {
                str3 = iVar.user;
            }
            return iVar.copy(list, bVar2, l12, str4, str5, str3);
        }

        public static /* synthetic */ void getAdSize$annotations() {
        }

        public static /* synthetic */ void getAdStartTime$annotations() {
        }

        public static /* synthetic */ void getAdvAppId$annotations() {
        }

        public static /* synthetic */ void getPlacementReferenceId$annotations() {
        }

        @JvmStatic
        public static final void write$Self(i self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.placements != null) {
                output.i(serialDesc, 0, new kotlinx.serialization.internal.f(b2.f68112a), self.placements);
            }
            if (output.z(serialDesc, 1) || self.adSize != null) {
                output.i(serialDesc, 1, b.a.INSTANCE, self.adSize);
            }
            if (output.z(serialDesc, 2) || self.adStartTime != null) {
                output.i(serialDesc, 2, b1.f68110a, self.adStartTime);
            }
            if (output.z(serialDesc, 3) || self.advAppId != null) {
                output.i(serialDesc, 3, b2.f68112a, self.advAppId);
            }
            if (output.z(serialDesc, 4) || self.placementReferenceId != null) {
                output.i(serialDesc, 4, b2.f68112a, self.placementReferenceId);
            }
            if (!output.z(serialDesc, 5) && self.user == null) {
                return;
            }
            output.i(serialDesc, 5, b2.f68112a, self.user);
        }

        public final List<String> component1() {
            return this.placements;
        }

        public final b component2() {
            return this.adSize;
        }

        public final Long component3() {
            return this.adStartTime;
        }

        public final String component4() {
            return this.advAppId;
        }

        public final String component5() {
            return this.placementReferenceId;
        }

        public final String component6() {
            return this.user;
        }

        public final i copy(List<String> list, b bVar, Long l11, String str, String str2, String str3) {
            return new i(list, bVar, l11, str, str2, str3);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return Intrinsics.c(this.placements, iVar.placements) && Intrinsics.c(this.adSize, iVar.adSize) && Intrinsics.c(this.adStartTime, iVar.adStartTime) && Intrinsics.c(this.advAppId, iVar.advAppId) && Intrinsics.c(this.placementReferenceId, iVar.placementReferenceId) && Intrinsics.c(this.user, iVar.user);
        }

        public final b getAdSize() {
            return this.adSize;
        }

        public final Long getAdStartTime() {
            return this.adStartTime;
        }

        public final String getAdvAppId() {
            return this.advAppId;
        }

        public final String getPlacementReferenceId() {
            return this.placementReferenceId;
        }

        public final List<String> getPlacements() {
            return this.placements;
        }

        public final String getUser() {
            return this.user;
        }

        public int hashCode() {
            List<String> list = this.placements;
            int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
            b bVar = this.adSize;
            int iHashCode2 = (iHashCode + (bVar == null ? 0 : bVar.hashCode())) * 31;
            Long l11 = this.adStartTime;
            int iHashCode3 = (iHashCode2 + (l11 == null ? 0 : l11.hashCode())) * 31;
            String str = this.advAppId;
            int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.placementReferenceId;
            int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.user;
            return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
        }

        public final void setAdSize(b bVar) {
            this.adSize = bVar;
        }

        public String toString() {
            return "RequestParam(placements=" + this.placements + ", adSize=" + this.adSize + ", adStartTime=" + this.adStartTime + ", advAppId=" + this.advAppId + ", placementReferenceId=" + this.placementReferenceId + ", user=" + this.user + ')';
        }
    }

    public static final class j {
        public static final b Companion = new b(null);
        private C0712c ccpa;
        private d coppa;
        private ez.b fpd;
        private f gdpr;
        private g iab;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.CommonRequestBody.User", aVar, 5);
                pluginGeneratedSerialDescriptor.l("gdpr", true);
                pluginGeneratedSerialDescriptor.l("ccpa", true);
                pluginGeneratedSerialDescriptor.l("coppa", true);
                pluginGeneratedSerialDescriptor.l("fpd", true);
                pluginGeneratedSerialDescriptor.l("iab", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                return new kotlinx.serialization.b[]{d00.a.s(f.a.INSTANCE), d00.a.s(C0712c.a.INSTANCE), d00.a.s(d.a.INSTANCE), d00.a.s(ez.b.a.INSTANCE), d00.a.s(g.a.INSTANCE)};
            }

            @Override // kotlinx.serialization.a
            public j deserialize(e00.e decoder) {
                Object objN;
                Object objN2;
                Object objN3;
                Object objN4;
                int i11;
                Object objN5;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                Object objN6 = null;
                if (cVarB.p()) {
                    objN5 = cVarB.n(descriptor2, 0, f.a.INSTANCE, null);
                    objN = cVarB.n(descriptor2, 1, C0712c.a.INSTANCE, null);
                    objN2 = cVarB.n(descriptor2, 2, d.a.INSTANCE, null);
                    objN3 = cVarB.n(descriptor2, 3, ez.b.a.INSTANCE, null);
                    objN4 = cVarB.n(descriptor2, 4, g.a.INSTANCE, null);
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
                            objN6 = cVarB.n(descriptor2, 0, f.a.INSTANCE, objN6);
                            i12 |= 1;
                        } else if (iO == 1) {
                            objN7 = cVarB.n(descriptor2, 1, C0712c.a.INSTANCE, objN7);
                            i12 |= 2;
                        } else if (iO == 2) {
                            objN8 = cVarB.n(descriptor2, 2, d.a.INSTANCE, objN8);
                            i12 |= 4;
                        } else if (iO == 3) {
                            objN9 = cVarB.n(descriptor2, 3, ez.b.a.INSTANCE, objN9);
                            i12 |= 8;
                        } else {
                            if (iO != 4) {
                                throw new UnknownFieldException(iO);
                            }
                            objN10 = cVarB.n(descriptor2, 4, g.a.INSTANCE, objN10);
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
                return new j(i11, (f) objN5, (C0712c) objN, (d) objN2, (ez.b) objN3, (g) objN4, (w1) null);
            }

            @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
            public kotlinx.serialization.descriptors.f getDescriptor() {
                return descriptor;
            }

            @Override // kotlinx.serialization.g
            public void serialize(e00.f encoder, j value) {
                Intrinsics.h(encoder, "encoder");
                Intrinsics.h(value, "value");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.d dVarB = encoder.b(descriptor2);
                j.write$Self(value, dVarB, descriptor2);
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

        public j() {
            this((f) null, (C0712c) null, (d) null, (ez.b) null, (g) null, 31, (DefaultConstructorMarker) null);
        }

        @Deprecated
        public /* synthetic */ j(int i11, f fVar, C0712c c0712c, d dVar, ez.b bVar, g gVar, w1 w1Var) {
            if ((i11 & 1) == 0) {
                this.gdpr = null;
            } else {
                this.gdpr = fVar;
            }
            if ((i11 & 2) == 0) {
                this.ccpa = null;
            } else {
                this.ccpa = c0712c;
            }
            if ((i11 & 4) == 0) {
                this.coppa = null;
            } else {
                this.coppa = dVar;
            }
            if ((i11 & 8) == 0) {
                this.fpd = null;
            } else {
                this.fpd = bVar;
            }
            if ((i11 & 16) == 0) {
                this.iab = null;
            } else {
                this.iab = gVar;
            }
        }

        public j(f fVar, C0712c c0712c, d dVar, ez.b bVar, g gVar) {
            this.gdpr = fVar;
            this.ccpa = c0712c;
            this.coppa = dVar;
            this.fpd = bVar;
            this.iab = gVar;
        }

        public /* synthetic */ j(f fVar, C0712c c0712c, d dVar, ez.b bVar, g gVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : fVar, (i11 & 2) != 0 ? null : c0712c, (i11 & 4) != 0 ? null : dVar, (i11 & 8) != 0 ? null : bVar, (i11 & 16) != 0 ? null : gVar);
        }

        public static /* synthetic */ j copy$default(j jVar, f fVar, C0712c c0712c, d dVar, ez.b bVar, g gVar, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                fVar = jVar.gdpr;
            }
            if ((i11 & 2) != 0) {
                c0712c = jVar.ccpa;
            }
            C0712c c0712c2 = c0712c;
            if ((i11 & 4) != 0) {
                dVar = jVar.coppa;
            }
            d dVar2 = dVar;
            if ((i11 & 8) != 0) {
                bVar = jVar.fpd;
            }
            ez.b bVar2 = bVar;
            if ((i11 & 16) != 0) {
                gVar = jVar.iab;
            }
            return jVar.copy(fVar, c0712c2, dVar2, bVar2, gVar);
        }

        @JvmStatic
        public static final void write$Self(j self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.gdpr != null) {
                output.i(serialDesc, 0, f.a.INSTANCE, self.gdpr);
            }
            if (output.z(serialDesc, 1) || self.ccpa != null) {
                output.i(serialDesc, 1, C0712c.a.INSTANCE, self.ccpa);
            }
            if (output.z(serialDesc, 2) || self.coppa != null) {
                output.i(serialDesc, 2, d.a.INSTANCE, self.coppa);
            }
            if (output.z(serialDesc, 3) || self.fpd != null) {
                output.i(serialDesc, 3, ez.b.a.INSTANCE, self.fpd);
            }
            if (!output.z(serialDesc, 4) && self.iab == null) {
                return;
            }
            output.i(serialDesc, 4, g.a.INSTANCE, self.iab);
        }

        public final f component1() {
            return this.gdpr;
        }

        public final C0712c component2() {
            return this.ccpa;
        }

        public final d component3() {
            return this.coppa;
        }

        public final ez.b component4() {
            return this.fpd;
        }

        public final g component5() {
            return this.iab;
        }

        public final j copy(f fVar, C0712c c0712c, d dVar, ez.b bVar, g gVar) {
            return new j(fVar, c0712c, dVar, bVar, gVar);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return Intrinsics.c(this.gdpr, jVar.gdpr) && Intrinsics.c(this.ccpa, jVar.ccpa) && Intrinsics.c(this.coppa, jVar.coppa) && Intrinsics.c(this.fpd, jVar.fpd) && Intrinsics.c(this.iab, jVar.iab);
        }

        public final C0712c getCcpa() {
            return this.ccpa;
        }

        public final d getCoppa() {
            return this.coppa;
        }

        public final ez.b getFpd() {
            return this.fpd;
        }

        public final f getGdpr() {
            return this.gdpr;
        }

        public final g getIab() {
            return this.iab;
        }

        public int hashCode() {
            f fVar = this.gdpr;
            int iHashCode = (fVar == null ? 0 : fVar.hashCode()) * 31;
            C0712c c0712c = this.ccpa;
            int iHashCode2 = (iHashCode + (c0712c == null ? 0 : c0712c.hashCode())) * 31;
            d dVar = this.coppa;
            int iHashCode3 = (iHashCode2 + (dVar == null ? 0 : dVar.hashCode())) * 31;
            ez.b bVar = this.fpd;
            int iHashCode4 = (iHashCode3 + (bVar == null ? 0 : bVar.hashCode())) * 31;
            g gVar = this.iab;
            return iHashCode4 + (gVar != null ? gVar.hashCode() : 0);
        }

        public final void setCcpa(C0712c c0712c) {
            this.ccpa = c0712c;
        }

        public final void setCoppa(d dVar) {
            this.coppa = dVar;
        }

        public final void setFpd(ez.b bVar) {
            this.fpd = bVar;
        }

        public final void setGdpr(f fVar) {
            this.gdpr = fVar;
        }

        public final void setIab(g gVar) {
            this.iab = gVar;
        }

        public String toString() {
            return "User(gdpr=" + this.gdpr + ", ccpa=" + this.ccpa + ", coppa=" + this.coppa + ", fpd=" + this.fpd + ", iab=" + this.iab + ')';
        }
    }

    @Deprecated
    public /* synthetic */ c(int i11, com.vungle.ads.internal.model.d dVar, com.vungle.ads.internal.model.b bVar, j jVar, h hVar, i iVar, w1 w1Var) {
        if (1 != (i11 & 1)) {
            m1.a(i11, 1, a.INSTANCE.getDescriptor());
        }
        this.device = dVar;
        if ((i11 & 2) == 0) {
            this.app = null;
        } else {
            this.app = bVar;
        }
        if ((i11 & 4) == 0) {
            this.user = null;
        } else {
            this.user = jVar;
        }
        if ((i11 & 8) == 0) {
            this.ext = null;
        } else {
            this.ext = hVar;
        }
        if ((i11 & 16) == 0) {
            this.request = null;
        } else {
            this.request = iVar;
        }
    }

    public c(com.vungle.ads.internal.model.d device, com.vungle.ads.internal.model.b bVar, j jVar, h hVar, i iVar) {
        Intrinsics.h(device, "device");
        this.device = device;
        this.app = bVar;
        this.user = jVar;
        this.ext = hVar;
        this.request = iVar;
    }

    public /* synthetic */ c(com.vungle.ads.internal.model.d dVar, com.vungle.ads.internal.model.b bVar, j jVar, h hVar, i iVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, (i11 & 2) != 0 ? null : bVar, (i11 & 4) != 0 ? null : jVar, (i11 & 8) != 0 ? null : hVar, (i11 & 16) != 0 ? null : iVar);
    }

    public static /* synthetic */ c copy$default(c cVar, com.vungle.ads.internal.model.d dVar, com.vungle.ads.internal.model.b bVar, j jVar, h hVar, i iVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            dVar = cVar.device;
        }
        if ((i11 & 2) != 0) {
            bVar = cVar.app;
        }
        com.vungle.ads.internal.model.b bVar2 = bVar;
        if ((i11 & 4) != 0) {
            jVar = cVar.user;
        }
        j jVar2 = jVar;
        if ((i11 & 8) != 0) {
            hVar = cVar.ext;
        }
        h hVar2 = hVar;
        if ((i11 & 16) != 0) {
            iVar = cVar.request;
        }
        return cVar.copy(dVar, bVar2, jVar2, hVar2, iVar);
    }

    @JvmStatic
    public static final void write$Self(c self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        output.C(serialDesc, 0, com.vungle.ads.internal.model.d.a.INSTANCE, self.device);
        if (output.z(serialDesc, 1) || self.app != null) {
            output.i(serialDesc, 1, com.vungle.ads.internal.model.b.a.INSTANCE, self.app);
        }
        if (output.z(serialDesc, 2) || self.user != null) {
            output.i(serialDesc, 2, j.a.INSTANCE, self.user);
        }
        if (output.z(serialDesc, 3) || self.ext != null) {
            output.i(serialDesc, 3, h.a.INSTANCE, self.ext);
        }
        if (!output.z(serialDesc, 4) && self.request == null) {
            return;
        }
        output.i(serialDesc, 4, i.a.INSTANCE, self.request);
    }

    public final com.vungle.ads.internal.model.d component1() {
        return this.device;
    }

    public final com.vungle.ads.internal.model.b component2() {
        return this.app;
    }

    public final j component3() {
        return this.user;
    }

    public final h component4() {
        return this.ext;
    }

    public final i component5() {
        return this.request;
    }

    public final c copy(com.vungle.ads.internal.model.d device, com.vungle.ads.internal.model.b bVar, j jVar, h hVar, i iVar) {
        Intrinsics.h(device, "device");
        return new c(device, bVar, jVar, hVar, iVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.device, cVar.device) && Intrinsics.c(this.app, cVar.app) && Intrinsics.c(this.user, cVar.user) && Intrinsics.c(this.ext, cVar.ext) && Intrinsics.c(this.request, cVar.request);
    }

    public final com.vungle.ads.internal.model.b getApp() {
        return this.app;
    }

    public final com.vungle.ads.internal.model.d getDevice() {
        return this.device;
    }

    public final h getExt() {
        return this.ext;
    }

    public final i getRequest() {
        return this.request;
    }

    public final j getUser() {
        return this.user;
    }

    public int hashCode() {
        int iHashCode = this.device.hashCode() * 31;
        com.vungle.ads.internal.model.b bVar = this.app;
        int iHashCode2 = (iHashCode + (bVar == null ? 0 : bVar.hashCode())) * 31;
        j jVar = this.user;
        int iHashCode3 = (iHashCode2 + (jVar == null ? 0 : jVar.hashCode())) * 31;
        h hVar = this.ext;
        int iHashCode4 = (iHashCode3 + (hVar == null ? 0 : hVar.hashCode())) * 31;
        i iVar = this.request;
        return iHashCode4 + (iVar != null ? iVar.hashCode() : 0);
    }

    public final void setExt(h hVar) {
        this.ext = hVar;
    }

    public final void setRequest(i iVar) {
        this.request = iVar;
    }

    public String toString() {
        return "CommonRequestBody(device=" + this.device + ", app=" + this.app + ", user=" + this.user + ", ext=" + this.ext + ", request=" + this.request + ')';
    }
}
