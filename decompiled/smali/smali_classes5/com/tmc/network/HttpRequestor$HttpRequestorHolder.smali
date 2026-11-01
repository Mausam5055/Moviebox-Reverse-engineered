.class final Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmc/network/HttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HttpRequestorHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;",
        "",
        "()V",
        "sInstance",
        "Lcom/tmc/network/HttpRequestor;",
        "getSInstance",
        "()Lcom/tmc/network/HttpRequestor;",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;

.field private static final sInstance:Lcom/tmc/network/HttpRequestor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;

    invoke-direct {v0}, Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;-><init>()V

    sput-object v0, Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;->INSTANCE:Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;

    new-instance v0, Lcom/tmc/network/HttpRequestor;

    invoke-direct {v0}, Lcom/tmc/network/HttpRequestor;-><init>()V

    sput-object v0, Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;->sInstance:Lcom/tmc/network/HttpRequestor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSInstance()Lcom/tmc/network/HttpRequestor;
    .locals 1

    sget-object v0, Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;->sInstance:Lcom/tmc/network/HttpRequestor;

    return-object v0
.end method
