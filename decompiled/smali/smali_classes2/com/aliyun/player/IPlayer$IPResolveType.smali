.class public final enum Lcom/aliyun/player/IPlayer$IPResolveType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPResolveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/IPlayer$IPResolveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/IPlayer$IPResolveType;

.field public static final enum IpResolveV4:Lcom/aliyun/player/IPlayer$IPResolveType;

.field public static final enum IpResolveV6:Lcom/aliyun/player/IPlayer$IPResolveType;

.field public static final enum IpResolveWhatEver:Lcom/aliyun/player/IPlayer$IPResolveType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/aliyun/player/IPlayer$IPResolveType;

    const-string v1, "IpResolveWhatEver"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/IPlayer$IPResolveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/IPlayer$IPResolveType;->IpResolveWhatEver:Lcom/aliyun/player/IPlayer$IPResolveType;

    new-instance v1, Lcom/aliyun/player/IPlayer$IPResolveType;

    const-string v3, "IpResolveV4"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/aliyun/player/IPlayer$IPResolveType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/aliyun/player/IPlayer$IPResolveType;->IpResolveV4:Lcom/aliyun/player/IPlayer$IPResolveType;

    new-instance v3, Lcom/aliyun/player/IPlayer$IPResolveType;

    const-string v5, "IpResolveV6"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/aliyun/player/IPlayer$IPResolveType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/aliyun/player/IPlayer$IPResolveType;->IpResolveV6:Lcom/aliyun/player/IPlayer$IPResolveType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/aliyun/player/IPlayer$IPResolveType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/aliyun/player/IPlayer$IPResolveType;->$VALUES:[Lcom/aliyun/player/IPlayer$IPResolveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/IPlayer$IPResolveType;
    .locals 1

    const-class v0, Lcom/aliyun/player/IPlayer$IPResolveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/IPlayer$IPResolveType;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/IPlayer$IPResolveType;
    .locals 1

    sget-object v0, Lcom/aliyun/player/IPlayer$IPResolveType;->$VALUES:[Lcom/aliyun/player/IPlayer$IPResolveType;

    invoke-virtual {v0}, [Lcom/aliyun/player/IPlayer$IPResolveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/IPlayer$IPResolveType;

    return-object v0
.end method
