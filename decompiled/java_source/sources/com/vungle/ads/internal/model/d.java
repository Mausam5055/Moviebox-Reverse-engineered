package com.vungle.ads.internal.model;

import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b1;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.h0;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.m1;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.w1;

/* JADX INFO: loaded from: classes7.dex */
public final class d {
    public static final b Companion = new b(null);
    private final String carrier;
    private c ext;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f60636h;
    private String ifa;
    private Integer lmt;
    private final String make;
    private final String model;

    /* JADX INFO: renamed from: os, reason: collision with root package name */
    private final String f60637os;
    private final String osv;

    /* JADX INFO: renamed from: ua, reason: collision with root package name */
    private String f60638ua;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f60639w;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.DeviceNode", aVar, 11);
            pluginGeneratedSerialDescriptor.l("make", false);
            pluginGeneratedSerialDescriptor.l("model", false);
            pluginGeneratedSerialDescriptor.l("osv", false);
            pluginGeneratedSerialDescriptor.l("carrier", true);
            pluginGeneratedSerialDescriptor.l("os", false);
            pluginGeneratedSerialDescriptor.l("w", false);
            pluginGeneratedSerialDescriptor.l("h", false);
            pluginGeneratedSerialDescriptor.l("ua", true);
            pluginGeneratedSerialDescriptor.l("ifa", true);
            pluginGeneratedSerialDescriptor.l("lmt", true);
            pluginGeneratedSerialDescriptor.l("ext", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            b2 b2Var = b2.f68112a;
            kotlinx.serialization.b bVarS = d00.a.s(b2Var);
            r0 r0Var = r0.f68192a;
            return new kotlinx.serialization.b[]{b2Var, b2Var, b2Var, bVarS, b2Var, r0Var, r0Var, d00.a.s(b2Var), d00.a.s(b2Var), d00.a.s(r0Var), d00.a.s(c.a.INSTANCE)};
        }

        @Override // kotlinx.serialization.a
        public d deserialize(e00.e decoder) {
            int i11;
            Object objN;
            Object objN2;
            Object objN3;
            Object objN4;
            Object objN5;
            int i12;
            int i13;
            String str;
            String str2;
            String str3;
            String str4;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            e00.c cVarB = decoder.b(descriptor2);
            int i14 = 10;
            int i15 = 9;
            if (cVarB.p()) {
                String strM = cVarB.m(descriptor2, 0);
                String strM2 = cVarB.m(descriptor2, 1);
                String strM3 = cVarB.m(descriptor2, 2);
                b2 b2Var = b2.f68112a;
                objN5 = cVarB.n(descriptor2, 3, b2Var, null);
                String strM4 = cVarB.m(descriptor2, 4);
                int i16 = cVarB.i(descriptor2, 5);
                int i17 = cVarB.i(descriptor2, 6);
                objN4 = cVarB.n(descriptor2, 7, b2Var, null);
                objN3 = cVarB.n(descriptor2, 8, b2Var, null);
                objN = cVarB.n(descriptor2, 9, r0.f68192a, null);
                objN2 = cVarB.n(descriptor2, 10, c.a.INSTANCE, null);
                str = strM;
                i11 = i17;
                i12 = i16;
                str4 = strM4;
                str3 = strM3;
                str2 = strM2;
                i13 = 2047;
            } else {
                boolean z10 = true;
                int i18 = 0;
                int i19 = 0;
                Object objN6 = null;
                Object objN7 = null;
                Object objN8 = null;
                Object objN9 = null;
                String strM5 = null;
                String strM6 = null;
                String strM7 = null;
                String strM8 = null;
                Object objN10 = null;
                int i20 = 0;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    switch (iO) {
                        case -1:
                            z10 = false;
                            i14 = 10;
                            break;
                        case 0:
                            strM5 = cVarB.m(descriptor2, 0);
                            i19 |= 1;
                            i14 = 10;
                            i15 = 9;
                            break;
                        case 1:
                            strM6 = cVarB.m(descriptor2, 1);
                            i19 |= 2;
                            i14 = 10;
                            i15 = 9;
                            break;
                        case 2:
                            strM7 = cVarB.m(descriptor2, 2);
                            i19 |= 4;
                            i14 = 10;
                            i15 = 9;
                            break;
                        case 3:
                            objN10 = cVarB.n(descriptor2, 3, b2.f68112a, objN10);
                            i19 |= 8;
                            i14 = 10;
                            i15 = 9;
                            break;
                        case 4:
                            strM8 = cVarB.m(descriptor2, 4);
                            i19 |= 16;
                            i14 = 10;
                            break;
                        case 5:
                            i20 = cVarB.i(descriptor2, 5);
                            i19 |= 32;
                            break;
                        case 6:
                            i18 = cVarB.i(descriptor2, 6);
                            i19 |= 64;
                            break;
                        case 7:
                            objN9 = cVarB.n(descriptor2, 7, b2.f68112a, objN9);
                            i19 |= 128;
                            break;
                        case 8:
                            objN8 = cVarB.n(descriptor2, 8, b2.f68112a, objN8);
                            i19 |= 256;
                            break;
                        case 9:
                            objN6 = cVarB.n(descriptor2, i15, r0.f68192a, objN6);
                            i19 |= 512;
                            break;
                        case 10:
                            objN7 = cVarB.n(descriptor2, i14, c.a.INSTANCE, objN7);
                            i19 |= 1024;
                            break;
                        default:
                            throw new UnknownFieldException(iO);
                    }
                }
                i11 = i18;
                objN = objN6;
                objN2 = objN7;
                objN3 = objN8;
                objN4 = objN9;
                objN5 = objN10;
                i12 = i20;
                i13 = i19;
                str = strM5;
                str2 = strM6;
                str3 = strM7;
                str4 = strM8;
            }
            cVarB.c(descriptor2);
            return new d(i13, str, str2, str3, (String) objN5, str4, i12, i11, (String) objN4, (String) objN3, (Integer) objN, (c) objN2, (w1) null);
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

