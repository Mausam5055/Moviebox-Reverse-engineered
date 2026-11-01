.class public final enum Lcom/aliyun/player/AliPlayer$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AliPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/AliPlayer$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/AliPlayer$Status;

.field public static final enum Invalid:Lcom/aliyun/player/AliPlayer$Status;

.field public static final enum Pending:Lcom/aliyun/player/AliPlayer$Status;

.field public static final enum Valid:Lcom/aliyun/player/AliPlayer$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/aliyun/player/AliPlayer$Status;

    const-string v1, "Valid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/AliPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/AliPlayer$Status;->Valid:Lcom/aliyun/player/AliPlayer$Status;

    new-instance v1, Lcom/aliyun/player/AliPlayer$Status;

    const-string v3, "Invalid"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/aliyun/player/AliPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    new-instance v3, Lcom/aliyun/player/AliPlayer$Status;

    const-string v5, "Pending"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/aliyun/player/AliPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/aliyun/player/AliPlayer$Status;->Pending:Lcom/aliyun/player/AliPlayer$Status;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/aliyun/player/AliPlayer$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/aliyun/player/AliPlayer$Status;->$VALUES:[Lcom/aliyun/player/AliPlayer$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1

    const-class v0, Lcom/aliyun/player/AliPlayer$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/AliPlayer$Status;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/AliPlayer$Status;
    .locals 1

    sget-object v0, Lcom/aliyun/player/AliPlayer$Status;->$VALUES:[Lcom/aliyun/player/AliPlayer$Status;

    invoke-virtual {v0}, [Lcom/aliyun/player/AliPlayer$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/AliPlayer$Status;

    return-object v0
.end method
