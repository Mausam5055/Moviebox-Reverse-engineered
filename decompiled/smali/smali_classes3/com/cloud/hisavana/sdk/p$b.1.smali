.class public final enum Lcom/cloud/hisavana/sdk/p$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/hisavana/sdk/p$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/p$b;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "a",
        "b",
        "c",
        "d",
        "e",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum a:Lcom/cloud/hisavana/sdk/p$b;

.field public static final enum b:Lcom/cloud/hisavana/sdk/p$b;

.field public static final enum c:Lcom/cloud/hisavana/sdk/p$b;

.field public static final enum d:Lcom/cloud/hisavana/sdk/p$b;

.field public static final enum e:Lcom/cloud/hisavana/sdk/p$b;

.field private static final synthetic f:[Lcom/cloud/hisavana/sdk/p$b;

.field private static final synthetic g:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/p$b;

    const-string v1, "IO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/p$b;->a:Lcom/cloud/hisavana/sdk/p$b;

    new-instance v0, Lcom/cloud/hisavana/sdk/p$b;

    const-string v1, "DECODING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/p$b;->b:Lcom/cloud/hisavana/sdk/p$b;

    new-instance v0, Lcom/cloud/hisavana/sdk/p$b;

    const-string v1, "DRM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/p$b;->c:Lcom/cloud/hisavana/sdk/p$b;

    new-instance v0, Lcom/cloud/hisavana/sdk/p$b;

    const-string v1, "PLAYER_UNAVAILABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/p$b;->d:Lcom/cloud/hisavana/sdk/p$b;

    new-instance v0, Lcom/cloud/hisavana/sdk/p$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/p$b;->e:Lcom/cloud/hisavana/sdk/p$b;

    invoke-static {}, Lcom/cloud/hisavana/sdk/p$b;->a()[Lcom/cloud/hisavana/sdk/p$b;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/p$b;->f:[Lcom/cloud/hisavana/sdk/p$b;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/p$b;->g:Lkotlin/enums/EnumEntries;

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

.method private static final synthetic a()[Lcom/cloud/hisavana/sdk/p$b;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cloud/hisavana/sdk/p$b;

    sget-object v1, Lcom/cloud/hisavana/sdk/p$b;->a:Lcom/cloud/hisavana/sdk/p$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/p$b;->b:Lcom/cloud/hisavana/sdk/p$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/p$b;->c:Lcom/cloud/hisavana/sdk/p$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/p$b;->d:Lcom/cloud/hisavana/sdk/p$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/p$b;->e:Lcom/cloud/hisavana/sdk/p$b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/p$b;
    .locals 1

    const-class v0, Lcom/cloud/hisavana/sdk/p$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/p$b;

    return-object p0
.end method

.method public static values()[Lcom/cloud/hisavana/sdk/p$b;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/p$b;->f:[Lcom/cloud/hisavana/sdk/p$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/hisavana/sdk/p$b;

    return-object v0
.end method