    public static final class c {
        public static final b Companion = new b(null);
        private String amazonAdvertisingId;
        private String appSetId;
        private Integer appSetIdScope;
        private float batteryLevel;
        private int batterySaverEnabled;
        private String batteryState;
        private String connectionType;
        private String connectionTypeDetail;
        private String gaid;
        private boolean isGooglePlayServicesAvailable;
        private boolean isSideloadEnabled;
        private boolean isTv;
        private String language;
        private String locale;
        private Long obt;
        private Long oit;
        private Long ort;
        private int sdCardAvailable;
        private int soundEnabled;
        private String timeZone;
        private float volumeLevel;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.DeviceNode.VungleExt", aVar, 21);
                pluginGeneratedSerialDescriptor.l("is_google_play_services_available", true);
                pluginGeneratedSerialDescriptor.l("app_set_id", true);
                pluginGeneratedSerialDescriptor.l("app_set_id_scope", true);
                pluginGeneratedSerialDescriptor.l("battery_level", true);
                pluginGeneratedSerialDescriptor.l("battery_state", true);
                pluginGeneratedSerialDescriptor.l("battery_saver_enabled", true);
                pluginGeneratedSerialDescriptor.l("connection_type", true);
                pluginGeneratedSerialDescriptor.l("connection_type_detail", true);
                pluginGeneratedSerialDescriptor.l("locale", true);
                pluginGeneratedSerialDescriptor.l(TmcConstants.KEY_LANGUAGE, true);
                pluginGeneratedSerialDescriptor.l("time_zone", true);
                pluginGeneratedSerialDescriptor.l("volume_level", true);
                pluginGeneratedSerialDescriptor.l("sound_enabled", true);
                pluginGeneratedSerialDescriptor.l("is_tv", true);
                pluginGeneratedSerialDescriptor.l("sd_card_available", true);
                pluginGeneratedSerialDescriptor.l("is_sideload_enabled", true);
                pluginGeneratedSerialDescriptor.l(UrlKt.KEY_MINI_GAID, true);
                pluginGeneratedSerialDescriptor.l("amazon_advertising_id", true);
                pluginGeneratedSerialDescriptor.l("oit", true);
                pluginGeneratedSerialDescriptor.l("ort", true);
                pluginGeneratedSerialDescriptor.l("obt", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                b2 b2Var = b2.f68112a;
                kotlinx.serialization.b bVarS = d00.a.s(b2Var);
                r0 r0Var = r0.f68192a;
                kotlinx.serialization.b bVarS2 = d00.a.s(r0Var);
                kotlinx.serialization.b bVarS3 = d00.a.s(b2Var);
                kotlinx.serialization.b bVarS4 = d00.a.s(b2Var);
                kotlinx.serialization.b bVarS5 = d00.a.s(b2Var);
                kotlinx.serialization.b bVarS6 = d00.a.s(b2Var);
                kotlinx.serialization.b bVarS7 = d00.a.s(b2Var);
                kotlinx.serialization.b bVarS8 = d00.a.s(b2Var);
                kotlinx.serialization.b bVarS9 = d00.a.s(b2Var);
                kotlinx.serialization.b bVarS10 = d00.a.s(b2Var);
                b1 b1Var = b1.f68110a;
                kotlinx.serialization.b bVarS11 = d00.a.s(b1Var);
                kotlinx.serialization.b bVarS12 = d00.a.s(b1Var);
                kotlinx.serialization.b bVarS13 = d00.a.s(b1Var);
                kotlinx.serialization.internal.i iVar = kotlinx.serialization.internal.i.f68152a;
                h0 h0Var = h0.f68146a;
                return new kotlinx.serialization.b[]{iVar, bVarS, bVarS2, h0Var, bVarS3, r0Var, bVarS4, bVarS5, bVarS6, bVarS7, bVarS8, h0Var, r0Var, iVar, r0Var, iVar, bVarS9, bVarS10, bVarS11, bVarS12, bVarS13};
            }

