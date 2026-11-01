.class public Lcom/cloud/tmc/integration/permission/whitelist/BridgeWhiteList;
.super Ljava/lang/Object;


# static fields
.field private static whiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/permission/whitelist/BridgeWhiteList;->whiteList:Ljava/util/List;

    const-string v1, "remoteLog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInWhiteList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/permission/whitelist/BridgeWhiteList;->whiteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
