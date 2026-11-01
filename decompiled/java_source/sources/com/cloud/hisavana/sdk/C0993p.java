package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.cloud.hisavana.sdk.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C0993p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final d f22813e = new d(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f22814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f22815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f22816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Throwable f22817d;

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.p$b */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/cloud/hisavana/sdk/p$b;", "", "<init>", "(Ljava/lang/String;I)V", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum b {
        IO,
        DECODING,
        DRM,
        PLAYER_UNAVAILABLE,
        UNKNOWN;


        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final /* synthetic */ EnumEntries f22824g = EnumEntriesKt.a(a());
    }

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.p$d */
    public static final class d {
        private d() {
        }

        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C0993p a() {
            return new C0993p(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_UNAVAILABLE, "ExoPlayer is not available, video ad skipped", b.PLAYER_UNAVAILABLE, null, 8, null);
        }
    }

    public C0993p(int i11, String errorMessage, b errorType, Throwable th2) {
        Intrinsics.h(errorMessage, "errorMessage");
        Intrinsics.h(errorType, "errorType");
        this.f22814a = i11;
        this.f22815b = errorMessage;
        this.f22816c = errorType;
        this.f22817d = th2;
    }

    public /* synthetic */ C0993p(int i11, String str, b bVar, Throwable th2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, str, (i12 & 4) != 0 ? b.UNKNOWN : bVar, (i12 & 8) != 0 ? null : th2);
    }

    public final int a() {
        return this.f22814a;
    }

    public final String b() {
        return this.f22815b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0993p)) {
            return false;
        }
        C0993p c0993p = (C0993p) obj;
        return this.f22814a == c0993p.f22814a && Intrinsics.c(this.f22815b, c0993p.f22815b) && this.f22816c == c0993p.f22816c && Intrinsics.c(this.f22817d, c0993p.f22817d);
    }

    public int hashCode() {
        int iHashCode = ((((this.f22814a * 31) + this.f22815b.hashCode()) * 31) + this.f22816c.hashCode()) * 31;
        Throwable th2 = this.f22817d;
        return iHashCode + (th2 == null ? 0 : th2.hashCode());
    }

    public String toString() {
        return "AdVideoError(errorCode=" + this.f22814a + ", errorMessage=" + this.f22815b + ", errorType=" + this.f22816c + ", cause=" + this.f22817d + ')';
    }
}