            @Override // kotlinx.serialization.a
            public c deserialize(e00.e decoder) {
                Object objN;
                Object objN2;
                Object obj;
                int i11;
                Object obj2;
                Object objN3;
                Object obj3;
                Object objN4;
                Object objN5;
                Object objN6;
                boolean z10;
                float f11;
                Object objN7;
                int i12;
                boolean z11;
                boolean z12;
                int i13;
                float f12;
                int i14;
                Object objN8;
                Object objN9;
                Object objN10;
                int i15;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                int i16 = 0;
                if (cVarB.p()) {
                    boolean zC = cVarB.C(descriptor2, 0);
                    b2 b2Var = b2.f68112a;
                    Object objN11 = cVarB.n(descriptor2, 1, b2Var, null);
                    objN10 = cVarB.n(descriptor2, 2, r0.f68192a, null);
                    float fU = cVarB.u(descriptor2, 3);
                    objN9 = cVarB.n(descriptor2, 4, b2Var, null);
                    int i17 = cVarB.i(descriptor2, 5);
                    objN7 = cVarB.n(descriptor2, 6, b2Var, null);
                    objN8 = cVarB.n(descriptor2, 7, b2Var, null);
                    objN6 = cVarB.n(descriptor2, 8, b2Var, null);
                    objN5 = cVarB.n(descriptor2, 9, b2Var, null);
                    objN4 = cVarB.n(descriptor2, 10, b2Var, null);
                    float fU2 = cVarB.u(descriptor2, 11);
                    int i18 = cVarB.i(descriptor2, 12);
                    boolean zC2 = cVarB.C(descriptor2, 13);
                    int i19 = cVarB.i(descriptor2, 14);
                    boolean zC3 = cVarB.C(descriptor2, 15);
                    obj2 = objN11;
                    Object objN12 = cVarB.n(descriptor2, 16, b2Var, null);
                    Object objN13 = cVarB.n(descriptor2, 17, b2Var, null);
                    b1 b1Var = b1.f68110a;
                    obj3 = objN13;
                    objN3 = cVarB.n(descriptor2, 18, b1Var, null);
                    f11 = fU;
                    i11 = 2097151;
                    i12 = i18;
                    i13 = i17;
                    f12 = fU2;
                    z10 = zC3;
                    i14 = i19;
                    z12 = zC2;
                    z11 = zC;
                    objN = cVarB.n(descriptor2, 19, b1Var, null);
                    objN2 = cVarB.n(descriptor2, 20, b1Var, null);
                    obj = objN12;
                } else {
                    objN = null;
                    boolean z13 = true;
                    Object objN14 = null;
                    Object objN15 = null;
                    Object objN16 = null;
                    Object objN17 = null;
                    Object objN18 = null;
                    Object objN19 = null;
                    Object objN20 = null;
                    Object objN21 = null;
                    Object objN22 = null;
                    Object objN23 = null;
                    Object objN24 = null;
                    int i20 = 0;
                    boolean zC4 = false;
                    int i21 = 0;
                    boolean zC5 = false;
                    boolean zC6 = false;
                    int i22 = 0;
                    float fU3 = 0.0f;
                    float fU4 = 0.0f;
                    objN2 = null;
                    while (z13) {
                        int i23 = i20;
                        int iO = cVarB.o(descriptor2);
                        switch (iO) {
                            case -1:
                                z13 = false;
                                objN14 = objN14;
                                objN24 = objN24;
                                i20 = i23;
                                break;
                            case 0:
                                zC5 = cVarB.C(descriptor2, 0);
                                i16 |= 1;
                                objN14 = objN14;
                                objN15 = objN15;
                                objN24 = objN24;
                                i20 = i23;
                                break;
                            case 1:
                                Object obj4 = objN15;
                                i16 |= 2;
                                objN15 = obj4;
                                i20 = i23;
                                objN24 = cVarB.n(descriptor2, 1, b2.f68112a, objN24);
                                objN14 = objN14;
                                break;
                            case 2:
                                objN14 = cVarB.n(descriptor2, 2, r0.f68192a, objN14);
                                i16 |= 4;
                                objN15 = objN15;
                                i20 = i23;
                                break;
                            case 3:
                                objN14 = objN14;
                                fU3 = cVarB.u(descriptor2, 3);
                                i16 |= 8;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 4:
                                objN14 = objN14;
                                objN18 = cVarB.n(descriptor2, 4, b2.f68112a, objN18);
                                i16 |= 16;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 5:
                                objN14 = objN14;
                                i22 = cVarB.i(descriptor2, 5);
                                i16 |= 32;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 6:
                                objN14 = objN14;
                                objN15 = cVarB.n(descriptor2, 6, b2.f68112a, objN15);
                                i16 |= 64;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 7:
                                objN14 = objN14;
                                objN16 = cVarB.n(descriptor2, 7, b2.f68112a, objN16);
                                i16 |= 128;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 8:
                                objN14 = objN14;
                                objN23 = cVarB.n(descriptor2, 8, b2.f68112a, objN23);
                                i16 |= 256;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 9:
                                objN14 = objN14;
                                objN22 = cVarB.n(descriptor2, 9, b2.f68112a, objN22);
                                i16 |= 512;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 10:
                                objN14 = objN14;
                                objN21 = cVarB.n(descriptor2, 10, b2.f68112a, objN21);
                                i16 |= 1024;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 11:
                                objN14 = objN14;
                                fU4 = cVarB.u(descriptor2, 11);
                                i16 |= 2048;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 12:
                                objN14 = objN14;
                                i21 = cVarB.i(descriptor2, 12);
                                i16 |= 4096;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 13:
                                objN14 = objN14;
                                zC6 = cVarB.C(descriptor2, 13);
                                i16 |= 8192;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 14:
                                objN14 = objN14;
                                i16 |= 16384;
                                i20 = cVarB.i(descriptor2, 14);
                                objN14 = objN14;
                                break;
                            case 15:
                                objN14 = objN14;
                                zC4 = cVarB.C(descriptor2, 15);
                                i16 |= 32768;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 16:
                                objN17 = cVarB.n(descriptor2, 16, b2.f68112a, objN17);
                                i15 = 65536;
                                i16 |= i15;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 17:
                                objN20 = cVarB.n(descriptor2, 17, b2.f68112a, objN20);
                                i15 = 131072;
                                i16 |= i15;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 18:
                                objN19 = cVarB.n(descriptor2, 18, b1.f68110a, objN19);
                                i15 = 262144;
                                i16 |= i15;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 19:
                                objN = cVarB.n(descriptor2, 19, b1.f68110a, objN);
                                i15 = 524288;
                                i16 |= i15;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            case 20:
                                objN2 = cVarB.n(descriptor2, 20, b1.f68110a, objN2);
                                i15 = 1048576;
                                i16 |= i15;
                                i20 = i23;
                                objN14 = objN14;
                                break;
                            default:
                                throw new UnknownFieldException(iO);
                        }
                    }
                    int i24 = i20;
                    Object obj5 = objN24;
                    Object obj6 = objN14;
                    obj = objN17;
                    i11 = i16;
                    obj2 = obj5;
                    objN3 = objN19;
                    obj3 = objN20;
                    objN4 = objN21;
                    objN5 = objN22;
                    objN6 = objN23;
                    z10 = zC4;
                    f11 = fU3;
                    objN7 = objN15;
                    i12 = i21;
                    z11 = zC5;
                    z12 = zC6;
                    i13 = i22;
                    f12 = fU4;
                    i14 = i24;
                    objN8 = objN16;
                    objN9 = objN18;
                    objN10 = obj6;
                }
                cVarB.c(descriptor2);
                return new c(i11, z11, (String) obj2, (Integer) objN10, f11, (String) objN9, i13, (String) objN7, (String) objN8, (String) objN6, (String) objN5, (String) objN4, f12, i12, z12, i14, z10, (String) obj, (String) obj3, (Long) objN3, (Long) objN, (Long) objN2, (w1) null);
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
            private b() {
            }

            public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final kotlinx.serialization.b serializer() {
                return a.INSTANCE;
            }
        }

