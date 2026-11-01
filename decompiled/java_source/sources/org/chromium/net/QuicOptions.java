package org.chromium.net;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class QuicOptions {
    private final Set<String> mClientConnectionOptions;

    @Nullable
    private final Boolean mCloseSessionsOnIpChange;
    private final Set<String> mConnectionOptions;

    @Nullable
    private final Long mCryptoHandshakeTimeoutSeconds;

    @Nullable
    private final Boolean mDelayJobsWithAvailableSpdySession;

    @Nullable
    private final Boolean mEnableTlsZeroRtt;
    private final Set<String> mEnabledQuicVersions;
    private final Set<String> mExtraQuicheFlags;

    @Nullable
    private final Boolean mGoawaySessionsOnIpChange;

    @Nullable
    private final String mHandshakeUserAgent;

    @Nullable
    private final Long mIdleConnectionTimeoutSeconds;

    @Nullable
    private final Integer mInMemoryServerConfigsCacheSize;

    @Nullable
    private final Boolean mIncreaseBrokenServicePeriodExponentially;

    @Nullable
    private final Long mInitialBrokenServicePeriodSeconds;

    @Nullable
    private final Long mPreCryptoHandshakeIdleTimeoutSeconds;
    private final Set<String> mQuicHostAllowlist;

    @Nullable
    private final Long mRetransmittableOnWireTimeoutMillis;

    @Nullable
    private final Boolean mRetryWithoutAltSvcOnQuicErrors;

    public static class Builder {

        @Nullable
        private Boolean mCloseSessionsOnIpChange;

        @Nullable
        private Long mCryptoHandshakeTimeoutSeconds;

        @Nullable
        private Boolean mDelayJobsWithAvailableSpdySession;

        @Nullable
        private Boolean mEnableTlsZeroRtt;

        @Nullable
        private Boolean mGoawaySessionsOnIpChange;

        @Nullable
        private String mHandshakeUserAgent;

        @Nullable
        private Long mIdleConnectionTimeoutSeconds;

        @Nullable
        private Integer mInMemoryServerConfigsCacheSize;

        @Nullable
        private Boolean mIncreaseBrokenServicePeriodExponentially;

        @Nullable
        private Long mInitialBrokenServicePeriodSeconds;

        @Nullable
        private Long mPreCryptoHandshakeIdleTimeoutSeconds;

        @Nullable
        private Long mRetransmittableOnWireTimeoutMillis;

        @Nullable
        private Boolean mRetryWithoutAltSvcOnQuicErrors;
        private final Set<String> mQuicHostAllowlist = new LinkedHashSet();
        private final Set<String> mEnabledQuicVersions = new LinkedHashSet();
        private final Set<String> mConnectionOptions = new LinkedHashSet();
        private final Set<String> mClientConnectionOptions = new LinkedHashSet();

        @Nullable
        private final Set<String> mExtraQuicheFlags = new LinkedHashSet();

        Builder() {
        }

        public Builder addAllowedQuicHost(String str) {
            this.mQuicHostAllowlist.add(str);
            return this;
        }

        @QuichePassthroughOption
        public Builder addClientConnectionOption(String str) {
            this.mClientConnectionOptions.add(str);
            return this;
        }

        @QuichePassthroughOption
        public Builder addConnectionOption(String str) {
            this.mConnectionOptions.add(str);
            return this;
        }

        @QuichePassthroughOption
        public Builder addEnabledQuicVersion(String str) {
            this.mEnabledQuicVersions.add(str);
            return this;
        }

        @QuichePassthroughOption
        public Builder addExtraQuicheFlag(String str) {
            this.mExtraQuicheFlags.add(str);
            return this;
        }

        public QuicOptions build() {
            return new QuicOptions(this);
        }

        @Experimental
        public Builder closeSessionsOnIpChange(boolean z10) {
            this.mCloseSessionsOnIpChange = Boolean.valueOf(z10);
            return this;
        }

        @Experimental
        public Builder delayJobsWithAvailableSpdySession(boolean z10) {
            this.mDelayJobsWithAvailableSpdySession = Boolean.valueOf(z10);
            return this;
        }

        @Experimental
        public Builder enableTlsZeroRtt(boolean z10) {
            this.mEnableTlsZeroRtt = Boolean.valueOf(z10);
            return this;
        }

        @Experimental
        public Builder goawaySessionsOnIpChange(boolean z10) {
            this.mGoawaySessionsOnIpChange = Boolean.valueOf(z10);
            return this;
        }

        @Experimental
        public Builder increaseBrokenServicePeriodExponentially(boolean z10) {
            this.mIncreaseBrokenServicePeriodExponentially = Boolean.valueOf(z10);
            return this;
        }

        @Experimental
        public Builder retryWithoutAltSvcOnQuicErrors(boolean z10) {
            this.mRetryWithoutAltSvcOnQuicErrors = Boolean.valueOf(z10);
            return this;
        }

        @Experimental
        public Builder setCryptoHandshakeTimeoutSeconds(long j11) {
            this.mCryptoHandshakeTimeoutSeconds = Long.valueOf(j11);
            return this;
        }

        public Builder setHandshakeUserAgent(String str) {
            this.mHandshakeUserAgent = str;
            return this;
        }

        public Builder setIdleConnectionTimeoutSeconds(long j11) {
            this.mIdleConnectionTimeoutSeconds = Long.valueOf(j11);
            return this;
        }

        public Builder setInMemoryServerConfigsCacheSize(int i11) {
            this.mInMemoryServerConfigsCacheSize = Integer.valueOf(i11);
            return this;
        }

        @Experimental
        public Builder setInitialBrokenServicePeriodSeconds(long j11) {
            this.mInitialBrokenServicePeriodSeconds = Long.valueOf(j11);
            return this;
        }

        @Experimental
        public Builder setPreCryptoHandshakeIdleTimeoutSeconds(long j11) {
            this.mPreCryptoHandshakeIdleTimeoutSeconds = Long.valueOf(j11);
            return this;
        }

        @Experimental
        public Builder setRetransmittableOnWireTimeoutMillis(long j11) {
            this.mRetransmittableOnWireTimeoutMillis = Long.valueOf(j11);
            return this;
        }
    }

    public @interface Experimental {
    }

    public @interface QuichePassthroughOption {
    }

    QuicOptions(Builder builder) {
        this.mQuicHostAllowlist = Collections.unmodifiableSet(new LinkedHashSet(builder.mQuicHostAllowlist));
        this.mEnabledQuicVersions = Collections.unmodifiableSet(new LinkedHashSet(builder.mEnabledQuicVersions));
        this.mConnectionOptions = Collections.unmodifiableSet(new LinkedHashSet(builder.mConnectionOptions));
        this.mClientConnectionOptions = Collections.unmodifiableSet(new LinkedHashSet(builder.mClientConnectionOptions));
        this.mInMemoryServerConfigsCacheSize = builder.mInMemoryServerConfigsCacheSize;
        this.mHandshakeUserAgent = builder.mHandshakeUserAgent;
        this.mRetryWithoutAltSvcOnQuicErrors = builder.mRetryWithoutAltSvcOnQuicErrors;
        this.mEnableTlsZeroRtt = builder.mEnableTlsZeroRtt;
        this.mPreCryptoHandshakeIdleTimeoutSeconds = builder.mPreCryptoHandshakeIdleTimeoutSeconds;
        this.mCryptoHandshakeTimeoutSeconds = builder.mCryptoHandshakeTimeoutSeconds;
        this.mIdleConnectionTimeoutSeconds = builder.mIdleConnectionTimeoutSeconds;
        this.mRetransmittableOnWireTimeoutMillis = builder.mRetransmittableOnWireTimeoutMillis;
        this.mCloseSessionsOnIpChange = builder.mCloseSessionsOnIpChange;
        this.mGoawaySessionsOnIpChange = builder.mGoawaySessionsOnIpChange;
        this.mInitialBrokenServicePeriodSeconds = builder.mInitialBrokenServicePeriodSeconds;
        this.mIncreaseBrokenServicePeriodExponentially = builder.mIncreaseBrokenServicePeriodExponentially;
        this.mDelayJobsWithAvailableSpdySession = builder.mDelayJobsWithAvailableSpdySession;
        this.mExtraQuicheFlags = Collections.unmodifiableSet(new LinkedHashSet(builder.mExtraQuicheFlags));
    }

    public static Builder builder() {
        return new Builder();
    }

    public Set<String> getClientConnectionOptions() {
        return this.mClientConnectionOptions;
    }

    @Nullable
    public Boolean getCloseSessionsOnIpChange() {
        return this.mCloseSessionsOnIpChange;
    }

    public Set<String> getConnectionOptions() {
        return this.mConnectionOptions;
    }

    @Nullable
    public Long getCryptoHandshakeTimeoutSeconds() {
        return this.mCryptoHandshakeTimeoutSeconds;
    }

    @Nullable
    public Boolean getDelayJobsWithAvailableSpdySession() {
        return this.mDelayJobsWithAvailableSpdySession;
    }

    @Nullable
    public Boolean getEnableTlsZeroRtt() {
        return this.mEnableTlsZeroRtt;
    }

    public Set<String> getEnabledQuicVersions() {
        return this.mEnabledQuicVersions;
    }

    public Set<String> getExtraQuicheFlags() {
        return this.mExtraQuicheFlags;
    }

    @Nullable
    public Boolean getGoawaySessionsOnIpChange() {
        return this.mGoawaySessionsOnIpChange;
    }

    @Nullable
    public String getHandshakeUserAgent() {
        return this.mHandshakeUserAgent;
    }

    @Nullable
    public Long getIdleConnectionTimeoutSeconds() {
        return this.mIdleConnectionTimeoutSeconds;
    }

    @Nullable
    public Integer getInMemoryServerConfigsCacheSize() {
        return this.mInMemoryServerConfigsCacheSize;
    }

    @Nullable
    public Boolean getIncreaseBrokenServicePeriodExponentially() {
        return this.mIncreaseBrokenServicePeriodExponentially;
    }

    @Nullable
    public Long getInitialBrokenServicePeriodSeconds() {
        return this.mInitialBrokenServicePeriodSeconds;
    }

    @Nullable
    public Long getPreCryptoHandshakeIdleTimeoutSeconds() {
        return this.mPreCryptoHandshakeIdleTimeoutSeconds;
    }

    public Set<String> getQuicHostAllowlist() {
        return this.mQuicHostAllowlist;
    }

    @Nullable
    public Long getRetransmittableOnWireTimeoutMillis() {
        return this.mRetransmittableOnWireTimeoutMillis;
    }

    @Nullable
    public Boolean getRetryWithoutAltSvcOnQuicErrors() {
        return this.mRetryWithoutAltSvcOnQuicErrors;
    }
}
