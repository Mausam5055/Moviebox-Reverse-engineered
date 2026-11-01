package com.cloud.hisavana.abtestkit.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0007\b\tB\u0007\b\u0004¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004\u0082\u0001\u0003\n\u000b\f¨\u0006\r"}, d2 = {"Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;", "", "()V", "isClosed", "", "isOpen", "isPushAll", "Closed", "Open", "PushAll", "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;", "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;", "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$PushAll;", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class ABVariantState {

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;", "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;", "code", "", "(I)V", "getCode", "()I", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class Closed extends ABVariantState {
        private final int code;

        public Closed(int i11) {
            super(null);
            this.code = i11;
        }

        public static /* synthetic */ Closed copy$default(Closed closed, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i11 = closed.code;
            }
            return closed.copy(i11);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getCode() {
            return this.code;
        }

        public final Closed copy(int code) {
            return new Closed(code);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Closed) && this.code == ((Closed) other).code;
        }

        public final int getCode() {
            return this.code;
        }

        public int hashCode() {
            return this.code;
        }

        public String toString() {
            return "Closed(code=" + this.code + ')';
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;", "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;", "variant", "Lcom/cloud/hisavana/abtestkit/bean/ABVariant;", "(Lcom/cloud/hisavana/abtestkit/bean/ABVariant;)V", "getVariant", "()Lcom/cloud/hisavana/abtestkit/bean/ABVariant;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class Open extends ABVariantState {
        private final ABVariant variant;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Open(ABVariant variant) {
            super(null);
            Intrinsics.h(variant, "variant");
            this.variant = variant;
        }

        public static /* synthetic */ Open copy$default(Open open, ABVariant aBVariant, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                aBVariant = open.variant;
            }
            return open.copy(aBVariant);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ABVariant getVariant() {
            return this.variant;
        }

        public final Open copy(ABVariant variant) {
            Intrinsics.h(variant, "variant");
            return new Open(variant);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Open) && Intrinsics.c(this.variant, ((Open) other).variant);
        }

        public final ABVariant getVariant() {
            return this.variant;
        }

        public int hashCode() {
            return this.variant.hashCode();
        }

        public String toString() {
            return "Open(variant=" + this.variant + ')';
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$PushAll;", "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;", "()V", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class PushAll extends ABVariantState {
        public static final PushAll INSTANCE = new PushAll();

        private PushAll() {
            super(null);
        }

        public boolean equals(Object other) {
            return this == other || (other instanceof PushAll);
        }

        public int hashCode() {
            return 1024771678;
        }

        public String toString() {
            return "PushAll";
        }
    }

    private ABVariantState() {
    }

    public /* synthetic */ ABVariantState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean isClosed() {
        return this instanceof Closed;
    }

    public final boolean isOpen() {
        return this instanceof Open;
    }

    public final boolean isPushAll() {
        return this == PushAll.INSTANCE;
    }
}