        public c() {
            this(false, (String) null, (Integer) null, 0.0f, (String) null, 0, (String) null, (String) null, (String) null, (String) null, (String) null, 0.0f, 0, false, 0, false, (String) null, (String) null, (Long) null, (Long) null, (Long) null, 2097151, (DefaultConstructorMarker) null);
        }

        @Deprecated
        public /* synthetic */ c(int i11, boolean z10, String str, Integer num, float f11, String str2, int i12, String str3, String str4, String str5, String str6, String str7, float f12, int i13, boolean z11, int i14, boolean z12, String str8, String str9, Long l11, Long l12, Long l13, w1 w1Var) {
            if ((i11 & 1) == 0) {
                this.isGooglePlayServicesAvailable = false;
            } else {
                this.isGooglePlayServicesAvailable = z10;
            }
            if ((i11 & 2) == 0) {
                this.appSetId = null;
            } else {
                this.appSetId = str;
            }
            if ((i11 & 4) == 0) {
                this.appSetIdScope = null;
            } else {
                this.appSetIdScope = num;
            }
            if ((i11 & 8) == 0) {
                this.batteryLevel = 0.0f;
            } else {
                this.batteryLevel = f11;
            }
            if ((i11 & 16) == 0) {
                this.batteryState = null;
            } else {
                this.batteryState = str2;
            }
            if ((i11 & 32) == 0) {
                this.batterySaverEnabled = 0;
            } else {
                this.batterySaverEnabled = i12;
            }
            if ((i11 & 64) == 0) {
                this.connectionType = null;
            } else {
                this.connectionType = str3;
            }
            if ((i11 & 128) == 0) {
                this.connectionTypeDetail = null;
            } else {
                this.connectionTypeDetail = str4;
            }
            if ((i11 & 256) == 0) {
                this.locale = null;
            } else {
                this.locale = str5;
            }
            if ((i11 & 512) == 0) {
                this.language = null;
            } else {
                this.language = str6;
            }
            if ((i11 & 1024) == 0) {
                this.timeZone = null;
            } else {
                this.timeZone = str7;
            }
            if ((i11 & 2048) == 0) {
                this.volumeLevel = 0.0f;
            } else {
                this.volumeLevel = f12;
            }
            if ((i11 & 4096) == 0) {
                this.soundEnabled = 1;
            } else {
                this.soundEnabled = i13;
            }
            if ((i11 & 8192) == 0) {
                this.isTv = false;
            } else {
                this.isTv = z11;
            }
            if ((i11 & 16384) == 0) {
                this.sdCardAvailable = 1;
            } else {
                this.sdCardAvailable = i14;
            }
            if ((32768 & i11) == 0) {
                this.isSideloadEnabled = false;
            } else {
                this.isSideloadEnabled = z12;
            }
            if ((65536 & i11) == 0) {
                this.gaid = null;
            } else {
                this.gaid = str8;
            }
            if ((131072 & i11) == 0) {
                this.amazonAdvertisingId = null;
            } else {
                this.amazonAdvertisingId = str9;
            }
            if ((262144 & i11) == 0) {
                this.oit = null;
            } else {
                this.oit = l11;
            }
            if ((524288 & i11) == 0) {
                this.ort = null;
            } else {
                this.ort = l12;
            }
            if ((i11 & 1048576) == 0) {
                this.obt = null;
            } else {
                this.obt = l13;
            }
        }

        public c(boolean z10, String str, Integer num, float f11, String str2, int i11, String str3, String str4, String str5, String str6, String str7, float f12, int i12, boolean z11, int i13, boolean z12, String str8, String str9, Long l11, Long l12, Long l13) {
            this.isGooglePlayServicesAvailable = z10;
            this.appSetId = str;
            this.appSetIdScope = num;
            this.batteryLevel = f11;
            this.batteryState = str2;
            this.batterySaverEnabled = i11;
            this.connectionType = str3;
            this.connectionTypeDetail = str4;
            this.locale = str5;
            this.language = str6;
            this.timeZone = str7;
            this.volumeLevel = f12;
            this.soundEnabled = i12;
            this.isTv = z11;
            this.sdCardAvailable = i13;
            this.isSideloadEnabled = z12;
            this.gaid = str8;
            this.amazonAdvertisingId = str9;
            this.oit = l11;
            this.ort = l12;
            this.obt = l13;
        }

