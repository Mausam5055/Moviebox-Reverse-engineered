package com.vungle.ads.internal.bidding;

import android.content.Context;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.GzipEncodeError;
import com.vungle.ads.JsonEncodeError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.h;
import com.vungle.ads.internal.model.i;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.network.k;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.util.l;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.w;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.json.d;
import kotlinx.serialization.json.n;

/* JADX INFO: loaded from: classes7.dex */
public final class BidTokenEncoder {
    public static final c Companion = new c(null);
    private static final String TAG = "BidTokenEncoder";
    public static final int TOKEN_VERSION = 6;
    private w bidTokenRequestedMetric;
    private final Context context;
    private long enterBackgroundTime;
    private final kotlinx.serialization.json.a json;
    private int ordinalView;

    public static final class a extends com.vungle.ads.internal.util.a.b {
        a() {
        }

        @Override // com.vungle.ads.internal.util.a.b
        public void onBackground() {
            BidTokenEncoder.this.onPause$vungle_ads_release();
        }

        @Override // com.vungle.ads.internal.util.a.b
        public void onForeground() {
            BidTokenEncoder.this.onResume$vungle_ads_release();
        }
    }

    public static final class b {
        private final String bidToken;
        private final String errorMessage;

        public b(String bidToken, String errorMessage) {
            Intrinsics.h(bidToken, "bidToken");
            Intrinsics.h(errorMessage, "errorMessage");
            this.bidToken = bidToken;
            this.errorMessage = errorMessage;
        }

        public static /* synthetic */ b copy$default(b bVar, String str, String str2, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = bVar.bidToken;
            }
            if ((i11 & 2) != 0) {
                str2 = bVar.errorMessage;
            }
            return bVar.copy(str, str2);
        }

        public final String component1() {
            return this.bidToken;
        }

        public final String component2() {
            return this.errorMessage;
        }

        public final b copy(String bidToken, String errorMessage) {
            Intrinsics.h(bidToken, "bidToken");
            Intrinsics.h(errorMessage, "errorMessage");
            return new b(bidToken, errorMessage);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.bidToken, bVar.bidToken) && Intrinsics.c(this.errorMessage, bVar.errorMessage);
        }

        public final String getBidToken() {
            return this.bidToken;
        }

        public final String getErrorMessage() {
            return this.errorMessage;
        }

        public int hashCode() {
            return (this.bidToken.hashCode() * 31) + this.errorMessage.hashCode();
        }

        public String toString() {
            return "BiddingTokenInfo(bidToken=" + this.bidToken + ", errorMessage=" + this.errorMessage + ')';
        }
    }

    public static final class c {
        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public BidTokenEncoder(Context context) {
        Intrinsics.h(context, "context");
        this.context = context;
        this.bidTokenRequestedMetric = new w(Sdk$SDKMetric.SDKMetricType.BID_TOKEN_REQUESTED);
        this.json = n.b(null, new Function1<d, Unit>() { // from class: com.vungle.ads.internal.bidding.BidTokenEncoder$json$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((d) obj);
                return Unit.f67061a;
            }

            public final void invoke(d Json) {
                Intrinsics.h(Json, "$this$Json");
                Json.f(true);
                Json.d(true);
                Json.e(false);
            }
        }, 1, null);
        com.vungle.ads.internal.util.a.Companion.addLifecycleListener(new a());
    }

    /* JADX INFO: renamed from: constructV6Token$lambda-0, reason: not valid java name */
    private static final VungleApiClient m391constructV6Token$lambda0(Lazy<VungleApiClient> lazy) {
        return (VungleApiClient) lazy.getValue();
    }

    private final b generateBidToken() {
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.bidTokenRequestedMetric, (com.vungle.ads.internal.util.n) null, (String) null, 6, (Object) null);
        try {
            String strConstructV6Token$vungle_ads_release = constructV6Token$vungle_ads_release();
            o.a aVar = o.Companion;
            aVar.d(TAG, "BidToken: " + strConstructV6Token$vungle_ads_release);
            try {
                String str = "6:" + l.INSTANCE.convertForSending(strConstructV6Token$vungle_ads_release);
                aVar.d(TAG, "After conversion: " + str);
                return new b(str, "");
            } catch (Throwable th2) {
                String str2 = "Fail to gzip token data. " + th2.getLocalizedMessage();
                new GzipEncodeError(str2).logErrorNoReturnValue$vungle_ads_release();
                return new b("", str2);
            }
        } catch (Throwable th3) {
            String str3 = "Failed to encode TokenParameters. " + th3.getLocalizedMessage();
            new JsonEncodeError(str3).logErrorNoReturnValue$vungle_ads_release();
            return new b("", str3);
        }
    }

    public static /* synthetic */ void getEnterBackgroundTime$vungle_ads_release$annotations() {
    }

    private static /* synthetic */ void getJson$annotations() {
    }

    public static /* synthetic */ void getOrdinalView$vungle_ads_release$annotations() {
    }

    public final String constructV6Token$vungle_ads_release() {
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        VungleApiClient vungleApiClientM391constructV6Token$lambda0 = m391constructV6Token$lambda0(LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.bidding.BidTokenEncoder$constructV6Token$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final VungleApiClient invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
            }
        }));
        ConfigManager configManager = ConfigManager.INSTANCE;
        com.vungle.ads.internal.model.c cVarRequestBody = vungleApiClientM391constructV6Token$lambda0.requestBody(!configManager.signalsDisabled(), configManager.fpdEnabled());
        i iVar = new i(cVarRequestBody.getDevice(), cVarRequestBody.getUser(), cVarRequestBody.getExt(), new h(k.INSTANCE.getHeaderUa()), this.ordinalView);
        kotlinx.serialization.json.a aVar = this.json;
        kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(aVar.a(), Reflection.m(i.class));
        Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        return aVar.c(bVarB, iVar);
    }

    public final b encode() {
        this.ordinalView++;
        return generateBidToken();
    }

    public final long getEnterBackgroundTime$vungle_ads_release() {
        return this.enterBackgroundTime;
    }

    public final int getOrdinalView$vungle_ads_release() {
        return this.ordinalView;
    }

    public final void onPause$vungle_ads_release() {
        o.Companion.d(TAG, "BidTokenEncoder#onBackground()");
        this.enterBackgroundTime = System.currentTimeMillis();
    }

    public final void onResume$vungle_ads_release() {
        o.Companion.d(TAG, "BidTokenEncoder#onForeground()");
        if (System.currentTimeMillis() > this.enterBackgroundTime + ConfigManager.INSTANCE.getSessionTimeout()) {
            this.ordinalView = 0;
            this.enterBackgroundTime = 0L;
        }
    }

    public final void setEnterBackgroundTime$vungle_ads_release(long j11) {
        this.enterBackgroundTime = j11;
    }

    public final void setOrdinalView$vungle_ads_release(int i11) {
        this.ordinalView = i11;
    }
}
