package com.vungle.ads.internal.model;

import com.cloud.config.utils.XLogUtil;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.util.n;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlin.text.Regex;
import kotlinx.serialization.ContextualSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.v0;
import kotlinx.serialization.internal.w1;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.s;
import kotlinx.serialization.json.x;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes7.dex */
public final class AdPayload {
    public static final e Companion = new e(null);
    public static final String FILE_SCHEME = "file://";
    public static final String INCENTIVIZED_BODY_TEXT = "INCENTIVIZED_BODY_TEXT";
    public static final String INCENTIVIZED_CLOSE_TEXT = "INCENTIVIZED_CLOSE_TEXT";
    public static final String INCENTIVIZED_CONTINUE_TEXT = "INCENTIVIZED_CONTINUE_TEXT";
    public static final String INCENTIVIZED_TITLE_TEXT = "INCENTIVIZED_TITLE_TEXT";
    public static final String KEY_TEMPLATE = "template";
    public static final String KEY_VM = "vmURL";
    public static final String TPAT_CLICK_COORDINATES_URLS = "video.clickCoordinates";
    private static final String UNKNOWN = "unknown";
    private com.vungle.ads.b adConfig;
    private final List<f> ads;
    private File assetDirectory;
    private boolean assetsFullyDownloaded;
    private final ConfigPayload config;
    private Map<String, String> incentivizedTextSettings;
    private n logEntry;
    private ConcurrentHashMap<String, String> mraidFiles;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.AdPayload", aVar, 5);
            pluginGeneratedSerialDescriptor.l(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, true);
            pluginGeneratedSerialDescriptor.l(XLogUtil.TAG, true);
            pluginGeneratedSerialDescriptor.l("mraidFiles", true);
            pluginGeneratedSerialDescriptor.l("incentivizedTextSettings", true);
            pluginGeneratedSerialDescriptor.l("assetsFullyDownloaded", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            kotlinx.serialization.b bVarS = d00.a.s(new kotlinx.serialization.internal.f(f.a.INSTANCE));
            kotlinx.serialization.b bVarS2 = d00.a.s(ConfigPayload.a.INSTANCE);
            KClass kClassB = Reflection.b(ConcurrentHashMap.class);
            b2 b2Var = b2.f68112a;
            return new kotlinx.serialization.b[]{bVarS, bVarS2, new ContextualSerializer(kClassB, null, new kotlinx.serialization.b[]{b2Var, b2Var}), new v0(b2Var, b2Var), kotlinx.serialization.internal.i.f68152a};
        }