        public /* synthetic */ c(boolean z10, String str, Integer num, float f11, String str2, int i11, String str3, String str4, String str5, String str6, String str7, float f12, int i12, boolean z11, int i13, boolean z12, String str8, String str9, Long l11, Long l12, Long l13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
            this((i14 & 1) != 0 ? false : z10, (i14 & 2) != 0 ? null : str, (i14 & 4) != 0 ? null : num, (i14 & 8) != 0 ? 0.0f : f11, (i14 & 16) != 0 ? null : str2, (i14 & 32) != 0 ? 0 : i11, (i14 & 64) != 0 ? null : str3, (i14 & 128) != 0 ? null : str4, (i14 & 256) != 0 ? null : str5, (i14 & 512) != 0 ? null : str6, (i14 & 1024) != 0 ? null : str7, (i14 & 2048) == 0 ? f12 : 0.0f, (i14 & 4096) != 0 ? 1 : i12, (i14 & 8192) != 0 ? false : z11, (i14 & 16384) == 0 ? i13 : 1, (32768 & i14) != 0 ? false : z12, (i14 & 65536) != 0 ? null : str8, (i14 & 131072) != 0 ? null : str9, (i14 & 262144) != 0 ? null : l11, (i14 & 524288) != 0 ? null : l12, (i14 & 1048576) != 0 ? null : l13);
        }

        public static /* synthetic */ void getAmazonAdvertisingId$annotations() {
        }

        public static /* synthetic */ void getAppSetId$annotations() {
        }

        public static /* synthetic */ void getAppSetIdScope$annotations() {
        }

        public static /* synthetic */ void getBatteryLevel$annotations() {
        }

        public static /* synthetic */ void getBatterySaverEnabled$annotations() {
        }

        public static /* synthetic */ void getBatteryState$annotations() {
        }

        public static /* synthetic */ void getConnectionType$annotations() {
        }

        public static /* synthetic */ void getConnectionTypeDetail$annotations() {
        }

        public static /* synthetic */ void getGaid$annotations() {
        }

        public static /* synthetic */ void getLanguage$annotations() {
        }

        public static /* synthetic */ void getLocale$annotations() {
        }

        public static /* synthetic */ void getObt$annotations() {
        }

        public static /* synthetic */ void getOit$annotations() {
        }

        public static /* synthetic */ void getOrt$annotations() {
        }

        public static /* synthetic */ void getSdCardAvailable$annotations() {
        }

        public static /* synthetic */ void getSoundEnabled$annotations() {
        }

        public static /* synthetic */ void getTimeZone$annotations() {
        }

        public static /* synthetic */ void getVolumeLevel$annotations() {
        }

        public static /* synthetic */ void isGooglePlayServicesAvailable$annotations() {
        }

        public static /* synthetic */ void isSideloadEnabled$annotations() {
        }

        public static /* synthetic */ void isTv$annotations() {
        }

        @JvmStatic
        public static final void write$Self(c self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.isGooglePlayServicesAvailable) {
                output.x(serialDesc, 0, self.isGooglePlayServicesAvailable);
            }
            if (output.z(serialDesc, 1) || self.appSetId != null) {
                output.i(serialDesc, 1, b2.f68112a, self.appSetId);
            }
            if (output.z(serialDesc, 2) || self.appSetIdScope != null) {
                output.i(serialDesc, 2, r0.f68192a, self.appSetIdScope);
            }
            if (output.z(serialDesc, 3) || !Intrinsics.c(Float.valueOf(self.batteryLevel), Float.valueOf(0.0f))) {
                output.s(serialDesc, 3, self.batteryLevel);
            }
            if (output.z(serialDesc, 4) || self.batteryState != null) {
                output.i(serialDesc, 4, b2.f68112a, self.batteryState);
            }
            if (output.z(serialDesc, 5) || self.batterySaverEnabled != 0) {
                output.w(serialDesc, 5, self.batterySaverEnabled);
            }
            if (output.z(serialDesc, 6) || self.connectionType != null) {
                output.i(serialDesc, 6, b2.f68112a, self.connectionType);
            }
            if (output.z(serialDesc, 7) || self.connectionTypeDetail != null) {
                output.i(serialDesc, 7, b2.f68112a, self.connectionTypeDetail);
            }
            if (output.z(serialDesc, 8) || self.locale != null) {
                output.i(serialDesc, 8, b2.f68112a, self.locale);
            }
            if (output.z(serialDesc, 9) || self.language != null) {
                output.i(serialDesc, 9, b2.f68112a, self.language);
            }
            if (output.z(serialDesc, 10) || self.timeZone != null) {
                output.i(serialDesc, 10, b2.f68112a, self.timeZone);
            }
            if (output.z(serialDesc, 11) || !Intrinsics.c(Float.valueOf(self.volumeLevel), Float.valueOf(0.0f))) {
                output.s(serialDesc, 11, self.volumeLevel);
            }
            if (output.z(serialDesc, 12) || self.soundEnabled != 1) {
                output.w(serialDesc, 12, self.soundEnabled);
            }
            if (output.z(serialDesc, 13) || self.isTv) {
                output.x(serialDesc, 13, self.isTv);
            }
            if (output.z(serialDesc, 14) || self.sdCardAvailable != 1) {
                output.w(serialDesc, 14, self.sdCardAvailable);
            }
            if (output.z(serialDesc, 15) || self.isSideloadEnabled) {
                output.x(serialDesc, 15, self.isSideloadEnabled);
            }
            if (output.z(serialDesc, 16) || self.gaid != null) {
                output.i(serialDesc, 16, b2.f68112a, self.gaid);
            }
            if (output.z(serialDesc, 17) || self.amazonAdvertisingId != null) {
                output.i(serialDesc, 17, b2.f68112a, self.amazonAdvertisingId);
            }
            if (output.z(serialDesc, 18) || self.oit != null) {
                output.i(serialDesc, 18, b1.f68110a, self.oit);
            }
            if (output.z(serialDesc, 19) || self.ort != null) {
                output.i(serialDesc, 19, b1.f68110a, self.ort);
            }
            if (!output.z(serialDesc, 20) && self.obt == null) {
                return;
            }
            output.i(serialDesc, 20, b1.f68110a, self.obt);
        }

