package com.cloud.tmc.render;

import androidx.collection.s;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u0000 \u00072\u00020\u0001:\u0002\u0007\bJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/render/IPageChainCallback;", "", "onConsoleMessage", "", "params", "", "onPageFinished", "Companion", "OnPageFinishedData", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IPageChainCallback {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final String TAG_PARAMS = "params";

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/cloud/tmc/render/IPageChainCallback$Companion;", "", "()V", "TAG_PARAMS", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final String TAG_PARAMS = "params";

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "url", "", "fcpCurrentTimeMillis", "", "(Ljava/lang/String;J)V", "getFcpCurrentTimeMillis", "()J", "setFcpCurrentTimeMillis", "(J)V", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class OnPageFinishedData extends BaseBean {
        private long fcpCurrentTimeMillis;
        private String url;

        public OnPageFinishedData() {
            this(null, 0L, 3, null);
        }

        public OnPageFinishedData(String url, long j11) {
            Intrinsics.h(url, "url");
            this.url = url;
            this.fcpCurrentTimeMillis = j11;
        }

        public /* synthetic */ OnPageFinishedData(String str, long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? System.currentTimeMillis() : j11);
        }

        public static /* synthetic */ OnPageFinishedData copy$default(OnPageFinishedData onPageFinishedData, String str, long j11, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = onPageFinishedData.url;
            }
            if ((i11 & 2) != 0) {
                j11 = onPageFinishedData.fcpCurrentTimeMillis;
            }
            return onPageFinishedData.copy(str, j11);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final long getFcpCurrentTimeMillis() {
            return this.fcpCurrentTimeMillis;
        }

        public final OnPageFinishedData copy(String url, long fcpCurrentTimeMillis) {
            Intrinsics.h(url, "url");
            return new OnPageFinishedData(url, fcpCurrentTimeMillis);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OnPageFinishedData)) {
                return false;
            }
            OnPageFinishedData onPageFinishedData = (OnPageFinishedData) other;
            return Intrinsics.c(this.url, onPageFinishedData.url) && this.fcpCurrentTimeMillis == onPageFinishedData.fcpCurrentTimeMillis;
        }

        public final long getFcpCurrentTimeMillis() {
            return this.fcpCurrentTimeMillis;
        }

        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            return (this.url.hashCode() * 31) + s.a(this.fcpCurrentTimeMillis);
        }

        public final void setFcpCurrentTimeMillis(long j11) {
            this.fcpCurrentTimeMillis = j11;
        }

        public final void setUrl(String str) {
            Intrinsics.h(str, "<set-?>");
            this.url = str;
        }

        public String toString() {
            return "OnPageFinishedData(url=" + this.url + ", fcpCurrentTimeMillis=" + this.fcpCurrentTimeMillis + ')';
        }
    }

    void onConsoleMessage(String params);

    void onPageFinished(String params);
}
