.class final Lcom/tmc/network/strategy/LocalDnsStrategy$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmc/network/strategy/LocalDnsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/tmc/network/strategy/LocalDnsStrategy$b;

.field private static final b:Lcom/tmc/network/strategy/LocalDnsStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tmc/network/strategy/LocalDnsStrategy$b;

    invoke-direct {v0}, Lcom/tmc/network/strategy/LocalDnsStrategy$b;-><init>()V

    sput-object v0, Lcom/tmc/network/strategy/LocalDnsStrategy$b;->a:Lcom/tmc/network/strategy/LocalDnsStrategy$b;

    new-instance v0, Lcom/tmc/network/strategy/LocalDnsStrategy;

    invoke-direct {v0}, Lcom/tmc/network/strategy/LocalDnsStrategy;-><init>()V

    sput-object v0, Lcom/tmc/network/strategy/LocalDnsStrategy$b;->b:Lcom/tmc/network/strategy/LocalDnsStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/tmc/network/strategy/LocalDnsStrategy;
    .locals 1

    sget-object v0, Lcom/tmc/network/strategy/LocalDnsStrategy$b;->b:Lcom/tmc/network/strategy/LocalDnsStrategy;

    return-object v0
.end method