        public final boolean component1() {
            return this.isGooglePlayServicesAvailable;
        }

        public final String component10() {
            return this.language;
        }

        public final String component11() {
            return this.timeZone;
        }

        public final float component12() {
            return this.volumeLevel;
        }

        public final int component13() {
            return this.soundEnabled;
        }

        public final boolean component14() {
            return this.isTv;
        }

        public final int component15() {
            return this.sdCardAvailable;
        }

        public final boolean component16() {
            return this.isSideloadEnabled;
        }

        public final String component17() {
            return this.gaid;
        }

        public final String component18() {
            return this.amazonAdvertisingId;
        }

        public final Long component19() {
            return this.oit;
        }

        public final String component2() {
            return this.appSetId;
        }

        public final Long component20() {
            return this.ort;
        }

        public final Long component21() {
            return this.obt;
        }

        public final Integer component3() {
            return this.appSetIdScope;
        }

        public final float component4() {
            return this.batteryLevel;
        }

        public final String component5() {
            return this.batteryState;
        }

        public final int component6() {
            return this.batterySaverEnabled;
        }

        public final String component7() {
            return this.connectionType;
        }

        public final String component8() {
            return this.connectionTypeDetail;
        }

        public final String component9() {
            return this.locale;
        }

        public final c copy(boolean z10, String str, Integer num, float f11, String str2, int i11, String str3, String str4, String str5, String str6, String str7, float f12, int i12, boolean z11, int i13, boolean z12, String str8, String str9, Long l11, Long l12, Long l13) {
            return new c(z10, str, num, f11, str2, i11, str3, str4, str5, str6, str7, f12, i12, z11, i13, z12, str8, str9, l11, l12, l13);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.isGooglePlayServicesAvailable == cVar.isGooglePlayServicesAvailable && Intrinsics.c(this.appSetId, cVar.appSetId) && Intrinsics.c(this.appSetIdScope, cVar.appSetIdScope) && Intrinsics.c(Float.valueOf(this.batteryLevel), Float.valueOf(cVar.batteryLevel)) && Intrinsics.c(this.batteryState, cVar.batteryState) && this.batterySaverEnabled == cVar.batterySaverEnabled && Intrinsics.c(this.connectionType, cVar.connectionType) && Intrinsics.c(this.connectionTypeDetail, cVar.connectionTypeDetail) && Intrinsics.c(this.locale, cVar.locale) && Intrinsics.c(this.language, cVar.language) && Intrinsics.c(this.timeZone, cVar.timeZone) && Intrinsics.c(Float.valueOf(this.volumeLevel), Float.valueOf(cVar.volumeLevel)) && this.soundEnabled == cVar.soundEnabled && this.isTv == cVar.isTv && this.sdCardAvailable == cVar.sdCardAvailable && this.isSideloadEnabled == cVar.isSideloadEnabled && Intrinsics.c(this.gaid, cVar.gaid) && Intrinsics.c(this.amazonAdvertisingId, cVar.amazonAdvertisingId) && Intrinsics.c(this.oit, cVar.oit) && Intrinsics.c(this.ort, cVar.ort) && Intrinsics.c(this.obt, cVar.obt);
        }

        public final String getAmazonAdvertisingId() {
            return this.amazonAdvertisingId;
        }

        public final String getAppSetId() {
            return this.appSetId;
        }

        public final Integer getAppSetIdScope() {
            return this.appSetIdScope;
        }

        public final float getBatteryLevel() {
            return this.batteryLevel;
        }

        public final int getBatterySaverEnabled() {
            return this.batterySaverEnabled;
        }

        public final String getBatteryState() {
            return this.batteryState;
        }

        public final String getConnectionType() {
            return this.connectionType;
        }

        public final String getConnectionTypeDetail() {
            return this.connectionTypeDetail;
        }

        public final String getGaid() {
            return this.gaid;
        }

        public final String getLanguage() {
            return this.language;
        }

        public final String getLocale() {
            return this.locale;
        }

        public final Long getObt() {
            return this.obt;
        }

        public final Long getOit() {
            return this.oit;
        }

        public final Long getOrt() {
            return this.ort;
        }

        public final int getSdCardAvailable() {
            return this.sdCardAvailable;
        }

        public final int getSoundEnabled() {
            return this.soundEnabled;
        }

        public final String getTimeZone() {
            return this.timeZone;
        }

