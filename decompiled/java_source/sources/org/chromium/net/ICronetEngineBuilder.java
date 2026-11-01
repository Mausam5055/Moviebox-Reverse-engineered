package org.chromium.net;

import java.util.Collections;
import java.util.Date;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class ICronetEngineBuilder {
    public static final int CONNECTION_MIGRATION_OPTIONS = 1;
    public static final int DNS_OPTIONS = 2;
    public static final int QUIC_OPTIONS = 3;

    public abstract ICronetEngineBuilder addPublicKeyPins(String str, Set<byte[]> set, boolean z10, Date date);

    public abstract ICronetEngineBuilder addQuicHint(String str, int i11, int i12);

    public abstract ExperimentalCronetEngine build();

    public ICronetEngineBuilder enableBrotli(boolean z10) {
        return this;
    }

    public abstract ICronetEngineBuilder enableHttp2(boolean z10);

    public abstract ICronetEngineBuilder enableHttpCache(int i11, long j11);

    public ICronetEngineBuilder enableNetworkQualityEstimator(boolean z10) {
        return this;
    }

    public abstract ICronetEngineBuilder enablePublicKeyPinningBypassForLocalTrustAnchors(boolean z10);

    public abstract ICronetEngineBuilder enableQuic(boolean z10);

    public abstract ICronetEngineBuilder enableSdch(boolean z10);

    public abstract String getDefaultUserAgent();

    protected Set<Integer> getSupportedConfigOptions() {
        return Collections.emptySet();
    }

    public ICronetEngineBuilder setConnectionMigrationOptions(ConnectionMigrationOptions connectionMigrationOptions) {
        return this;
    }

    public ICronetEngineBuilder setDnsOptions(DnsOptions dnsOptions) {
        return this;
    }

    public abstract ICronetEngineBuilder setExperimentalOptions(String str);

    public abstract ICronetEngineBuilder setLibraryLoader(CronetEngine.Builder.LibraryLoader libraryLoader);

    public ICronetEngineBuilder setQuicOptions(QuicOptions quicOptions) {
        return this;
    }

    public abstract ICronetEngineBuilder setStoragePath(String str);

    public ICronetEngineBuilder setThreadPriority(int i11) {
        return this;
    }

    public abstract ICronetEngineBuilder setUserAgent(String str);
}
