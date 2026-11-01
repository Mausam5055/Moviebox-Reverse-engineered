package org.chromium.net;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class ConnectionMigrationOptions {

    @Nullable
    private final Boolean mAllowNonDefaultNetworkUsage;

    @Nullable
    private final Boolean mAllowServerMigration;

    @Nullable
    private final Boolean mEnableDefaultNetworkMigration;

    @Nullable
    private final Boolean mEnablePathDegradationMigration;

    @Nullable
    private final Long mIdleMigrationPeriodSeconds;

    @Nullable
    private final Integer mMaxPathDegradingEagerMigrationsCount;

    @Nullable
    private final Long mMaxTimeOnNonDefaultNetworkSeconds;

    @Nullable
    private final Integer mMaxWriteErrorEagerMigrationsCount;

    @Nullable
    private final Boolean mMigrateIdleConnections;

    @Nullable
    private final Boolean mRetryPreHandshakeErrorsOnAlternateNetwork;

    public static class Builder {

        @Nullable
        private Boolean mAllowNonDefaultNetworkUsage;

        @Nullable
        private Boolean mAllowServerMigration;

        @Nullable
        private Boolean mEnableDefaultNetworkConnectionMigration;

        @Nullable
        private Boolean mEnablePathDegradationMigration;

        @Nullable
        private Long mIdleConnectionMigrationPeriodSeconds;

        @Nullable
        private Integer mMaxPathDegradingEagerMigrationsCount;

        @Nullable
        private Long mMaxTimeOnNonDefaultNetworkSeconds;

        @Nullable
        private Integer mMaxWriteErrorEagerMigrationsCount;

        @Nullable
        private Boolean mMigrateIdleConnections;

        @Nullable
        private Boolean mRetryPreHandshakeErrorsOnAlternateNetwork;

        Builder() {
        }

        @Experimental
        public Builder allowNonDefaultNetworkUsage(boolean z10) {
            this.mAllowNonDefaultNetworkUsage = Boolean.valueOf(z10);
            return this;
        }

        @Experimental
        public Builder allowServerMigration(boolean z10) {
            this.mAllowServerMigration = Boolean.valueOf(z10);
            return this;
        }

        public ConnectionMigrationOptions build() {
            return new ConnectionMigrationOptions(this);
        }

        public Builder enableDefaultNetworkMigration(boolean z10) {
            this.mEnableDefaultNetworkConnectionMigration = Boolean.valueOf(z10);
            return this;
        }

        public Builder enablePathDegradationMigration(boolean z10) {
            this.mEnablePathDegradationMigration = Boolean.valueOf(z10);
            return this;
        }

        @Experimental
        public Builder migrateIdleConnections(boolean z10) {
            this.mMigrateIdleConnections = Boolean.valueOf(z10);
            return this;
        }

        @Experimental
        public Builder retryPreHandshakeErrorsOnNonDefaultNetwork(boolean z10) {
            this.mRetryPreHandshakeErrorsOnAlternateNetwork = Boolean.valueOf(z10);
            return this;
        }

        @Experimental
        public Builder setIdleConnectionMigrationPeriodSeconds(long j11) {
            this.mIdleConnectionMigrationPeriodSeconds = Long.valueOf(j11);
            return this;
        }

        @Experimental
        public Builder setMaxPathDegradingNonDefaultNetworkMigrationsCount(int i11) {
            this.mMaxPathDegradingEagerMigrationsCount = Integer.valueOf(i11);
            return this;
        }

        @Experimental
        public Builder setMaxTimeOnNonDefaultNetworkSeconds(long j11) {
            this.mMaxTimeOnNonDefaultNetworkSeconds = Long.valueOf(j11);
            return this;
        }

        @Experimental
        public Builder setMaxWriteErrorNonDefaultNetworkMigrationsCount(int i11) {
            this.mMaxWriteErrorEagerMigrationsCount = Integer.valueOf(i11);
            return this;
        }
    }

    public @interface Experimental {
    }

    public ConnectionMigrationOptions(Builder builder) {
        this.mEnableDefaultNetworkMigration = builder.mEnableDefaultNetworkConnectionMigration;
        this.mEnablePathDegradationMigration = builder.mEnablePathDegradationMigration;
        this.mAllowServerMigration = builder.mAllowServerMigration;
        this.mMigrateIdleConnections = builder.mMigrateIdleConnections;
        this.mIdleMigrationPeriodSeconds = builder.mIdleConnectionMigrationPeriodSeconds;
        this.mRetryPreHandshakeErrorsOnAlternateNetwork = builder.mRetryPreHandshakeErrorsOnAlternateNetwork;
        this.mAllowNonDefaultNetworkUsage = builder.mAllowNonDefaultNetworkUsage;
        this.mMaxTimeOnNonDefaultNetworkSeconds = builder.mMaxTimeOnNonDefaultNetworkSeconds;
        this.mMaxWriteErrorEagerMigrationsCount = builder.mMaxWriteErrorEagerMigrationsCount;
        this.mMaxPathDegradingEagerMigrationsCount = builder.mMaxPathDegradingEagerMigrationsCount;
    }

    public static Builder builder() {
        return new Builder();
    }

    @Nullable
    public Boolean getAllowNonDefaultNetworkUsage() {
        return this.mAllowNonDefaultNetworkUsage;
    }

    @Nullable
    public Boolean getAllowServerMigration() {
        return this.mAllowServerMigration;
    }

    @Nullable
    public Boolean getEnableDefaultNetworkMigration() {
        return this.mEnableDefaultNetworkMigration;
    }

    @Nullable
    public Boolean getEnablePathDegradationMigration() {
        return this.mEnablePathDegradationMigration;
    }

    @Nullable
    public Long getIdleMigrationPeriodSeconds() {
        return this.mIdleMigrationPeriodSeconds;
    }

    @Nullable
    public Integer getMaxPathDegradingEagerMigrationsCount() {
        return this.mMaxPathDegradingEagerMigrationsCount;
    }

    @Nullable
    public Long getMaxTimeOnNonDefaultNetworkSeconds() {
        return this.mMaxTimeOnNonDefaultNetworkSeconds;
    }

    @Nullable
    public Integer getMaxWriteErrorEagerMigrationsCount() {
        return this.mMaxWriteErrorEagerMigrationsCount;
    }

    @Nullable
    public Boolean getMigrateIdleConnections() {
        return this.mMigrateIdleConnections;
    }

    @Nullable
    public Boolean getRetryPreHandshakeErrorsOnAlternateNetwork() {
        return this.mRetryPreHandshakeErrorsOnAlternateNetwork;
    }
}
