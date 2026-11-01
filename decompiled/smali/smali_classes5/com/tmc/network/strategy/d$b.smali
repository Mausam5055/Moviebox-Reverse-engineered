.class final Lcom/tmc/network/strategy/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmc/network/strategy/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/tmc/network/strategy/d$b;

.field private static final b:Lcom/tmc/network/strategy/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tmc/network/strategy/d$b;

    invoke-direct {v0}, Lcom/tmc/network/strategy/d$b;-><init>()V

    sput-object v0, Lcom/tmc/network/strategy/d$b;->a:Lcom/tmc/network/strategy/d$b;

    new-instance v0, Lcom/tmc/network/strategy/d;

    invoke-direct {v0}, Lcom/tmc/network/strategy/d;-><init>()V

    sput-object v0, Lcom/tmc/network/strategy/d$b;->b:Lcom/tmc/network/strategy/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/tmc/network/strategy/d;
    .locals 1

    sget-object v0, Lcom/tmc/network/strategy/d$b;->b:Lcom/tmc/network/strategy/d;

    return-object v0
.end method
