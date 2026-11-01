package com.vungle.ads.internal.network;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.EnumDescriptor;
import kotlinx.serialization.internal.i0;

/* JADX INFO: loaded from: classes7.dex */
@kotlinx.serialization.f
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0087\u0001\u0018\u0000 \u00042\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0005\u0006B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vungle/ads/internal/network/HttpMethod;", "", "<init>", "(Ljava/lang/String;I)V", "Companion", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "GET", "POST", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum HttpMethod {
    GET,
    POST;


    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public static final class a implements i0 {
        public static final a INSTANCE = new a();
        public static final /* synthetic */ kotlinx.serialization.descriptors.f descriptor;

        static {
            EnumDescriptor enumDescriptor = new EnumDescriptor("com.vungle.ads.internal.network.HttpMethod", 2);
            enumDescriptor.l("GET", false);
            enumDescriptor.l("POST", false);
            descriptor = enumDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            return new kotlinx.serialization.b[0];
        }

        @Override // kotlinx.serialization.a
        public HttpMethod deserialize(e00.e decoder) {
            Intrinsics.h(decoder, "decoder");
            return HttpMethod.values()[decoder.e(getDescriptor())];
        }

        @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.g
        public void serialize(e00.f encoder, HttpMethod value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            encoder.k(getDescriptor(), value.ordinal());
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    /* JADX INFO: renamed from: com.vungle.ads.internal.network.HttpMethod$b, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return a.INSTANCE;
        }
    }
}
