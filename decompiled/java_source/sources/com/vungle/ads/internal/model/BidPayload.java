package com.vungle.ads.internal.model;

import android.util.Base64;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.zip.GZIPInputStream;
import kotlin.Deprecated;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.w1;
import kotlinx.serialization.json.n;

/* JADX INFO: loaded from: classes7.dex */
public final class BidPayload {
    public static final b Companion = new b(null);

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private final AdPayload f60635ad;
    private final String adunit;
    private final List<String> impression;
    private final kotlinx.serialization.json.a json;
    private final Integer version;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.BidPayload", aVar, 4);
            pluginGeneratedSerialDescriptor.l("version", true);
            pluginGeneratedSerialDescriptor.l("adunit", true);
            pluginGeneratedSerialDescriptor.l("impression", true);
            pluginGeneratedSerialDescriptor.l(CommonLogUtil.TAG_AD, true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            kotlinx.serialization.b bVarS = d00.a.s(r0.f68192a);
            b2 b2Var = b2.f68112a;
            return new kotlinx.serialization.b[]{bVarS, d00.a.s(b2Var), d00.a.s(new kotlinx.serialization.internal.f(b2Var)), d00.a.s(AdPayload.a.INSTANCE)};
        }

        @Override // kotlinx.serialization.a
        public BidPayload deserialize(e00.e decoder) {
            Object objN;
            Object objN2;
            Object objN3;
            int i11;
            Object objN4;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            e00.c cVarB = decoder.b(descriptor2);
            Object objN5 = null;
            if (cVarB.p()) {
                objN4 = cVarB.n(descriptor2, 0, r0.f68192a, null);
                b2 b2Var = b2.f68112a;
                objN = cVarB.n(descriptor2, 1, b2Var, null);
                objN2 = cVarB.n(descriptor2, 2, new kotlinx.serialization.internal.f(b2Var), null);
                objN3 = cVarB.n(descriptor2, 3, AdPayload.a.INSTANCE, null);
                i11 = 15;
            } else {
                boolean z10 = true;
                int i12 = 0;
                Object objN6 = null;
                Object objN7 = null;
                Object objN8 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        objN5 = cVarB.n(descriptor2, 0, r0.f68192a, objN5);
                        i12 |= 1;
                    } else if (iO == 1) {
                        objN6 = cVarB.n(descriptor2, 1, b2.f68112a, objN6);
                        i12 |= 2;
                    } else if (iO == 2) {
                        objN7 = cVarB.n(descriptor2, 2, new kotlinx.serialization.internal.f(b2.f68112a), objN7);
                        i12 |= 4;
                    } else {
                        if (iO != 3) {
                            throw new UnknownFieldException(iO);
                        }
                        objN8 = cVarB.n(descriptor2, 3, AdPayload.a.INSTANCE, objN8);
                        i12 |= 8;
                    }
                }
                objN = objN6;
                objN2 = objN7;
                objN3 = objN8;
                Object obj = objN5;
                i11 = i12;
                objN4 = obj;
            }
            cVarB.c(descriptor2);
            return new BidPayload(i11, (Integer) objN4, (String) objN, (List) objN2, (AdPayload) objN3, null);
        }

        @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.g
        public void serialize(e00.f encoder, BidPayload value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            e00.d dVarB = encoder.b(descriptor2);
            BidPayload.write$Self(value, dVarB, descriptor2);
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

    public BidPayload() {
        this(null, null, null, 7, null);
    }

    @Deprecated
    public /* synthetic */ BidPayload(int i11, Integer num, String str, List list, AdPayload adPayload, w1 w1Var) {
        String decodedAdsResponse;
        AdPayload adPayload2 = null;
        if ((i11 & 1) == 0) {
            this.version = null;
        } else {
            this.version = num;
        }
        if ((i11 & 2) == 0) {
            this.adunit = null;
        } else {
            this.adunit = str;
        }
        if ((i11 & 4) == 0) {
            this.impression = null;
        } else {
            this.impression = list;
        }
        kotlinx.serialization.json.a aVarB = n.b(null, new Function1<kotlinx.serialization.json.d, Unit>() { // from class: com.vungle.ads.internal.model.BidPayload.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((kotlinx.serialization.json.d) obj);
                return Unit.f67061a;
            }

            public final void invoke(kotlinx.serialization.json.d Json) {
                Intrinsics.h(Json, "$this$Json");
                Json.f(true);
                Json.d(true);
                Json.e(false);
            }
        }, 1, null);
        this.json = aVarB;
        if ((i11 & 8) != 0) {
            this.f60635ad = adPayload;
            return;
        }
        if (this.adunit != null && (decodedAdsResponse = getDecodedAdsResponse()) != null) {
            kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(aVarB.a(), Reflection.m(AdPayload.class));
            Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            adPayload2 = (AdPayload) aVarB.b(bVarB, decodedAdsResponse);
        }
        this.f60635ad = adPayload2;
    }

    public BidPayload(Integer num, String str, List<String> list) {
        String decodedAdsResponse;
        this.version = num;
        this.adunit = str;
        this.impression = list;
        AdPayload adPayload = null;
        kotlinx.serialization.json.a aVarB = n.b(null, new Function1<kotlinx.serialization.json.d, Unit>() { // from class: com.vungle.ads.internal.model.BidPayload$json$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((kotlinx.serialization.json.d) obj);
                return Unit.f67061a;
            }

            public final void invoke(kotlinx.serialization.json.d Json) {
                Intrinsics.h(Json, "$this$Json");
                Json.f(true);
                Json.d(true);
                Json.e(false);
            }
        }, 1, null);
        this.json = aVarB;
        if (str != null && (decodedAdsResponse = getDecodedAdsResponse()) != null) {
            kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(aVarB.a(), Reflection.m(AdPayload.class));
            Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            adPayload = (AdPayload) aVarB.b(bVarB, decodedAdsResponse);
        }
        this.f60635ad = adPayload;
    }

    public /* synthetic */ BidPayload(Integer num, String str, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : num, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BidPayload copy$default(BidPayload bidPayload, Integer num, String str, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = bidPayload.version;
        }
        if ((i11 & 2) != 0) {
            str = bidPayload.adunit;
        }
        if ((i11 & 4) != 0) {
            list = bidPayload.impression;
        }
        return bidPayload.copy(num, str, list);
    }

    private static /* synthetic */ void getJson$annotations() {
    }

    private final String gzipDecode(byte[] bArr) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream, 1024);
            try {
                byte[] bArr2 = new byte[1024];
                while (true) {
                    int i11 = gZIPInputStream.read(bArr2);
                    if (i11 == -1) {
                        Unit unit = Unit.f67061a;
                        CloseableKt.a(gZIPInputStream, null);
                        CloseableKt.a(byteArrayInputStream, null);
                        String string = byteArrayOutputStream.toString();
                        Intrinsics.g(string, "result.toString()");
                        return string;
                    }
                    byteArrayOutputStream.write(bArr2, 0, i11);
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(byteArrayInputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.a(gZIPInputStream, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            throw th5;
        }
    }

    @JvmStatic
    public static final void write$Self(BidPayload self, e00.d output, kotlinx.serialization.descriptors.f serialDesc) {
        String decodedAdsResponse;
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.version != null) {
            output.i(serialDesc, 0, r0.f68192a, self.version);
        }
        if (output.z(serialDesc, 1) || self.adunit != null) {
            output.i(serialDesc, 1, b2.f68112a, self.adunit);
        }
        if (output.z(serialDesc, 2) || self.impression != null) {
            output.i(serialDesc, 2, new kotlinx.serialization.internal.f(b2.f68112a), self.impression);
        }
        if (!output.z(serialDesc, 3)) {
            AdPayload adPayload = self.f60635ad;
            AdPayload adPayload2 = null;
            if (self.adunit != null && (decodedAdsResponse = self.getDecodedAdsResponse()) != null) {
                kotlinx.serialization.json.a aVar = self.json;
                kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(aVar.a(), Reflection.m(AdPayload.class));
                Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                adPayload2 = (AdPayload) aVar.b(bVarB, decodedAdsResponse);
            }
            if (Intrinsics.c(adPayload, adPayload2)) {
                return;
            }
        }
        output.i(serialDesc, 3, AdPayload.a.INSTANCE, self.f60635ad);
    }

    public final Integer component1() {
        return this.version;
    }

    public final String component2() {
        return this.adunit;
    }

    public final List<String> component3() {
        return this.impression;
    }

    public final BidPayload copy(Integer num, String str, List<String> list) {
        return new BidPayload(num, str, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BidPayload)) {
            return false;
        }
        BidPayload bidPayload = (BidPayload) obj;
        return Intrinsics.c(this.version, bidPayload.version) && Intrinsics.c(this.adunit, bidPayload.adunit) && Intrinsics.c(this.impression, bidPayload.impression);
    }

    public final AdPayload getAdPayload() {
        return this.f60635ad;
    }

    public final String getAdunit() {
        return this.adunit;
    }

    public final String getCreativeId() {
        AdPayload adPayload = this.f60635ad;
        if (adPayload != null) {
            return adPayload.getCreativeId();
        }
        return null;
    }

    public final String getDecodedAdsResponse() throws Throwable {
        byte[] bArrDecode = Base64.decode(this.adunit, 0);
        if (bArrDecode != null) {
            return gzipDecode(bArrDecode);
        }
        return null;
    }

    public final String getEventId() {
        AdPayload adPayload = this.f60635ad;
        if (adPayload != null) {
            return adPayload.eventId();
        }
        return null;
    }

    public final List<String> getImpression() {
        return this.impression;
    }

    public final String getPlacementId() {
        AdPayload adPayload = this.f60635ad;
        if (adPayload != null) {
            return adPayload.placementId();
        }
        return null;
    }

    public final Integer getVersion() {
        return this.version;
    }

    public int hashCode() {
        Integer num = this.version;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.adunit;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<String> list = this.impression;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "BidPayload(version=" + this.version + ", adunit=" + this.adunit + ", impression=" + this.impression + ')';
    }
}