        public final float getVolumeLevel() {
            return this.volumeLevel;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v27, types: [int] */
        /* JADX WARN: Type inference failed for: r0v42 */
        /* JADX WARN: Type inference failed for: r0v43 */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v19 */
        /* JADX WARN: Type inference failed for: r2v31, types: [int] */
        /* JADX WARN: Type inference failed for: r2v34 */
        /* JADX WARN: Type inference failed for: r2v43 */
        public int hashCode() {
            boolean z10 = this.isGooglePlayServicesAvailable;
            ?? r11 = z10;
            if (z10) {
                r11 = 1;
            }
            int i11 = r11 * 31;
            String str = this.appSetId;
            int iHashCode = (i11 + (str == null ? 0 : str.hashCode())) * 31;
            Integer num = this.appSetIdScope;
            int iHashCode2 = (((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + Float.floatToIntBits(this.batteryLevel)) * 31;
            String str2 = this.batteryState;
            int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.batterySaverEnabled) * 31;
            String str3 = this.connectionType;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.connectionTypeDetail;
            int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.locale;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.language;
            int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.timeZone;
            int iHashCode8 = (((((iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31) + Float.floatToIntBits(this.volumeLevel)) * 31) + this.soundEnabled) * 31;
            boolean z11 = this.isTv;
            ?? r12 = z11;
            if (z11) {
                r12 = 1;
            }
            int i12 = (((iHashCode8 + r12) * 31) + this.sdCardAvailable) * 31;
            boolean z12 = this.isSideloadEnabled;
            int i13 = (i12 + (z12 ? 1 : z12)) * 31;
            String str8 = this.gaid;
            int iHashCode9 = (i13 + (str8 == null ? 0 : str8.hashCode())) * 31;
            String str9 = this.amazonAdvertisingId;
            int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
            Long l11 = this.oit;
            int iHashCode11 = (iHashCode10 + (l11 == null ? 0 : l11.hashCode())) * 31;
            Long l12 = this.ort;
            int iHashCode12 = (iHashCode11 + (l12 == null ? 0 : l12.hashCode())) * 31;
            Long l13 = this.obt;
            return iHashCode12 + (l13 != null ? l13.hashCode() : 0);
        }

        public final boolean isGooglePlayServicesAvailable() {
            return this.isGooglePlayServicesAvailable;
        }

        public final boolean isSideloadEnabled() {
            return this.isSideloadEnabled;
        }

        public final boolean isTv() {
            return this.isTv;
        }

        public final void setAmazonAdvertisingId(String str) {
            this.amazonAdvertisingId = str;
        }

        public final void setAppSetId(String str) {
            this.appSetId = str;
        }

        public final void setAppSetIdScope(Integer num) {
            this.appSetIdScope = num;
        }

        public final void setBatteryLevel(float f11) {
            this.batteryLevel = f11;
        }

        public final void setBatterySaverEnabled(int i11) {
            this.batterySaverEnabled = i11;
        }

        public final void setBatteryState(String str) {
            this.batteryState = str;
        }

        public final void setConnectionType(String str) {
            this.connectionType = str;
        }

        public final void setConnectionTypeDetail(String str) {
            this.connectionTypeDetail = str;
        }

        public final void setGaid(String str) {
            this.gaid = str;
        }

        public final void setGooglePlayServicesAvailable(boolean z10) {
            this.isGooglePlayServicesAvailable = z10;
        }

        public final void setLanguage(String str) {
            this.language = str;
        }

        public final void setLocale(String str) {
            this.locale = str;
        }

        public final void setObt(Long l11) {
            this.obt = l11;
        }

        public final void setOit(Long l11) {
            this.oit = l11;
        }

        public final void setOrt(Long l11) {
            this.ort = l11;
        }

        public final void setSdCardAvailable(int i11) {
            this.sdCardAvailable = i11;
        }

        public final void setSideloadEnabled(boolean z10) {
            this.isSideloadEnabled = z10;
        }

        public final void setSoundEnabled(int i11) {
            this.soundEnabled = i11;
        }

        public final void setTimeZone(String str) {
            this.timeZone = str;
        }

        public final void setTv(boolean z10) {
            this.isTv = z10;
        }

        public final void setVolumeLevel(float f11) {
            this.volumeLevel = f11;
        }

        public String toString() {
            return "VungleExt(isGooglePlayServicesAvailable=" + this.isGooglePlayServicesAvailable + ", appSetId=" + this.appSetId + ", appSetIdScope=" + this.appSetIdScope + ", batteryLevel=" + this.batteryLevel + ", batteryState=" + this.batteryState + ", batterySaverEnabled=" + this.batterySaverEnabled + ", connectionType=" + this.connectionType + ", connectionTypeDetail=" + this.connectionTypeDetail + ", locale=" + this.locale + ", language=" + this.language + ", timeZone=" + this.timeZone + ", volumeLevel=" + this.volumeLevel + ", soundEnabled=" + this.soundEnabled + ", isTv=" + this.isTv + ", sdCardAvailable=" + this.sdCardAvailable + ", isSideloadEnabled=" + this.isSideloadEnabled + ", gaid=" + this.gaid + ", amazonAdvertisingId=" + this.amazonAdvertisingId + ", oit=" + this.oit + ", ort=" + this.ort + ", obt=" + this.obt + ')';
        }
    }

    @Deprecated
    public /* synthetic */ d(int i11, String str, String str2, String str3, String str4, String str5, int i12, int i13, String str6, String str7, Integer num, c cVar, w1 w1Var) {
        if (119 != (i11 & Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE)) {
            m1.a(i11, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, a.INSTANCE.getDescriptor());
        }
        this.make = str;
        this.model = str2;
        this.osv = str3;
        if ((i11 & 8) == 0) {
            this.carrier = null;
        } else {
            this.carrier = str4;
        }
        this.f60637os = str5;
        this.f60639w = i12;
        this.f60636h = i13;
        if ((i11 & 128) == 0) {
            this.f60638ua = null;
        } else {
            this.f60638ua = str6;
        }
        if ((i11 & 256) == 0) {
            this.ifa = null;
        } else {
            this.ifa = str7;
        }
        if ((i11 & 512) == 0) {
            this.lmt = null;
        } else {
            this.lmt = num;
        }
        if ((i11 & 1024) == 0) {
            this.ext = null;
        } else {
            this.ext = cVar;
        }
    }

    public d(String make, String model, String osv, String str, String os2, int i11, int i12, String str2, String str3, Integer num, c cVar) {
        Intrinsics.h(make, "make");
        Intrinsics.h(model, "model");
        Intrinsics.h(osv, "osv");
        Intrinsics.h(os2, "os");
        this.make = make;
        this.model = model;
        this.osv = osv;
        this.carrier = str;
        this.f60637os = os2;
        this.f60639w = i11;
        this.f60636h = i12;
        this.f60638ua = str2;
        this.ifa = str3;
        this.lmt = num;
        this.ext = cVar;
    }

    public /* synthetic */ d(String str, String str2, String str3, String str4, String str5, int i11, int i12, String str6, String str7, Integer num, c cVar, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i13 & 8) != 0 ? null : str4, str5, i11, i12, (i13 & 128) != 0 ? null : str6, (i13 & 256) != 0 ? null : str7, (i13 & 512) != 0 ? null : num, (i13 & 1024) != 0 ? null : cVar);
    }

