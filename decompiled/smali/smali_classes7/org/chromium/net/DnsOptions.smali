.class public final Lorg/chromium/net/DnsOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/DnsOptions$Builder;,
        Lorg/chromium/net/DnsOptions$StaleDnsOptions;,
        Lorg/chromium/net/DnsOptions$Experimental;
    }
.end annotation


# instance fields
.field private final mEnableStaleDns:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPersistHostCache:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPersistHostCachePeriodMillis:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mStaleDnsOptions:Lorg/chromium/net/DnsOptions$StaleDnsOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mUseBuiltInDnsResolver:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/chromium/net/DnsOptions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->a(Lorg/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/DnsOptions;->mEnableStaleDns:Ljava/lang/Boolean;

    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->e(Lorg/chromium/net/DnsOptions$Builder;)Lorg/chromium/net/DnsOptions$StaleDnsOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/DnsOptions;->mStaleDnsOptions:Lorg/chromium/net/DnsOptions$StaleDnsOptions;

    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->c(Lorg/chromium/net/DnsOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/DnsOptions;->mPersistHostCachePeriodMillis:Ljava/lang/Long;

    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->d(Lorg/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/DnsOptions;->mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;

    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->f(Lorg/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/DnsOptions;->mUseBuiltInDnsResolver:Ljava/lang/Boolean;

    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->b(Lorg/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/DnsOptions;->mPersistHostCache:Ljava/lang/Boolean;

    return-void
.end method

.method public static builder()Lorg/chromium/net/DnsOptions$Builder;
    .locals 1

    new-instance v0, Lorg/chromium/net/DnsOptions$Builder;

    invoke-direct {v0}, Lorg/chromium/net/DnsOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getEnableStaleDns()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mEnableStaleDns:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPersistHostCache()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mPersistHostCache:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPersistHostCachePeriodMillis()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mPersistHostCachePeriodMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getPreestablishConnectionsToStaleDnsResults()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStaleDnsOptions()Lorg/chromium/net/DnsOptions$StaleDnsOptions;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mStaleDnsOptions:Lorg/chromium/net/DnsOptions$StaleDnsOptions;

    return-object v0
.end method

.method public getUseBuiltInDnsResolver()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mUseBuiltInDnsResolver:Ljava/lang/Boolean;

    return-object v0
.end method
