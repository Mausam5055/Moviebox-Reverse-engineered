package org.chromium.net;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class ExperimentalBidirectionalStream extends BidirectionalStream {

    @Deprecated
    public static abstract class Builder extends BidirectionalStream.Builder {
        @Override // org.chromium.net.BidirectionalStream.Builder
        public abstract Builder addHeader(String str, String str2);

        @Override // org.chromium.net.BidirectionalStream.Builder
        public Builder addRequestAnnotation(Object obj) {
            return this;
        }

        @Override // org.chromium.net.BidirectionalStream.Builder
        public abstract ExperimentalBidirectionalStream build();

        @Override // org.chromium.net.BidirectionalStream.Builder
        public abstract Builder delayRequestHeadersUntilFirstFlush(boolean z10);

        @Override // org.chromium.net.BidirectionalStream.Builder
        public abstract Builder setHttpMethod(String str);

        @Override // org.chromium.net.BidirectionalStream.Builder
        public abstract Builder setPriority(int i11);

        @Override // org.chromium.net.BidirectionalStream.Builder
        public Builder setTrafficStatsTag(int i11) {
            return this;
        }

        @Override // org.chromium.net.BidirectionalStream.Builder
        public Builder setTrafficStatsUid(int i11) {
            return this;
        }
    }
}