    @JvmStatic
    public static final void write$Self(d self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        output.y(serialDesc, 0, self.make);
        output.y(serialDesc, 1, self.model);
        output.y(serialDesc, 2, self.osv);
        if (output.z(serialDesc, 3) || self.carrier != null) {
            output.i(serialDesc, 3, b2.f68112a, self.carrier);
        }
        output.y(serialDesc, 4, self.f60637os);
        output.w(serialDesc, 5, self.f60639w);
        output.w(serialDesc, 6, self.f60636h);
        if (output.z(serialDesc, 7) || self.f60638ua != null) {
            output.i(serialDesc, 7, b2.f68112a, self.f60638ua);
        }
        if (output.z(serialDesc, 8) || self.ifa != null) {
            output.i(serialDesc, 8, b2.f68112a, self.ifa);
        }
        if (output.z(serialDesc, 9) || self.lmt != null) {
            output.i(serialDesc, 9, r0.f68192a, self.lmt);
        }
        if (!output.z(serialDesc, 10) && self.ext == null) {
            return;
        }
        output.i(serialDesc, 10, c.a.INSTANCE, self.ext);
    }

    public final String component1() {
        return this.make;
    }

    public final Integer component10() {
        return this.lmt;
    }

    public final c component11() {
        return this.ext;
    }

    public final String component2() {
        return this.model;
    }

    public final String component3() {
        return this.osv;
    }

    public final String component4() {
        return this.carrier;
    }

    public final String component5() {
        return this.f60637os;
    }

    public final int component6() {
        return this.f60639w;
    }

    public final int component7() {
        return this.f60636h;
    }

    public final String component8() {
        return this.f60638ua;
    }

    public final String component9() {
        return this.ifa;
    }

    public final d copy(String make, String model, String osv, String str, String os2, int i11, int i12, String str2, String str3, Integer num, c cVar) {
        Intrinsics.h(make, "make");
        Intrinsics.h(model, "model");
        Intrinsics.h(osv, "osv");
        Intrinsics.h(os2, "os");
        return new d(make, model, osv, str, os2, i11, i12, str2, str3, num, cVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Intrinsics.c(this.make, dVar.make) && Intrinsics.c(this.model, dVar.model) && Intrinsics.c(this.osv, dVar.osv) && Intrinsics.c(this.carrier, dVar.carrier) && Intrinsics.c(this.f60637os, dVar.f60637os) && this.f60639w == dVar.f60639w && this.f60636h == dVar.f60636h && Intrinsics.c(this.f60638ua, dVar.f60638ua) && Intrinsics.c(this.ifa, dVar.ifa) && Intrinsics.c(this.lmt, dVar.lmt) && Intrinsics.c(this.ext, dVar.ext);
    }

    public final String getCarrier() {
        return this.carrier;
    }

    public final c getExt() {
        return this.ext;
    }

    public final int getH() {
        return this.f60636h;
    }

    public final String getIfa() {
        return this.ifa;
    }

    public final Integer getLmt() {
        return this.lmt;
    }

    public final String getMake() {
        return this.make;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getOs() {
        return this.f60637os;
    }

    public final String getOsv() {
        return this.osv;
    }

    public final String getUa() {
        return this.f60638ua;
    }

    public final int getW() {
        return this.f60639w;
    }

    public int hashCode() {
        int iHashCode = ((((this.make.hashCode() * 31) + this.model.hashCode()) * 31) + this.osv.hashCode()) * 31;
        String str = this.carrier;
        int iHashCode2 = (((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f60637os.hashCode()) * 31) + this.f60639w) * 31) + this.f60636h) * 31;
        String str2 = this.f60638ua;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.ifa;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.lmt;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        c cVar = this.ext;
        return iHashCode5 + (cVar != null ? cVar.hashCode() : 0);
    }

    public final void setExt(c cVar) {
        this.ext = cVar;
    }

    public final void setH(int i11) {
        this.f60636h = i11;
    }

    public final void setIfa(String str) {
        this.ifa = str;
    }

    public final void setLmt(Integer num) {
        this.lmt = num;
    }

    public final void setUa(String str) {
        this.f60638ua = str;
    }

    public final void setW(int i11) {
        this.f60639w = i11;
    }

    public String toString() {
        return "DeviceNode(make=" + this.make + ", model=" + this.model + ", osv=" + this.osv + ", carrier=" + this.carrier + ", os=" + this.f60637os + ", w=" + this.f60639w + ", h=" + this.f60636h + ", ua=" + this.f60638ua + ", ifa=" + this.ifa + ", lmt=" + this.lmt + ", ext=" + this.ext + ')';
    }
}