        @Override // kotlinx.serialization.a
        public AdPayload deserialize(e00.e decoder) {
            Object objN;
            Object objY;
            Object objY2;
            boolean zC;
            int i11;
            Object objN2;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            e00.c cVarB = decoder.b(descriptor2);
            int i12 = 3;
            int i13 = 1;
            if (cVarB.p()) {
                objN = cVarB.n(descriptor2, 0, new kotlinx.serialization.internal.f(f.a.INSTANCE), null);
                objN2 = cVarB.n(descriptor2, 1, ConfigPayload.a.INSTANCE, null);
                KClass kClassB = Reflection.b(ConcurrentHashMap.class);
                b2 b2Var = b2.f68112a;
                objY = cVarB.y(descriptor2, 2, new ContextualSerializer(kClassB, null, new kotlinx.serialization.b[]{b2Var, b2Var}), null);
                objY2 = cVarB.y(descriptor2, 3, new v0(b2Var, b2Var), null);
                i11 = 31;
                zC = cVarB.C(descriptor2, 4);
            } else {
                boolean z10 = true;
                boolean zC2 = false;
                int i14 = 0;
                objN = null;
                Object objY3 = null;
                Object objY4 = null;
                Object objN3 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        int i15 = i13;
                        objN = cVarB.n(descriptor2, 0, new kotlinx.serialization.internal.f(f.a.INSTANCE), objN);
                        i14 |= i15;
                        i12 = 3;
                        i13 = i15;
                    } else if (iO == i13) {
                        objN3 = cVarB.n(descriptor2, 1, ConfigPayload.a.INSTANCE, objN3);
                        i14 |= 2;
                        i13 = 1;
                        i12 = 3;
                    } else if (iO == 2) {
                        KClass kClassB2 = Reflection.b(ConcurrentHashMap.class);
                        kotlinx.serialization.b[] bVarArr = new kotlinx.serialization.b[2];
                        b2 b2Var2 = b2.f68112a;
                        bVarArr[0] = b2Var2;
                        bVarArr[i13] = b2Var2;
                        objY3 = cVarB.y(descriptor2, 2, new ContextualSerializer(kClassB2, null, bVarArr), objY3);
                        i14 |= 4;
                        i12 = 3;
                        i13 = 1;
                    } else if (iO == i12) {
                        b2 b2Var3 = b2.f68112a;
                        objY4 = cVarB.y(descriptor2, i12, new v0(b2Var3, b2Var3), objY4);
                        i14 |= 8;
                    } else {
                        if (iO != 4) {
                            throw new UnknownFieldException(iO);
                        }
                        zC2 = cVarB.C(descriptor2, 4);
                        i14 |= 16;
                    }
                }
                objY = objY3;
                objY2 = objY4;
                zC = zC2;
                i11 = i14;
                objN2 = objN3;
            }
            cVarB.c(descriptor2);
            return new AdPayload(i11, (List) objN, (ConfigPayload) objN2, (ConcurrentHashMap) objY, (Map) objY2, zC, null);
        }

        @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.g
        public void serialize(e00.f encoder, AdPayload value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            e00.d dVarB = encoder.b(descriptor2);
            AdPayload.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    public static final class b {
        public static final C0708b Companion = new C0708b(null);
        private final Integer height;
        private final Integer width;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.AdPayload.AdSizeInfo", aVar, 2);
                pluginGeneratedSerialDescriptor.l("w", true);
                pluginGeneratedSerialDescriptor.l("h", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                r0 r0Var = r0.f68192a;
                return new kotlinx.serialization.b[]{d00.a.s(r0Var), d00.a.s(r0Var)};
            }

            @Override // kotlinx.serialization.a
            public b deserialize(e00.e decoder) {
                Object objN;
                int i11;
                Object objN2;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                w1 w1Var = null;
                if (cVarB.p()) {
                    r0 r0Var = r0.f68192a;
                    objN2 = cVarB.n(descriptor2, 0, r0Var, null);
                    objN = cVarB.n(descriptor2, 1, r0Var, null);
                    i11 = 3;
                } else {
                    boolean z10 = true;
                    int i12 = 0;
                    objN = null;
                    Object objN3 = null;
                    while (z10) {
                        int iO = cVarB.o(descriptor2);
                        if (iO == -1) {
                            z10 = false;
                        } else if (iO == 0) {
                            objN3 = cVarB.n(descriptor2, 0, r0.f68192a, objN3);
                            i12 |= 1;
                        } else {
                            if (iO != 1) {
                                throw new UnknownFieldException(iO);
                            }
                            objN = cVarB.n(descriptor2, 1, r0.f68192a, objN);
                            i12 |= 2;
                        }
                    }
                    i11 = i12;
                    objN2 = objN3;
                }
                cVarB.c(descriptor2);
                return new b(i11, (Integer) objN2, (Integer) objN, w1Var);
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

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.AdPayload$b$b, reason: collision with other inner class name */
        public static final class C0708b {
            private C0708b() {
            }

            public /* synthetic */ C0708b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final kotlinx.serialization.b serializer() {
                return a.INSTANCE;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b() {
            this((Integer) null, (Integer) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        @Deprecated
        public /* synthetic */ b(int i11, Integer num, Integer num2, w1 w1Var) {
            this.width = (i11 & 1) == 0 ? 0 : num;
            if ((i11 & 2) == 0) {
                this.height = 0;
            } else {
                this.height = num2;
            }
        }

        public b(Integer num, Integer num2) {
            this.width = num;
            this.height = num2;
        }

        public /* synthetic */ b(Integer num, Integer num2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 0 : num, (i11 & 2) != 0 ? 0 : num2);
        }

        public static /* synthetic */ b copy$default(b bVar, Integer num, Integer num2, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                num = bVar.width;
            }
            if ((i11 & 2) != 0) {
                num2 = bVar.height;
            }
            return bVar.copy(num, num2);
        }

        public static /* synthetic */ void getHeight$annotations() {
        }

        public static /* synthetic */ void getWidth$annotations() {
        }

        @JvmStatic
        public static final void write$Self(b self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Integer num;
            Integer num2;
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || (num2 = self.width) == null || num2.intValue() != 0) {
                output.i(serialDesc, 0, r0.f68192a, self.width);
            }
            if (output.z(serialDesc, 1) || (num = self.height) == null || num.intValue() != 0) {
                output.i(serialDesc, 1, r0.f68192a, self.height);
            }
        }

        public final Integer component1() {
            return this.width;
        }

        public final Integer component2() {
            return this.height;
        }

        public final b copy(Integer num, Integer num2) {
            return new b(num, num2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.width, bVar.width) && Intrinsics.c(this.height, bVar.height);
        }

        public final Integer getHeight() {
            return this.height;
        }

        public final Integer getWidth() {
            return this.width;
        }

        public int hashCode() {
            Integer num = this.width;
            int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
            Integer num2 = this.height;
            return iHashCode + (num2 != null ? num2.hashCode() : 0);
        }

        public String toString() {
            return "AdSizeInfo(width=" + this.width + ", height=" + this.height + ')';
        }
    }

    public static final class c {
        public static final b Companion = new b(null);
        private final Boolean adLoadOptimizationEnabled;
        private final String adMarketId;
        private final b adSizeInfo;
        private final String adSource;
        private final String adType;
        private final String advAppId;
        private final Boolean clickCoordinatesEnabled;
        private final String creativeId;
        private final String deeplinkUrl;
        private final Integer errorCode;
        private final Integer expiry;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private final String f60633id;
        private final String info;
        private final Boolean isCacheableAssetsRequired;
        private final List<String> loadAdUrls;
        private final String mediationName;
        private final List<String> notification;
        private final Integer showClose;
        private final Integer showCloseIncentivized;
        private final Integer sleep;
        private final Boolean templateHeartbeatCheck;
        private final g templateSettings;
        private final String templateType;
        private final String templateURL;
        private final Map<String, List<String>> tpat;
        private final i viewAbility;
        private final String vmURL;
        private final String vmVersion;
        private final k webViewSettings;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.AdPayload.AdUnit", aVar, 29);
                pluginGeneratedSerialDescriptor.l("id", true);
                pluginGeneratedSerialDescriptor.l("ad_type", true);
                pluginGeneratedSerialDescriptor.l("ad_source", true);
                pluginGeneratedSerialDescriptor.l("expiry", true);
                pluginGeneratedSerialDescriptor.l("deeplink_url", true);
                pluginGeneratedSerialDescriptor.l("click_coordinates_enabled", true);
                pluginGeneratedSerialDescriptor.l("ad_load_optimization", true);
                pluginGeneratedSerialDescriptor.l("template_heartbeat_check", true);
                pluginGeneratedSerialDescriptor.l("mediation_name", true);
                pluginGeneratedSerialDescriptor.l("info", true);
                pluginGeneratedSerialDescriptor.l("sleep", true);
                pluginGeneratedSerialDescriptor.l("error_code", true);
                pluginGeneratedSerialDescriptor.l("tpat", true);
                pluginGeneratedSerialDescriptor.l("vm_url", true);
                pluginGeneratedSerialDescriptor.l("vm_version", true);
                pluginGeneratedSerialDescriptor.l("ad_market_id", true);
                pluginGeneratedSerialDescriptor.l("notification", true);
                pluginGeneratedSerialDescriptor.l(com.vungle.ads.internal.b.LOAD_AD, true);
                pluginGeneratedSerialDescriptor.l("viewability", true);
                pluginGeneratedSerialDescriptor.l("template_url", true);
                pluginGeneratedSerialDescriptor.l("template_type", true);
                pluginGeneratedSerialDescriptor.l("template_settings", true);
                pluginGeneratedSerialDescriptor.l(CampaignEx.JSON_KEY_CREATIVE_ID, true);
                pluginGeneratedSerialDescriptor.l("app_id", true);
                pluginGeneratedSerialDescriptor.l("show_close", true);
                pluginGeneratedSerialDescriptor.l("show_close_incentivized", true);
                pluginGeneratedSerialDescriptor.l("ad_size", true);
                pluginGeneratedSerialDescriptor.l("cacheable_assets_required", true);
                pluginGeneratedSerialDescriptor.l("webview_settings", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                b2 b2Var = b2.f68112a;
                kotlinx.serialization.b bVarS = d00.a.s(b2Var);
                kotlinx.serialization.b bVarS2 = d00.a.s(b2Var);
                kotlinx.serialization.b bVarS3 = d00.a.s(b2Var);
                r0 r0Var = r0.f68192a;
                kotlinx.serialization.b bVarS4 = d00.a.s(r0Var);
                kotlinx.serialization.b bVarS5 = d00.a.s(b2Var);
                kotlinx.serialization.internal.i iVar = kotlinx.serialization.internal.i.f68152a;
                return new kotlinx.serialization.b[]{bVarS, bVarS2, bVarS3, bVarS4, bVarS5, d00.a.s(iVar), d00.a.s(iVar), d00.a.s(iVar), d00.a.s(b2Var), d00.a.s(b2Var), d00.a.s(r0Var), d00.a.s(r0Var), d00.a.s(h.INSTANCE), d00.a.s(b2Var), d00.a.s(b2Var), d00.a.s(b2Var), d00.a.s(new kotlinx.serialization.internal.f(b2Var)), d00.a.s(new kotlinx.serialization.internal.f(b2Var)), d00.a.s(i.a.INSTANCE), d00.a.s(b2Var), d00.a.s(b2Var), d00.a.s(g.a.INSTANCE), d00.a.s(b2Var), d00.a.s(b2Var), d00.a.s(r0Var), d00.a.s(r0Var), d00.a.s(b.a.INSTANCE), d00.a.s(iVar), d00.a.s(k.a.INSTANCE)};
            }

            /*  JADX ERROR: Type inference failed
                jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 24461. Try increasing type updates limit count.
                	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
                */
            @Override // kotlinx.serialization.a
            public com.vungle.ads.internal.model.AdPayload.c deserialize(e00.e r82) {
                /*
                    Method dump skipped, instruction units count: 2446
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.model.AdPayload.c.a.deserialize(e00.e):com.vungle.ads.internal.model.AdPayload$c");
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
            this((String) null, (String) null, (String) null, (Integer) null, (String) null, (Boolean) null, (Boolean) null, (Boolean) null, (String) null, (String) null, (Integer) null, (Integer) null, (Map) null, (String) null, (String) null, (String) null, (List) null, (List) null, (i) null, (String) null, (String) null, (g) null, (String) null, (String) null, (Integer) null, (Integer) null, (b) null, (Boolean) null, (k) null, 536870911, (DefaultConstructorMarker) null);
        }

        @Deprecated
        public /* synthetic */ c(int i11, String str, String str2, String str3, Integer num, String str4, Boolean bool, Boolean bool2, Boolean bool3, String str5, String str6, Integer num2, Integer num3, @kotlinx.serialization.f(with = h.class) Map map, String str7, String str8, String str9, List list, List list2, i iVar, String str10, String str11, g gVar, String str12, String str13, Integer num4, Integer num5, b bVar, Boolean bool4, k kVar, w1 w1Var) {
            if ((i11 & 1) == 0) {
                this.f60633id = null;
            } else {
                this.f60633id = str;
            }
            if ((i11 & 2) == 0) {
                this.adType = null;
            } else {
                this.adType = str2;
            }
            if ((i11 & 4) == 0) {
                this.adSource = null;
            } else {
                this.adSource = str3;
            }
            if ((i11 & 8) == 0) {
                this.expiry = null;
            } else {
                this.expiry = num;
            }
            if ((i11 & 16) == 0) {
                this.deeplinkUrl = null;
            } else {
                this.deeplinkUrl = str4;
            }
            if ((i11 & 32) == 0) {
                this.clickCoordinatesEnabled = null;
            } else {
                this.clickCoordinatesEnabled = bool;
            }
            if ((i11 & 64) == 0) {
                this.adLoadOptimizationEnabled = null;
            } else {
                this.adLoadOptimizationEnabled = bool2;
            }
            if ((i11 & 128) == 0) {
                this.templateHeartbeatCheck = null;
            } else {
                this.templateHeartbeatCheck = bool3;
            }
            if ((i11 & 256) == 0) {
                this.mediationName = null;
            } else {
                this.mediationName = str5;
            }
            if ((i11 & 512) == 0) {
                this.info = null;
            } else {
                this.info = str6;
            }
            if ((i11 & 1024) == 0) {
                this.sleep = null;
            } else {
                this.sleep = num2;
            }
            if ((i11 & 2048) == 0) {
                this.errorCode = null;
            } else {
                this.errorCode = num3;
            }
            if ((i11 & 4096) == 0) {
                this.tpat = null;
            } else {
                this.tpat = map;
            }
            if ((i11 & 8192) == 0) {
                this.vmURL = null;
            } else {
                this.vmURL = str7;
            }
            if ((i11 & 16384) == 0) {
                this.vmVersion = null;
            } else {
                this.vmVersion = str8;
            }
            if ((32768 & i11) == 0) {
                this.adMarketId = null;
            } else {
                this.adMarketId = str9;
            }
            if ((65536 & i11) == 0) {
                this.notification = null;
            } else {
                this.notification = list;
            }
            if ((131072 & i11) == 0) {
                this.loadAdUrls = null;
            } else {
                this.loadAdUrls = list2;
            }
            if ((262144 & i11) == 0) {
                this.viewAbility = null;
            } else {
                this.viewAbility = iVar;
            }
            if ((524288 & i11) == 0) {
                this.templateURL = null;
            } else {
                this.templateURL = str10;
            }
            if ((1048576 & i11) == 0) {
                this.templateType = null;
            } else {
                this.templateType = str11;
            }
            if ((2097152 & i11) == 0) {
                this.templateSettings = null;
            } else {
                this.templateSettings = gVar;
            }
            if ((4194304 & i11) == 0) {
                this.creativeId = null;
            } else {
                this.creativeId = str12;
            }
            if ((8388608 & i11) == 0) {
                this.advAppId = null;
            } else {
                this.advAppId = str13;
            }
            this.showClose = (16777216 & i11) == 0 ? 0 : num4;
            this.showCloseIncentivized = (33554432 & i11) == 0 ? 0 : num5;
            if ((67108864 & i11) == 0) {
                this.adSizeInfo = null;
            } else {
                this.adSizeInfo = bVar;
            }
            if ((134217728 & i11) == 0) {
                this.isCacheableAssetsRequired = null;
            } else {
                this.isCacheableAssetsRequired = bool4;
            }
            if ((i11 & ASTNode.DEOP) == 0) {
                this.webViewSettings = null;
            } else {
                this.webViewSettings = kVar;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public c(String str, String str2, String str3, Integer num, String str4, Boolean bool, Boolean bool2, Boolean bool3, String str5, String str6, Integer num2, Integer num3, Map<String, ? extends List<String>> map, String str7, String str8, String str9, List<String> list, List<String> list2, i iVar, String str10, String str11, g gVar, String str12, String str13, Integer num4, Integer num5, b bVar, Boolean bool4, k kVar) {
            this.f60633id = str;
            this.adType = str2;
            this.adSource = str3;
            this.expiry = num;
            this.deeplinkUrl = str4;
            this.clickCoordinatesEnabled = bool;
            this.adLoadOptimizationEnabled = bool2;
            this.templateHeartbeatCheck = bool3;
            this.mediationName = str5;
            this.info = str6;
            this.sleep = num2;
            this.errorCode = num3;
            this.tpat = map;
            this.vmURL = str7;
            this.vmVersion = str8;
            this.adMarketId = str9;
            this.notification = list;
            this.loadAdUrls = list2;
            this.viewAbility = iVar;
            this.templateURL = str10;
            this.templateType = str11;
            this.templateSettings = gVar;
            this.creativeId = str12;
            this.advAppId = str13;
            this.showClose = num4;
            this.showCloseIncentivized = num5;
            this.adSizeInfo = bVar;
            this.isCacheableAssetsRequired = bool4;
            this.webViewSettings = kVar;
        }

        public /* synthetic */ c(String str, String str2, String str3, Integer num, String str4, Boolean bool, Boolean bool2, Boolean bool3, String str5, String str6, Integer num2, Integer num3, Map map, String str7, String str8, String str9, List list, List list2, i iVar, String str10, String str11, g gVar, String str12, String str13, Integer num4, Integer num5, b bVar, Boolean bool4, k kVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : num, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : bool, (i11 & 64) != 0 ? null : bool2, (i11 & 128) != 0 ? null : bool3, (i11 & 256) != 0 ? null : str5, (i11 & 512) != 0 ? null : str6, (i11 & 1024) != 0 ? null : num2, (i11 & 2048) != 0 ? null : num3, (i11 & 4096) != 0 ? null : map, (i11 & 8192) != 0 ? null : str7, (i11 & 16384) != 0 ? null : str8, (i11 & 32768) != 0 ? null : str9, (i11 & 65536) != 0 ? null : list, (i11 & 131072) != 0 ? null : list2, (i11 & 262144) != 0 ? null : iVar, (i11 & 524288) != 0 ? null : str10, (i11 & 1048576) != 0 ? null : str11, (i11 & 2097152) != 0 ? null : gVar, (i11 & 4194304) != 0 ? null : str12, (i11 & 8388608) != 0 ? null : str13, (i11 & 16777216) != 0 ? 0 : num4, (i11 & ASTNode.PCTX_STORED) != 0 ? 0 : num5, (i11 & 67108864) != 0 ? null : bVar, (i11 & ASTNode.NOJIT) != 0 ? null : bool4, (i11 & ASTNode.DEOP) != 0 ? null : kVar);
        }

        public static /* synthetic */ void getAdLoadOptimizationEnabled$annotations() {
        }

        public static /* synthetic */ void getAdMarketId$annotations() {
        }

        public static /* synthetic */ void getAdSizeInfo$annotations() {
        }

        public static /* synthetic */ void getAdSource$annotations() {
        }

        public static /* synthetic */ void getAdType$annotations() {
        }

        public static /* synthetic */ void getAdvAppId$annotations() {
        }

        public static /* synthetic */ void getClickCoordinatesEnabled$annotations() {
        }

        public static /* synthetic */ void getCreativeId$annotations() {
        }

        public static /* synthetic */ void getDeeplinkUrl$annotations() {
        }

        public static /* synthetic */ void getErrorCode$annotations() {
        }

        public static /* synthetic */ void getExpiry$annotations() {
        }

        public static /* synthetic */ void getId$annotations() {
        }

        public static /* synthetic */ void getInfo$annotations() {
        }

        public static /* synthetic */ void getLoadAdUrls$annotations() {
        }

        public static /* synthetic */ void getMediationName$annotations() {
        }

        public static /* synthetic */ void getNotification$annotations() {
        }

        public static /* synthetic */ void getShowClose$annotations() {
        }

        public static /* synthetic */ void getShowCloseIncentivized$annotations() {
        }

        public static /* synthetic */ void getSleep$annotations() {
        }

        public static /* synthetic */ void getTemplateHeartbeatCheck$annotations() {
        }

        public static /* synthetic */ void getTemplateSettings$annotations() {
        }

        public static /* synthetic */ void getTemplateType$annotations() {
        }

        public static /* synthetic */ void getTemplateURL$annotations() {
        }

        @kotlinx.serialization.f(with = h.class)
        public static /* synthetic */ void getTpat$annotations() {
        }

        public static /* synthetic */ void getViewAbility$annotations() {
        }

        public static /* synthetic */ void getVmURL$annotations() {
        }

        public static /* synthetic */ void getVmVersion$annotations() {
        }

        public static /* synthetic */ void getWebViewSettings$annotations() {
        }

        public static /* synthetic */ void isCacheableAssetsRequired$annotations() {
        }

        @JvmStatic
        public static final void write$Self(c self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Integer num;
            Integer num2;
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.f60633id != null) {
                output.i(serialDesc, 0, b2.f68112a, self.f60633id);
            }
            if (output.z(serialDesc, 1) || self.adType != null) {
                output.i(serialDesc, 1, b2.f68112a, self.adType);
            }
            if (output.z(serialDesc, 2) || self.adSource != null) {
                output.i(serialDesc, 2, b2.f68112a, self.adSource);
            }
            if (output.z(serialDesc, 3) || self.expiry != null) {
                output.i(serialDesc, 3, r0.f68192a, self.expiry);
            }
            if (output.z(serialDesc, 4) || self.deeplinkUrl != null) {
                output.i(serialDesc, 4, b2.f68112a, self.deeplinkUrl);
            }
            if (output.z(serialDesc, 5) || self.clickCoordinatesEnabled != null) {
                output.i(serialDesc, 5, kotlinx.serialization.internal.i.f68152a, self.clickCoordinatesEnabled);
            }
            if (output.z(serialDesc, 6) || self.adLoadOptimizationEnabled != null) {
                output.i(serialDesc, 6, kotlinx.serialization.internal.i.f68152a, self.adLoadOptimizationEnabled);
            }
            if (output.z(serialDesc, 7) || self.templateHeartbeatCheck != null) {
                output.i(serialDesc, 7, kotlinx.serialization.internal.i.f68152a, self.templateHeartbeatCheck);
            }
            if (output.z(serialDesc, 8) || self.mediationName != null) {
                output.i(serialDesc, 8, b2.f68112a, self.mediationName);
            }
            if (output.z(serialDesc, 9) || self.info != null) {
                output.i(serialDesc, 9, b2.f68112a, self.info);
            }
            if (output.z(serialDesc, 10) || self.sleep != null) {
                output.i(serialDesc, 10, r0.f68192a, self.sleep);
            }
            if (output.z(serialDesc, 11) || self.errorCode != null) {
                output.i(serialDesc, 11, r0.f68192a, self.errorCode);
            }
            if (output.z(serialDesc, 12) || self.tpat != null) {
                output.i(serialDesc, 12, h.INSTANCE, self.tpat);
            }
            if (output.z(serialDesc, 13) || self.vmURL != null) {
                output.i(serialDesc, 13, b2.f68112a, self.vmURL);
            }
            if (output.z(serialDesc, 14) || self.vmVersion != null) {
                output.i(serialDesc, 14, b2.f68112a, self.vmVersion);
            }
            if (output.z(serialDesc, 15) || self.adMarketId != null) {
                output.i(serialDesc, 15, b2.f68112a, self.adMarketId);
            }
            if (output.z(serialDesc, 16) || self.notification != null) {
                output.i(serialDesc, 16, new kotlinx.serialization.internal.f(b2.f68112a), self.notification);
            }
            if (output.z(serialDesc, 17) || self.loadAdUrls != null) {
                output.i(serialDesc, 17, new kotlinx.serialization.internal.f(b2.f68112a), self.loadAdUrls);
            }
            if (output.z(serialDesc, 18) || self.viewAbility != null) {
                output.i(serialDesc, 18, i.a.INSTANCE, self.viewAbility);
            }
            if (output.z(serialDesc, 19) || self.templateURL != null) {
                output.i(serialDesc, 19, b2.f68112a, self.templateURL);
            }
            if (output.z(serialDesc, 20) || self.templateType != null) {
                output.i(serialDesc, 20, b2.f68112a, self.templateType);
            }
            if (output.z(serialDesc, 21) || self.templateSettings != null) {
                output.i(serialDesc, 21, g.a.INSTANCE, self.templateSettings);
            }
            if (output.z(serialDesc, 22) || self.creativeId != null) {
                output.i(serialDesc, 22, b2.f68112a, self.creativeId);
            }
            if (output.z(serialDesc, 23) || self.advAppId != null) {
                output.i(serialDesc, 23, b2.f68112a, self.advAppId);
            }
            if (output.z(serialDesc, 24) || (num2 = self.showClose) == null || num2.intValue() != 0) {
                output.i(serialDesc, 24, r0.f68192a, self.showClose);
            }
            if (output.z(serialDesc, 25) || (num = self.showCloseIncentivized) == null || num.intValue() != 0) {
                output.i(serialDesc, 25, r0.f68192a, self.showCloseIncentivized);
            }
            if (output.z(serialDesc, 26) || self.adSizeInfo != null) {
                output.i(serialDesc, 26, b.a.INSTANCE, self.adSizeInfo);
            }
            if (output.z(serialDesc, 27) || self.isCacheableAssetsRequired != null) {
                output.i(serialDesc, 27, kotlinx.serialization.internal.i.f68152a, self.isCacheableAssetsRequired);
            }
            if (!output.z(serialDesc, 28) && self.webViewSettings == null) {
                return;
            }
            output.i(serialDesc, 28, k.a.INSTANCE, self.webViewSettings);
        }

        public final String component1() {
            return this.f60633id;
        }

        public final String component10() {
            return this.info;
        }

        public final Integer component11() {
            return this.sleep;
        }

        public final Integer component12() {
            return this.errorCode;
        }

        public final Map<String, List<String>> component13() {
            return this.tpat;
        }

        public final String component14() {
            return this.vmURL;
        }

        public final String component15() {
            return this.vmVersion;
        }

        public final String component16() {
            return this.adMarketId;
        }

        public final List<String> component17() {
            return this.notification;
        }

        public final List<String> component18() {
            return this.loadAdUrls;
        }

        public final i component19() {
            return this.viewAbility;
        }

        public final String component2() {
            return this.adType;
        }

        public final String component20() {
            return this.templateURL;
        }

        public final String component21() {
            return this.templateType;
        }

        public final g component22() {
            return this.templateSettings;
        }

        public final String component23() {
            return this.creativeId;
        }

        public final String component24() {
            return this.advAppId;
        }

        public final Integer component25() {
            return this.showClose;
        }

        public final Integer component26() {
            return this.showCloseIncentivized;
        }

        public final b component27() {
            return this.adSizeInfo;
        }

        public final Boolean component28() {
            return this.isCacheableAssetsRequired;
        }

        public final k component29() {
            return this.webViewSettings;
        }

        public final String component3() {
            return this.adSource;
        }

        public final Integer component4() {
            return this.expiry;
        }

        public final String component5() {
            return this.deeplinkUrl;
        }

        public final Boolean component6() {
            return this.clickCoordinatesEnabled;
        }

        public final Boolean component7() {
            return this.adLoadOptimizationEnabled;
        }

        public final Boolean component8() {
            return this.templateHeartbeatCheck;
        }

        public final String component9() {
            return this.mediationName;
        }

        public final c copy(String str, String str2, String str3, Integer num, String str4, Boolean bool, Boolean bool2, Boolean bool3, String str5, String str6, Integer num2, Integer num3, Map<String, ? extends List<String>> map, String str7, String str8, String str9, List<String> list, List<String> list2, i iVar, String str10, String str11, g gVar, String str12, String str13, Integer num4, Integer num5, b bVar, Boolean bool4, k kVar) {
            return new c(str, str2, str3, num, str4, bool, bool2, bool3, str5, str6, num2, num3, map, str7, str8, str9, list, list2, iVar, str10, str11, gVar, str12, str13, num4, num5, bVar, bool4, kVar);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.c(this.f60633id, cVar.f60633id) && Intrinsics.c(this.adType, cVar.adType) && Intrinsics.c(this.adSource, cVar.adSource) && Intrinsics.c(this.expiry, cVar.expiry) && Intrinsics.c(this.deeplinkUrl, cVar.deeplinkUrl) && Intrinsics.c(this.clickCoordinatesEnabled, cVar.clickCoordinatesEnabled) && Intrinsics.c(this.adLoadOptimizationEnabled, cVar.adLoadOptimizationEnabled) && Intrinsics.c(this.templateHeartbeatCheck, cVar.templateHeartbeatCheck) && Intrinsics.c(this.mediationName, cVar.mediationName) && Intrinsics.c(this.info, cVar.info) && Intrinsics.c(this.sleep, cVar.sleep) && Intrinsics.c(this.errorCode, cVar.errorCode) && Intrinsics.c(this.tpat, cVar.tpat) && Intrinsics.c(this.vmURL, cVar.vmURL) && Intrinsics.c(this.vmVersion, cVar.vmVersion) && Intrinsics.c(this.adMarketId, cVar.adMarketId) && Intrinsics.c(this.notification, cVar.notification) && Intrinsics.c(this.loadAdUrls, cVar.loadAdUrls) && Intrinsics.c(this.viewAbility, cVar.viewAbility) && Intrinsics.c(this.templateURL, cVar.templateURL) && Intrinsics.c(this.templateType, cVar.templateType) && Intrinsics.c(this.templateSettings, cVar.templateSettings) && Intrinsics.c(this.creativeId, cVar.creativeId) && Intrinsics.c(this.advAppId, cVar.advAppId) && Intrinsics.c(this.showClose, cVar.showClose) && Intrinsics.c(this.showCloseIncentivized, cVar.showCloseIncentivized) && Intrinsics.c(this.adSizeInfo, cVar.adSizeInfo) && Intrinsics.c(this.isCacheableAssetsRequired, cVar.isCacheableAssetsRequired) && Intrinsics.c(this.webViewSettings, cVar.webViewSettings);
        }

        public final Boolean getAdLoadOptimizationEnabled() {
            return this.adLoadOptimizationEnabled;
        }

        public final String getAdMarketId() {
            return this.adMarketId;
        }

        public final b getAdSizeInfo() {
            return this.adSizeInfo;
        }

        public final String getAdSource() {
            return this.adSource;
        }

        public final String getAdType() {
            return this.adType;
        }

        public final String getAdvAppId() {
            return this.advAppId;
        }

        public final Boolean getClickCoordinatesEnabled() {
            return this.clickCoordinatesEnabled;
        }

        public final String getCreativeId() {
            return this.creativeId;
        }

        public final String getDeeplinkUrl() {
            return this.deeplinkUrl;
        }

        public final Integer getErrorCode() {
            return this.errorCode;
        }

        public final Integer getExpiry() {
            return this.expiry;
        }

        public final String getId() {
            return this.f60633id;
        }

        public final String getInfo() {
            return this.info;
        }

        public final List<String> getLoadAdUrls() {
            return this.loadAdUrls;
        }

        public final String getMediationName() {
            return this.mediationName;
        }

        public final List<String> getNotification() {
            return this.notification;
        }

        public final Integer getShowClose() {
            return this.showClose;
        }

        public final Integer getShowCloseIncentivized() {
            return this.showCloseIncentivized;
        }

        public final Integer getSleep() {
            return this.sleep;
        }

        public final Boolean getTemplateHeartbeatCheck() {
            return this.templateHeartbeatCheck;
        }

        public final g getTemplateSettings() {
            return this.templateSettings;
        }

        public final String getTemplateType() {
            return this.templateType;
        }

        public final String getTemplateURL() {
            return this.templateURL;
        }

        public final Map<String, List<String>> getTpat() {
            return this.tpat;
        }

        public final i getViewAbility() {
            return this.viewAbility;
        }

        public final String getVmURL() {
            return this.vmURL;
        }

        public final String getVmVersion() {
            return this.vmVersion;
        }

        public final k getWebViewSettings() {
            return this.webViewSettings;
        }

        public int hashCode() {
            String str = this.f60633id;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.adType;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.adSource;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            Integer num = this.expiry;
            int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
            String str4 = this.deeplinkUrl;
            int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Boolean bool = this.clickCoordinatesEnabled;
            int iHashCode6 = (iHashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
            Boolean bool2 = this.adLoadOptimizationEnabled;
            int iHashCode7 = (iHashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
            Boolean bool3 = this.templateHeartbeatCheck;
            int iHashCode8 = (iHashCode7 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
            String str5 = this.mediationName;
            int iHashCode9 = (iHashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.info;
            int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
            Integer num2 = this.sleep;
            int iHashCode11 = (iHashCode10 + (num2 == null ? 0 : num2.hashCode())) * 31;
            Integer num3 = this.errorCode;
            int iHashCode12 = (iHashCode11 + (num3 == null ? 0 : num3.hashCode())) * 31;
            Map<String, List<String>> map = this.tpat;
            int iHashCode13 = (iHashCode12 + (map == null ? 0 : map.hashCode())) * 31;
            String str7 = this.vmURL;
            int iHashCode14 = (iHashCode13 + (str7 == null ? 0 : str7.hashCode())) * 31;
            String str8 = this.vmVersion;
            int iHashCode15 = (iHashCode14 + (str8 == null ? 0 : str8.hashCode())) * 31;
            String str9 = this.adMarketId;
            int iHashCode16 = (iHashCode15 + (str9 == null ? 0 : str9.hashCode())) * 31;
            List<String> list = this.notification;
            int iHashCode17 = (iHashCode16 + (list == null ? 0 : list.hashCode())) * 31;
            List<String> list2 = this.loadAdUrls;
            int iHashCode18 = (iHashCode17 + (list2 == null ? 0 : list2.hashCode())) * 31;
            i iVar = this.viewAbility;
            int iHashCode19 = (iHashCode18 + (iVar == null ? 0 : iVar.hashCode())) * 31;
            String str10 = this.templateURL;
            int iHashCode20 = (iHashCode19 + (str10 == null ? 0 : str10.hashCode())) * 31;
            String str11 = this.templateType;
            int iHashCode21 = (iHashCode20 + (str11 == null ? 0 : str11.hashCode())) * 31;
            g gVar = this.templateSettings;
            int iHashCode22 = (iHashCode21 + (gVar == null ? 0 : gVar.hashCode())) * 31;
            String str12 = this.creativeId;
            int iHashCode23 = (iHashCode22 + (str12 == null ? 0 : str12.hashCode())) * 31;
            String str13 = this.advAppId;
            int iHashCode24 = (iHashCode23 + (str13 == null ? 0 : str13.hashCode())) * 31;
            Integer num4 = this.showClose;
            int iHashCode25 = (iHashCode24 + (num4 == null ? 0 : num4.hashCode())) * 31;
            Integer num5 = this.showCloseIncentivized;
            int iHashCode26 = (iHashCode25 + (num5 == null ? 0 : num5.hashCode())) * 31;
            b bVar = this.adSizeInfo;
            int iHashCode27 = (iHashCode26 + (bVar == null ? 0 : bVar.hashCode())) * 31;
            Boolean bool4 = this.isCacheableAssetsRequired;
            int iHashCode28 = (iHashCode27 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
            k kVar = this.webViewSettings;
            return iHashCode28 + (kVar != null ? kVar.hashCode() : 0);
        }

        public final Boolean isCacheableAssetsRequired() {
            return this.isCacheableAssetsRequired;
        }

        public String toString() {
            return "AdUnit(id=" + this.f60633id + ", adType=" + this.adType + ", adSource=" + this.adSource + ", expiry=" + this.expiry + ", deeplinkUrl=" + this.deeplinkUrl + ", clickCoordinatesEnabled=" + this.clickCoordinatesEnabled + ", adLoadOptimizationEnabled=" + this.adLoadOptimizationEnabled + ", templateHeartbeatCheck=" + this.templateHeartbeatCheck + ", mediationName=" + this.mediationName + ", info=" + this.info + ", sleep=" + this.sleep + ", errorCode=" + this.errorCode + ", tpat=" + this.tpat + ", vmURL=" + this.vmURL + ", vmVersion=" + this.vmVersion + ", adMarketId=" + this.adMarketId + ", notification=" + this.notification + ", loadAdUrls=" + this.loadAdUrls + ", viewAbility=" + this.viewAbility + ", templateURL=" + this.templateURL + ", templateType=" + this.templateType + ", templateSettings=" + this.templateSettings + ", creativeId=" + this.creativeId + ", advAppId=" + this.advAppId + ", showClose=" + this.showClose + ", showCloseIncentivized=" + this.showCloseIncentivized + ", adSizeInfo=" + this.adSizeInfo + ", isCacheableAssetsRequired=" + this.isCacheableAssetsRequired + ", webViewSettings=" + this.webViewSettings + ')';
        }
    }

    public static final class d {
        public static final b Companion = new b(null);
        private final String extension;
        private final Boolean required;
        private final String url;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.AdPayload.CacheableReplacement", aVar, 3);
                pluginGeneratedSerialDescriptor.l("url", true);
                pluginGeneratedSerialDescriptor.l("extension", true);
                pluginGeneratedSerialDescriptor.l("required", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                b2 b2Var = b2.f68112a;
                return new kotlinx.serialization.b[]{d00.a.s(b2Var), d00.a.s(b2Var), d00.a.s(kotlinx.serialization.internal.i.f68152a)};
            }

            @Override // kotlinx.serialization.a
            public d deserialize(e00.e decoder) {
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
                    objN2 = cVarB.n(descriptor2, 2, kotlinx.serialization.internal.i.f68152a, null);
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
                            objN6 = cVarB.n(descriptor2, 2, kotlinx.serialization.internal.i.f68152a, objN6);
                            i12 |= 4;
                        }
                    }
                    i11 = i12;
                    objN = objN5;
                    objN2 = objN6;
                }
                cVarB.c(descriptor2);
                return new d(i11, (String) objN3, (String) objN, (Boolean) objN2, (w1) null);
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

        public d() {
            this((String) null, (String) null, (Boolean) null, 7, (DefaultConstructorMarker) null);
        }

        @Deprecated
        public /* synthetic */ d(int i11, String str, String str2, Boolean bool, w1 w1Var) {
            if ((i11 & 1) == 0) {
                this.url = null;
            } else {
                this.url = str;
            }
            if ((i11 & 2) == 0) {
                this.extension = null;
            } else {
                this.extension = str2;
            }
            if ((i11 & 4) == 0) {
                this.required = null;
            } else {
                this.required = bool;
            }
        }

        public d(String str, String str2, Boolean bool) {
            this.url = str;
            this.extension = str2;
            this.required = bool;
        }

        public /* synthetic */ d(String str, String str2, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : bool);
        }

        public static /* synthetic */ d copy$default(d dVar, String str, String str2, Boolean bool, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = dVar.url;
            }
            if ((i11 & 2) != 0) {
                str2 = dVar.extension;
            }
            if ((i11 & 4) != 0) {
                bool = dVar.required;
            }
            return dVar.copy(str, str2, bool);
        }

        @JvmStatic
        public static final void write$Self(d self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.url != null) {
                output.i(serialDesc, 0, b2.f68112a, self.url);
            }
            if (output.z(serialDesc, 1) || self.extension != null) {
                output.i(serialDesc, 1, b2.f68112a, self.extension);
            }
            if (!output.z(serialDesc, 2) && self.required == null) {
                return;
            }
            output.i(serialDesc, 2, kotlinx.serialization.internal.i.f68152a, self.required);
        }

        public final String component1() {
            return this.url;
        }

        public final String component2() {
            return this.extension;
        }

        public final Boolean component3() {
            return this.required;
        }

        public final d copy(String str, String str2, Boolean bool) {
            return new d(str, str2, bool);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return Intrinsics.c(this.url, dVar.url) && Intrinsics.c(this.extension, dVar.extension) && Intrinsics.c(this.required, dVar.required);
        }

        public final String getExtension() {
            return this.extension;
        }

        public final Boolean getRequired() {
            return this.required;
        }

        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            String str = this.url;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.extension;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            Boolean bool = this.required;
            return iHashCode2 + (bool != null ? bool.hashCode() : 0);
        }

        public String toString() {
            return "CacheableReplacement(url=" + this.url + ", extension=" + this.extension + ", required=" + this.required + ')';
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
        private final c adMarkup;
        private final String placementReferenceId;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.AdPayload.PlacementAdUnit", aVar, 2);
                pluginGeneratedSerialDescriptor.l("placement_reference_id", true);
                pluginGeneratedSerialDescriptor.l("ad_markup", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                return new kotlinx.serialization.b[]{d00.a.s(b2.f68112a), d00.a.s(c.a.INSTANCE)};
            }

            @Override // kotlinx.serialization.a
            public f deserialize(e00.e decoder) {
                Object objN;
                Object objN2;
                int i11;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                w1 w1Var = null;
                if (cVarB.p()) {
                    objN = cVarB.n(descriptor2, 0, b2.f68112a, null);
                    objN2 = cVarB.n(descriptor2, 1, c.a.INSTANCE, null);
                    i11 = 3;
                } else {
                    boolean z10 = true;
                    int i12 = 0;
                    objN = null;
                    Object objN3 = null;
                    while (z10) {
                        int iO = cVarB.o(descriptor2);
                        if (iO == -1) {
                            z10 = false;
                        } else if (iO == 0) {
                            objN = cVarB.n(descriptor2, 0, b2.f68112a, objN);
                            i12 |= 1;
                        } else {
                            if (iO != 1) {
                                throw new UnknownFieldException(iO);
                            }
                            objN3 = cVarB.n(descriptor2, 1, c.a.INSTANCE, objN3);
                            i12 |= 2;
                        }
                    }
                    objN2 = objN3;
                    i11 = i12;
                }
                cVarB.c(descriptor2);
                return new f(i11, (String) objN, (c) objN2, w1Var);
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

        /* JADX WARN: Multi-variable type inference failed */
        public f() {
            this((String) null, (c) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        @Deprecated
        public /* synthetic */ f(int i11, String str, c cVar, w1 w1Var) {
            if ((i11 & 1) == 0) {
                this.placementReferenceId = null;
            } else {
                this.placementReferenceId = str;
            }
            if ((i11 & 2) == 0) {
                this.adMarkup = null;
            } else {
                this.adMarkup = cVar;
            }
        }

        public f(String str, c cVar) {
            this.placementReferenceId = str;
            this.adMarkup = cVar;
        }

        public /* synthetic */ f(String str, c cVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : cVar);
        }

        public static /* synthetic */ f copy$default(f fVar, String str, c cVar, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = fVar.placementReferenceId;
            }
            if ((i11 & 2) != 0) {
                cVar = fVar.adMarkup;
            }
            return fVar.copy(str, cVar);
        }

        public static /* synthetic */ void getAdMarkup$annotations() {
        }

        public static /* synthetic */ void getPlacementReferenceId$annotations() {
        }

        @JvmStatic
        public static final void write$Self(f self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.placementReferenceId != null) {
                output.i(serialDesc, 0, b2.f68112a, self.placementReferenceId);
            }
            if (!output.z(serialDesc, 1) && self.adMarkup == null) {
                return;
            }
            output.i(serialDesc, 1, c.a.INSTANCE, self.adMarkup);
        }

        public final String component1() {
            return this.placementReferenceId;
        }

        public final c component2() {
            return this.adMarkup;
        }

        public final f copy(String str, c cVar) {
            return new f(str, cVar);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return Intrinsics.c(this.placementReferenceId, fVar.placementReferenceId) && Intrinsics.c(this.adMarkup, fVar.adMarkup);
        }

        public final c getAdMarkup() {
            return this.adMarkup;
        }

        public final String getPlacementReferenceId() {
            return this.placementReferenceId;
        }

        public int hashCode() {
            String str = this.placementReferenceId;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            c cVar = this.adMarkup;
            return iHashCode + (cVar != null ? cVar.hashCode() : 0);
        }

        public String toString() {
            return "PlacementAdUnit(placementReferenceId=" + this.placementReferenceId + ", adMarkup=" + this.adMarkup + ')';
        }
    }

    public static final class g {
        public static final b Companion = new b(null);
        private final Map<String, d> cacheableReplacements;
        private final Map<String, String> normalReplacements;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.AdPayload.TemplateSettings", aVar, 2);
                pluginGeneratedSerialDescriptor.l("normal_replacements", true);
                pluginGeneratedSerialDescriptor.l("cacheable_replacements", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                b2 b2Var = b2.f68112a;
                return new kotlinx.serialization.b[]{d00.a.s(new v0(b2Var, b2Var)), d00.a.s(new v0(b2Var, d.a.INSTANCE))};
            }

            @Override // kotlinx.serialization.a
            public g deserialize(e00.e decoder) {
                Object objN;
                Object objN2;
                int i11;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                w1 w1Var = null;
                if (cVarB.p()) {
                    b2 b2Var = b2.f68112a;
                    objN = cVarB.n(descriptor2, 0, new v0(b2Var, b2Var), null);
                    objN2 = cVarB.n(descriptor2, 1, new v0(b2Var, d.a.INSTANCE), null);
                    i11 = 3;
                } else {
                    boolean z10 = true;
                    int i12 = 0;
                    objN = null;
                    Object objN3 = null;
                    while (z10) {
                        int iO = cVarB.o(descriptor2);
                        if (iO == -1) {
                            z10 = false;
                        } else if (iO == 0) {
                            b2 b2Var2 = b2.f68112a;
                            objN = cVarB.n(descriptor2, 0, new v0(b2Var2, b2Var2), objN);
                            i12 |= 1;
                        } else {
                            if (iO != 1) {
                                throw new UnknownFieldException(iO);
                            }
                            objN3 = cVarB.n(descriptor2, 1, new v0(b2.f68112a, d.a.INSTANCE), objN3);
                            i12 |= 2;
                        }
                    }
                    objN2 = objN3;
                    i11 = i12;
                }
                cVarB.c(descriptor2);
                return new g(i11, (Map) objN, (Map) objN2, w1Var);
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

        /* JADX WARN: Multi-variable type inference failed */
        public g() {
            this((Map) null, (Map) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        @Deprecated
        public /* synthetic */ g(int i11, Map map, Map map2, w1 w1Var) {
            if ((i11 & 1) == 0) {
                this.normalReplacements = null;
            } else {
                this.normalReplacements = map;
            }
            if ((i11 & 2) == 0) {
                this.cacheableReplacements = null;
            } else {
                this.cacheableReplacements = map2;
            }
        }

        public g(Map<String, String> map, Map<String, d> map2) {
            this.normalReplacements = map;
            this.cacheableReplacements = map2;
        }

        public /* synthetic */ g(Map map, Map map2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : map, (i11 & 2) != 0 ? null : map2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ g copy$default(g gVar, Map map, Map map2, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                map = gVar.normalReplacements;
            }
            if ((i11 & 2) != 0) {
                map2 = gVar.cacheableReplacements;
            }
            return gVar.copy(map, map2);
        }

        public static /* synthetic */ void getCacheableReplacements$annotations() {
        }

        public static /* synthetic */ void getNormalReplacements$annotations() {
        }

        @JvmStatic
        public static final void write$Self(g self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.normalReplacements != null) {
                b2 b2Var = b2.f68112a;
                output.i(serialDesc, 0, new v0(b2Var, b2Var), self.normalReplacements);
            }
            if (!output.z(serialDesc, 1) && self.cacheableReplacements == null) {
                return;
            }
            output.i(serialDesc, 1, new v0(b2.f68112a, d.a.INSTANCE), self.cacheableReplacements);
        }

        public final Map<String, String> component1() {
            return this.normalReplacements;
        }

        public final Map<String, d> component2() {
            return this.cacheableReplacements;
        }

        public final g copy(Map<String, String> map, Map<String, d> map2) {
            return new g(map, map2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return Intrinsics.c(this.normalReplacements, gVar.normalReplacements) && Intrinsics.c(this.cacheableReplacements, gVar.cacheableReplacements);
        }

        public final Map<String, d> getCacheableReplacements() {
            return this.cacheableReplacements;
        }

        public final Map<String, String> getNormalReplacements() {
            return this.normalReplacements;
        }

        public int hashCode() {
            Map<String, String> map = this.normalReplacements;
            int iHashCode = (map == null ? 0 : map.hashCode()) * 31;
            Map<String, d> map2 = this.cacheableReplacements;
            return iHashCode + (map2 != null ? map2.hashCode() : 0);
        }

        public String toString() {
            return "TemplateSettings(normalReplacements=" + this.normalReplacements + ", cacheableReplacements=" + this.cacheableReplacements + ')';
        }
    }

    public static final class h extends x {
        public static final h INSTANCE = new h();

        /* JADX WARN: Illegal instructions before constructor call */
        private h() {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            super(d00.a.k(d00.a.G(stringCompanionObject), d00.a.h(d00.a.G(stringCompanionObject))));
        }

        @Override // kotlinx.serialization.json.x
        protected kotlinx.serialization.json.h transformDeserialize(kotlinx.serialization.json.h element) {
            Intrinsics.h(element, "element");
            JsonObject jsonObjectK = kotlinx.serialization.json.j.k(element);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : jsonObjectK.entrySet()) {
                if (!Intrinsics.c((String) entry.getKey(), "moat")) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            return new JsonObject(linkedHashMap);
        }
    }

    public static final class i {
        public static final b Companion = new b(null);

        /* JADX INFO: renamed from: om, reason: collision with root package name */
        private final j f60634om;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.AdPayload.ViewAbility", aVar, 1);
                pluginGeneratedSerialDescriptor.l("om", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                return new kotlinx.serialization.b[]{d00.a.s(j.a.INSTANCE)};
            }

            @Override // kotlinx.serialization.a
            public i deserialize(e00.e decoder) {
                Object objN;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                int i11 = 1;
                w1 w1Var = null;
                if (cVarB.p()) {
                    objN = cVarB.n(descriptor2, 0, j.a.INSTANCE, null);
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
                            objN = cVarB.n(descriptor2, 0, j.a.INSTANCE, objN);
                            i12 = 1;
                        }
                    }
                    i11 = i12;
                }
                cVarB.c(descriptor2);
                return new i(i11, (j) objN, w1Var);
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

        /* JADX WARN: Multi-variable type inference failed */
        public i() {
            this((j) null, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        @Deprecated
        public /* synthetic */ i(int i11, j jVar, w1 w1Var) {
            if ((i11 & 1) == 0) {
                this.f60634om = null;
            } else {
                this.f60634om = jVar;
            }
        }

        public i(j jVar) {
            this.f60634om = jVar;
        }

        public /* synthetic */ i(j jVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : jVar);
        }

        public static /* synthetic */ i copy$default(i iVar, j jVar, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                jVar = iVar.f60634om;
            }
            return iVar.copy(jVar);
        }

        @JvmStatic
        public static final void write$Self(i self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (!output.z(serialDesc, 0) && self.f60634om == null) {
                return;
            }
            output.i(serialDesc, 0, j.a.INSTANCE, self.f60634om);
        }

        public final j component1() {
            return this.f60634om;
        }

        public final i copy(j jVar) {
            return new i(jVar);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof i) && Intrinsics.c(this.f60634om, ((i) obj).f60634om);
        }

        public final j getOm() {
            return this.f60634om;
        }

        public int hashCode() {
            j jVar = this.f60634om;
            if (jVar == null) {
                return 0;
            }
            return jVar.hashCode();
        }

        public String toString() {
            return "ViewAbility(om=" + this.f60634om + ')';
        }
    }

    public static final class j {
        public static final b Companion = new b(null);
        private final String extraVast;
        private final Boolean isEnabled;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.AdPayload.ViewAbilityInfo", aVar, 2);
                pluginGeneratedSerialDescriptor.l("is_enabled", true);
                pluginGeneratedSerialDescriptor.l("extra_vast", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                return new kotlinx.serialization.b[]{d00.a.s(kotlinx.serialization.internal.i.f68152a), d00.a.s(b2.f68112a)};
            }

            @Override // kotlinx.serialization.a
            public j deserialize(e00.e decoder) {
                Object objN;
                Object objN2;
                int i11;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                w1 w1Var = null;
                if (cVarB.p()) {
                    objN = cVarB.n(descriptor2, 0, kotlinx.serialization.internal.i.f68152a, null);
                    objN2 = cVarB.n(descriptor2, 1, b2.f68112a, null);
                    i11 = 3;
                } else {
                    boolean z10 = true;
                    int i12 = 0;
                    objN = null;
                    Object objN3 = null;
                    while (z10) {
                        int iO = cVarB.o(descriptor2);
                        if (iO == -1) {
                            z10 = false;
                        } else if (iO == 0) {
                            objN = cVarB.n(descriptor2, 0, kotlinx.serialization.internal.i.f68152a, objN);
                            i12 |= 1;
                        } else {
                            if (iO != 1) {
                                throw new UnknownFieldException(iO);
                            }
                            objN3 = cVarB.n(descriptor2, 1, b2.f68112a, objN3);
                            i12 |= 2;
                        }
                    }
                    objN2 = objN3;
                    i11 = i12;
                }
                cVarB.c(descriptor2);
                return new j(i11, (Boolean) objN, (String) objN2, w1Var);
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

        /* JADX WARN: Multi-variable type inference failed */
        public j() {
            this((Boolean) null, (String) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        @Deprecated
        public /* synthetic */ j(int i11, Boolean bool, String str, w1 w1Var) {
            if ((i11 & 1) == 0) {
                this.isEnabled = null;
            } else {
                this.isEnabled = bool;
            }
            if ((i11 & 2) == 0) {
                this.extraVast = null;
            } else {
                this.extraVast = str;
            }
        }

        public j(Boolean bool, String str) {
            this.isEnabled = bool;
            this.extraVast = str;
        }

        public /* synthetic */ j(Boolean bool, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : bool, (i11 & 2) != 0 ? null : str);
        }

        public static /* synthetic */ j copy$default(j jVar, Boolean bool, String str, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                bool = jVar.isEnabled;
            }
            if ((i11 & 2) != 0) {
                str = jVar.extraVast;
            }
            return jVar.copy(bool, str);
        }

        public static /* synthetic */ void getExtraVast$annotations() {
        }

        public static /* synthetic */ void isEnabled$annotations() {
        }

        @JvmStatic
        public static final void write$Self(j self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.isEnabled != null) {
                output.i(serialDesc, 0, kotlinx.serialization.internal.i.f68152a, self.isEnabled);
            }
            if (!output.z(serialDesc, 1) && self.extraVast == null) {
                return;
            }
            output.i(serialDesc, 1, b2.f68112a, self.extraVast);
        }

        public final Boolean component1() {
            return this.isEnabled;
        }

        public final String component2() {
            return this.extraVast;
        }

        public final j copy(Boolean bool, String str) {
            return new j(bool, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return Intrinsics.c(this.isEnabled, jVar.isEnabled) && Intrinsics.c(this.extraVast, jVar.extraVast);
        }

        public final String getExtraVast() {
            return this.extraVast;
        }

        public int hashCode() {
            Boolean bool = this.isEnabled;
            int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
            String str = this.extraVast;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        public final Boolean isEnabled() {
            return this.isEnabled;
        }

        public String toString() {
            return "ViewAbilityInfo(isEnabled=" + this.isEnabled + ", extraVast=" + this.extraVast + ')';
        }
    }

    public static final class k {
        public static final b Companion = new b(null);
        private final Boolean allowFileAccessFromFileUrls;
        private final Boolean allowUniversalAccessFromFileUrls;

        public static final class a implements i0 {
            public static final a INSTANCE;
            public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.AdPayload.WebViewSettings", aVar, 2);
                pluginGeneratedSerialDescriptor.l("allow_file_access_from_file_urls", true);
                pluginGeneratedSerialDescriptor.l("allow_universal_access_from_file_urls", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.i0
            public kotlinx.serialization.b[] childSerializers() {
                kotlinx.serialization.internal.i iVar = kotlinx.serialization.internal.i.f68152a;
                return new kotlinx.serialization.b[]{d00.a.s(iVar), d00.a.s(iVar)};
            }

            @Override // kotlinx.serialization.a
            public k deserialize(e00.e decoder) {
                Object objN;
                int i11;
                Object objN2;
                Intrinsics.h(decoder, "decoder");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.c cVarB = decoder.b(descriptor2);
                w1 w1Var = null;
                if (cVarB.p()) {
                    kotlinx.serialization.internal.i iVar = kotlinx.serialization.internal.i.f68152a;
                    objN2 = cVarB.n(descriptor2, 0, iVar, null);
                    objN = cVarB.n(descriptor2, 1, iVar, null);
                    i11 = 3;
                } else {
                    boolean z10 = true;
                    int i12 = 0;
                    objN = null;
                    Object objN3 = null;
                    while (z10) {
                        int iO = cVarB.o(descriptor2);
                        if (iO == -1) {
                            z10 = false;
                        } else if (iO == 0) {
                            objN3 = cVarB.n(descriptor2, 0, kotlinx.serialization.internal.i.f68152a, objN3);
                            i12 |= 1;
                        } else {
                            if (iO != 1) {
                                throw new UnknownFieldException(iO);
                            }
                            objN = cVarB.n(descriptor2, 1, kotlinx.serialization.internal.i.f68152a, objN);
                            i12 |= 2;
                        }
                    }
                    i11 = i12;
                    objN2 = objN3;
                }
                cVarB.c(descriptor2);
                return new k(i11, (Boolean) objN2, (Boolean) objN, w1Var);
            }

            @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
            public kotlinx.serialization.descriptors.f getDescriptor() {
                return descriptor;
            }

            @Override // kotlinx.serialization.g
            public void serialize(e00.f encoder, k value) {
                Intrinsics.h(encoder, "encoder");
                Intrinsics.h(value, "value");
                kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
                e00.d dVarB = encoder.b(descriptor2);
                k.write$Self(value, dVarB, descriptor2);
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
        public k() {
            this((Boolean) null, (Boolean) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        @Deprecated
        public /* synthetic */ k(int i11, Boolean bool, Boolean bool2, w1 w1Var) {
            if ((i11 & 1) == 0) {
                this.allowFileAccessFromFileUrls = null;
            } else {
                this.allowFileAccessFromFileUrls = bool;
            }
            if ((i11 & 2) == 0) {
                this.allowUniversalAccessFromFileUrls = null;
            } else {
                this.allowUniversalAccessFromFileUrls = bool2;
            }
        }

        public k(Boolean bool, Boolean bool2) {
            this.allowFileAccessFromFileUrls = bool;
            this.allowUniversalAccessFromFileUrls = bool2;
        }

        public /* synthetic */ k(Boolean bool, Boolean bool2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : bool, (i11 & 2) != 0 ? null : bool2);
        }

        public static /* synthetic */ k copy$default(k kVar, Boolean bool, Boolean bool2, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                bool = kVar.allowFileAccessFromFileUrls;
            }
            if ((i11 & 2) != 0) {
                bool2 = kVar.allowUniversalAccessFromFileUrls;
            }
            return kVar.copy(bool, bool2);
        }

        public static /* synthetic */ void getAllowFileAccessFromFileUrls$annotations() {
        }

        public static /* synthetic */ void getAllowUniversalAccessFromFileUrls$annotations() {
        }

        @JvmStatic
        public static final void write$Self(k self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
            Intrinsics.h(self, "self");
            Intrinsics.h(output, "output");
            Intrinsics.h(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.allowFileAccessFromFileUrls != null) {
                output.i(serialDesc, 0, kotlinx.serialization.internal.i.f68152a, self.allowFileAccessFromFileUrls);
            }
            if (!output.z(serialDesc, 1) && self.allowUniversalAccessFromFileUrls == null) {
                return;
            }
            output.i(serialDesc, 1, kotlinx.serialization.internal.i.f68152a, self.allowUniversalAccessFromFileUrls);
        }

        public final Boolean component1() {
            return this.allowFileAccessFromFileUrls;
        }

        public final Boolean component2() {
            return this.allowUniversalAccessFromFileUrls;
        }

        public final k copy(Boolean bool, Boolean bool2) {
            return new k(bool, bool2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return Intrinsics.c(this.allowFileAccessFromFileUrls, kVar.allowFileAccessFromFileUrls) && Intrinsics.c(this.allowUniversalAccessFromFileUrls, kVar.allowUniversalAccessFromFileUrls);
        }

        public final Boolean getAllowFileAccessFromFileUrls() {
            return this.allowFileAccessFromFileUrls;
        }

        public final Boolean getAllowUniversalAccessFromFileUrls() {
            return this.allowUniversalAccessFromFileUrls;
        }

        public int hashCode() {
            Boolean bool = this.allowFileAccessFromFileUrls;
            int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
            Boolean bool2 = this.allowUniversalAccessFromFileUrls;
            return iHashCode + (bool2 != null ? bool2.hashCode() : 0);
        }

        public String toString() {
            return "WebViewSettings(allowFileAccessFromFileUrls=" + this.allowFileAccessFromFileUrls + ", allowUniversalAccessFromFileUrls=" + this.allowUniversalAccessFromFileUrls + ')';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AdPayload() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @Deprecated
    public /* synthetic */ AdPayload(int i11, List list, ConfigPayload configPayload, ConcurrentHashMap concurrentHashMap, Map map, boolean z10, w1 w1Var) {
        if ((i11 & 1) == 0) {
            this.ads = null;
        } else {
            this.ads = list;
        }
        if ((i11 & 2) == 0) {
            this.config = null;
        } else {
            this.config = configPayload;
        }
        if ((i11 & 4) == 0) {
            this.mraidFiles = new ConcurrentHashMap<>();
        } else {
            this.mraidFiles = concurrentHashMap;
        }
        if ((i11 & 8) == 0) {
            this.incentivizedTextSettings = new HashMap();
        } else {
            this.incentivizedTextSettings = map;
        }
        if ((i11 & 16) == 0) {
            this.assetsFullyDownloaded = false;
        } else {
            this.assetsFullyDownloaded = z10;
        }
        this.adConfig = null;
        this.logEntry = null;
        this.assetDirectory = null;
    }

    public AdPayload(List<f> list, ConfigPayload configPayload) {
        this.ads = list;
        this.config = configPayload;
        this.mraidFiles = new ConcurrentHashMap<>();
        this.incentivizedTextSettings = new HashMap();
    }

    public /* synthetic */ AdPayload(List list, ConfigPayload configPayload, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : configPayload);
    }

    private final String complexReplace(String str, String str2, String str3) {
        String strQuote = Pattern.quote(str2);
        Intrinsics.g(strQuote, "quote(oldValue)");
        return new Regex(strQuote).replace(str, valueOrEmpty(str3));
    }

    private final f getAd() {
        List<f> list = this.ads;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static /* synthetic */ void getAdConfig$annotations() {
    }

    private final c getAdMarkup() {
        f ad2 = getAd();
        if (ad2 != null) {
            return ad2.getAdMarkup();
        }
        return null;
    }

    private static /* synthetic */ void getAds$annotations() {
    }

    public static /* synthetic */ void getAssetDirectory$annotations() {
    }

    private static /* synthetic */ void getConfig$annotations() {
    }

    public static /* synthetic */ void getIncentivizedTextSettings$annotations() {
    }

    public static /* synthetic */ void getLogEntry$vungle_ads_release$annotations() {
    }

    private static /* synthetic */ void getMraidFiles$annotations() {
    }

    public static /* synthetic */ List getTpatUrls$default(AdPayload adPayload, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        if ((i11 & 4) != 0) {
            str3 = null;
        }
        return adPayload.getTpatUrls(str, str2, str3);
    }

    private final String valueOrEmpty(String str) {
        return str == null ? "" : str;
    }

    @JvmStatic
    public static final void write$Self(AdPayload self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.ads != null) {
            output.i(serialDesc, 0, new kotlinx.serialization.internal.f(f.a.INSTANCE), self.ads);
        }
        if (output.z(serialDesc, 1) || self.config != null) {
            output.i(serialDesc, 1, ConfigPayload.a.INSTANCE, self.config);
        }
        if (output.z(serialDesc, 2) || !Intrinsics.c(self.mraidFiles, new ConcurrentHashMap())) {
            KClass kClassB = Reflection.b(ConcurrentHashMap.class);
            b2 b2Var = b2.f68112a;
            output.C(serialDesc, 2, new ContextualSerializer(kClassB, null, new kotlinx.serialization.b[]{b2Var, b2Var}), self.mraidFiles);
        }
        if (output.z(serialDesc, 3) || !Intrinsics.c(self.incentivizedTextSettings, new HashMap())) {
            b2 b2Var2 = b2.f68112a;
            output.C(serialDesc, 3, new v0(b2Var2, b2Var2), self.incentivizedTextSettings);
        }
        if (output.z(serialDesc, 4) || self.assetsFullyDownloaded) {
            output.x(serialDesc, 4, self.assetsFullyDownloaded);
        }
    }

    public final int adHeight() {
        b adSizeInfo;
        Integer height;
        c adMarkup = getAdMarkup();
        if (adMarkup == null || (adSizeInfo = adMarkup.getAdSizeInfo()) == null || (height = adSizeInfo.getHeight()) == null) {
            return 0;
        }
        return height.intValue();
    }

    public final boolean adLoadOptimizationEnabled() {
        Boolean adLoadOptimizationEnabled;
        c adMarkup = getAdMarkup();
        if (adMarkup == null || (adLoadOptimizationEnabled = adMarkup.getAdLoadOptimizationEnabled()) == null) {
            return true;
        }
        return adLoadOptimizationEnabled.booleanValue();
    }

    public final c adUnit() {
        return getAdMarkup();
    }

    public final int adWidth() {
        b adSizeInfo;
        Integer width;
        c adMarkup = getAdMarkup();
        if (adMarkup == null || (adSizeInfo = adMarkup.getAdSizeInfo()) == null || (width = adSizeInfo.getWidth()) == null) {
            return 0;
        }
        return width.intValue();
    }

    public final String advAppId() {
        c adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getAdvAppId();
        }
        return null;
    }

    public final ConfigPayload config() {
        return this.config;
    }

    public final JsonObject createMRAIDArgs() {
        Map<String, String> mRAIDArgsInMap = getMRAIDArgsInMap();
        s sVar = new s();
        for (Map.Entry<String, String> entry : mRAIDArgsInMap.entrySet()) {
            kotlinx.serialization.json.i.c(sVar, entry.getKey(), entry.getValue());
        }
        return sVar.a();
    }

    public final String eventId() {
        c adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getId();
        }
        return null;
    }

    public final com.vungle.ads.b getAdConfig() {
        return this.adConfig;
    }

    public final String getAdSource() {
        c adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getAdSource();
        }
        return null;
    }

    public final File getAssetDirectory() {
        return this.assetDirectory;
    }

    public final boolean getAssetsFullyDownloaded() {
        return this.assetsFullyDownloaded;
    }

    public final String getCreativeId() {
        String creativeId;
        c adMarkup = getAdMarkup();
        return (adMarkup == null || (creativeId = adMarkup.getCreativeId()) == null) ? "unknown" : creativeId;
    }

    public final List<AdAsset> getDownloadableAssets(File dir) {
        g templateSettings;
        Map<String, d> cacheableReplacements;
        String templateURL;
        String vmURL;
        Intrinsics.h(dir, "dir");
        this.assetDirectory = dir;
        ArrayList arrayList = new ArrayList();
        if (!isNativeTemplateType()) {
            c adMarkup = getAdMarkup();
            if (adMarkup == null || (vmURL = adMarkup.getVmURL()) == null) {
                c adMarkup2 = getAdMarkup();
                if (adMarkup2 != null && (templateURL = adMarkup2.getTemplateURL()) != null && com.vungle.ads.internal.util.g.INSTANCE.isValidUrl(templateURL)) {
                    String filePath = new File(dir, "template").getAbsolutePath();
                    Intrinsics.g(filePath, "filePath");
                    arrayList.add(new AdAsset("template", templateURL, filePath, AdAsset.FileType.ZIP, true));
                }
            } else if (com.vungle.ads.internal.util.g.INSTANCE.isValidUrl(vmURL)) {
                String filePath2 = new File(dir, com.vungle.ads.internal.b.AD_INDEX_FILE_NAME).getAbsolutePath();
                Intrinsics.g(filePath2, "filePath");
                arrayList.add(new AdAsset(KEY_VM, vmURL, filePath2, AdAsset.FileType.ASSET, true));
            }
        }
        c adMarkup3 = getAdMarkup();
        if (adMarkup3 != null && (templateSettings = adMarkup3.getTemplateSettings()) != null && (cacheableReplacements = templateSettings.getCacheableReplacements()) != null) {
            for (Map.Entry<String, d> entry : cacheableReplacements.entrySet()) {
                d value = entry.getValue();
                if (value.getUrl() != null) {
                    com.vungle.ads.internal.util.g gVar = com.vungle.ads.internal.util.g.INSTANCE;
                    if (gVar.isValidUrl(value.getUrl())) {
                        Boolean required = value.getRequired();
                        boolean zBooleanValue = (!isNativeTemplateType() && adLoadOptimizationEnabled()) ? !isCacheableAssetsRequired() ? false : required != null ? required.booleanValue() : false : true;
                        String filePath3 = new File(dir, gVar.guessFileName(value.getUrl(), value.getExtension())).getAbsolutePath();
                        String key = entry.getKey();
                        String url = value.getUrl();
                        Intrinsics.g(filePath3, "filePath");
                        arrayList.add(new AdAsset(key, url, filePath3, AdAsset.FileType.ASSET, zBooleanValue));
                    }
                }
            }
        }
        if (arrayList.size() > 1) {
            CollectionsKt.A(arrayList, new Comparator() { // from class: com.vungle.ads.internal.model.AdPayload$getDownloadableAssets$$inlined$sortByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    return ComparisonsKt.d(Boolean.valueOf(((AdAsset) t12).isRequired()), Boolean.valueOf(((AdAsset) t11).isRequired()));
                }
            });
        }
        return arrayList;
    }

    public final Map<String, String> getIncentivizedTextSettings() {
        return this.incentivizedTextSettings;
    }

    public final n getLogEntry$vungle_ads_release() {
        return this.logEntry;
    }

    public final Map<String, String> getMRAIDArgsInMap() {
        g templateSettings;
        Map<String, d> cacheableReplacements;
        g templateSettings2;
        Map<String, String> normalReplacements;
        c adMarkup = getAdMarkup();
        if ((adMarkup != null ? adMarkup.getTemplateSettings() : null) == null) {
            throw new IllegalArgumentException("Advertisement does not have MRAID Arguments!");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c adMarkup2 = getAdMarkup();
        if (adMarkup2 != null && (templateSettings2 = adMarkup2.getTemplateSettings()) != null && (normalReplacements = templateSettings2.getNormalReplacements()) != null) {
            linkedHashMap.putAll(normalReplacements);
        }
        c adMarkup3 = getAdMarkup();
        if (adMarkup3 != null && (templateSettings = adMarkup3.getTemplateSettings()) != null && (cacheableReplacements = templateSettings.getCacheableReplacements()) != null) {
            for (Map.Entry<String, d> entry : cacheableReplacements.entrySet()) {
                String url = entry.getValue().getUrl();
                if (url != null) {
                    linkedHashMap.put(entry.getKey(), url);
                }
            }
        }
        if (!this.mraidFiles.isEmpty()) {
            linkedHashMap.putAll(this.mraidFiles);
        }
        if (!this.incentivizedTextSettings.isEmpty()) {
            linkedHashMap.putAll(this.incentivizedTextSettings);
        }
        return linkedHashMap;
    }

    public final String getMediationName() {
        c adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getMediationName();
        }
        return null;
    }

    public final int getShowCloseDelay(Boolean bool) {
        Integer showClose;
        Integer showCloseIncentivized;
        if (Intrinsics.c(bool, Boolean.TRUE)) {
            c adMarkup = getAdMarkup();
            if (adMarkup == null || (showCloseIncentivized = adMarkup.getShowCloseIncentivized()) == null) {
                return 0;
            }
            return showCloseIncentivized.intValue() * 1000;
        }
        c adMarkup2 = getAdMarkup();
        if (adMarkup2 == null || (showClose = adMarkup2.getShowClose()) == null) {
            return 0;
        }
        return showClose.intValue() * 1000;
    }

    public final List<String> getTpatUrls(String event, String str, String str2) {
        ArrayList arrayList;
        Map<String, List<String>> tpat;
        Map<String, List<String>> tpat2;
        Intrinsics.h(event, "event");
        c adMarkup = getAdMarkup();
        if (adMarkup != null && (tpat2 = adMarkup.getTpat()) != null && !tpat2.containsKey(event)) {
            new TpatError(Sdk$SDKError.Reason.INVALID_TPAT_KEY, "Arbitrary tpat key: " + event).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            return null;
        }
        c adMarkup2 = getAdMarkup();
        List<String> list = (adMarkup2 == null || (tpat = adMarkup2.getTpat()) == null) ? null : tpat.get(event);
        List<String> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            new TpatError(Sdk$SDKError.Reason.EMPTY_TPAT_ERROR, "Empty tpat key: " + event).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            return null;
        }
        switch (event) {
            case "checkpoint.0":
                List<String> list3 = list;
                arrayList = new ArrayList(CollectionsKt.v(list3, 10));
                Iterator<T> it = list3.iterator();
                while (it.hasNext()) {
                    arrayList.add(complexReplace(complexReplace(complexReplace((String) it.next(), com.vungle.ads.internal.b.REMOTE_PLAY_KEY, String.valueOf(!this.assetsFullyDownloaded)), com.vungle.ads.internal.b.NETWORK_OPERATOR_KEY, str), com.vungle.ads.internal.b.DEVICE_VOLUME_KEY, str2));
                }
                break;
            case "video.length":
                List<String> list4 = list;
                arrayList = new ArrayList(CollectionsKt.v(list4, 10));
                Iterator<T> it2 = list4.iterator();
                while (it2.hasNext()) {
                    arrayList.add(complexReplace((String) it2.next(), com.vungle.ads.internal.b.VIDEO_LENGTH_KEY, str));
                }
                break;
            case "ad.loadDuration":
                List<String> list5 = list;
                arrayList = new ArrayList(CollectionsKt.v(list5, 10));
                Iterator<T> it3 = list5.iterator();
                while (it3.hasNext()) {
                    arrayList.add(complexReplace((String) it3.next(), com.vungle.ads.internal.b.AD_LOAD_DURATION_KEY, str));
                }
                break;
            case "ad.close":
                List<String> list6 = list;
                arrayList = new ArrayList(CollectionsKt.v(list6, 10));
                Iterator<T> it4 = list6.iterator();
                while (it4.hasNext()) {
                    arrayList.add(complexReplace(complexReplace((String) it4.next(), com.vungle.ads.internal.b.AD_DURATION_KEY, str), com.vungle.ads.internal.b.DEVICE_VOLUME_KEY, str2));
                }
                break;
            case "deeplink.click":
                List<String> list7 = list;
                arrayList = new ArrayList(CollectionsKt.v(list7, 10));
                Iterator<T> it5 = list7.iterator();
                while (it5.hasNext()) {
                    arrayList.add(complexReplace((String) it5.next(), com.vungle.ads.internal.b.DEEPLINK_SUCCESS_KEY, str));
                }
                break;
            default:
                return list;
        }
        return arrayList;
    }

    public final String getViewMasterVersion() {
        c adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getVmVersion();
        }
        return null;
    }

    public final k getWebViewSettings() {
        c adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getWebViewSettings();
        }
        return null;
    }

    public final List<String> getWinNotifications() {
        c adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getNotification();
        }
        return null;
    }

    public final boolean hasExpired() {
        Integer expiry;
        c adMarkup = getAdMarkup();
        return (adMarkup == null || (expiry = adMarkup.getExpiry()) == null || ((long) expiry.intValue()) >= System.currentTimeMillis() / 1000) ? false : true;
    }

    public final boolean heartbeatEnabled() {
        Boolean templateHeartbeatCheck;
        c adMarkup = getAdMarkup();
        if (adMarkup == null || (templateHeartbeatCheck = adMarkup.getTemplateHeartbeatCheck()) == null) {
            return false;
        }
        return templateHeartbeatCheck.booleanValue();
    }

    public final boolean isCacheableAssetsRequired() {
        Boolean boolIsCacheableAssetsRequired;
        c adMarkup = getAdMarkup();
        if (adMarkup == null || (boolIsCacheableAssetsRequired = adMarkup.isCacheableAssetsRequired()) == null) {
            return true;
        }
        return boolIsCacheableAssetsRequired.booleanValue();
    }

    public final boolean isClickCoordinatesTrackingEnabled() {
        Boolean clickCoordinatesEnabled;
        c adMarkup = getAdMarkup();
        if (adMarkup == null || (clickCoordinatesEnabled = adMarkup.getClickCoordinatesEnabled()) == null) {
            return false;
        }
        return clickCoordinatesEnabled.booleanValue();
    }

    public final boolean isCriticalAsset(String failingUrl) {
        g templateSettings;
        Map<String, d> cacheableReplacements;
        Intrinsics.h(failingUrl, "failingUrl");
        if (!isNativeTemplateType()) {
            c adMarkup = getAdMarkup();
            if (Intrinsics.c(adMarkup != null ? adMarkup.getTemplateURL() : null, failingUrl)) {
                return true;
            }
        }
        c adMarkup2 = getAdMarkup();
        if (adMarkup2 == null || (templateSettings = adMarkup2.getTemplateSettings()) == null || (cacheableReplacements = templateSettings.getCacheableReplacements()) == null) {
            return false;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, d> entry : cacheableReplacements.entrySet()) {
            if (Intrinsics.c(entry.getValue().getUrl(), failingUrl)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return !linkedHashMap.isEmpty();
    }

    public final boolean isNativeTemplateType() {
        return Intrinsics.c(templateType(), "native");
    }

    public final boolean omEnabled() {
        i viewAbility;
        j om2;
        Boolean boolIsEnabled;
        c adMarkup = getAdMarkup();
        if (adMarkup == null || (viewAbility = adMarkup.getViewAbility()) == null || (om2 = viewAbility.getOm()) == null || (boolIsEnabled = om2.isEnabled()) == null) {
            return false;
        }
        return boolIsEnabled.booleanValue();
    }

    public final String placementId() {
        f ad2 = getAd();
        if (ad2 != null) {
            return ad2.getPlacementReferenceId();
        }
        return null;
    }

    public final void setAdConfig(com.vungle.ads.b bVar) {
        this.adConfig = bVar;
    }

    public final void setAssetFullyDownloaded() {
        this.assetsFullyDownloaded = true;
    }

    public final void setAssetsFullyDownloaded(boolean z10) {
        this.assetsFullyDownloaded = z10;
    }

    public final void setIncentivizedText(String title, String body, String keepWatching, String close) {
        Intrinsics.h(title, "title");
        Intrinsics.h(body, "body");
        Intrinsics.h(keepWatching, "keepWatching");
        Intrinsics.h(close, "close");
        if (title.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_TITLE_TEXT, title);
        }
        if (body.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_BODY_TEXT, body);
        }
        if (keepWatching.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_CONTINUE_TEXT, keepWatching);
        }
        if (close.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_CLOSE_TEXT, close);
        }
    }

    public final void setIncentivizedTextSettings(Map<String, String> map) {
        Intrinsics.h(map, "<set-?>");
        this.incentivizedTextSettings = map;
    }

    public final void setLogEntry$vungle_ads_release(n nVar) {
        this.logEntry = nVar;
    }

    public final String templateType() {
        c adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getTemplateType();
        }
        return null;
    }

    public final synchronized void updateAdAssetPath(AdAsset adAsset) {
        if (adAsset != null) {
            if (!Intrinsics.c("template", adAsset.getAdIdentifier())) {
                File file = new File(adAsset.getLocalPath());
                if (file.exists()) {
                    String adIdentifier = adAsset.getAdIdentifier();
                    this.mraidFiles.put(adIdentifier, FILE_SCHEME + file.getPath());
                }
            }
        }
    }
}
