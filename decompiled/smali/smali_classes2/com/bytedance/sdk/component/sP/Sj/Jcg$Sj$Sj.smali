.class final enum Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EjP:Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

.field public static final enum HiB:Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

.field public static final enum Sj:Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

.field public static final enum TKC:Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

.field public static final enum sP:Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

.field private static final synthetic vS:[Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    const-string v3, "MISSING_SCHEME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;->sP:Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    new-instance v3, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    const-string v5, "UNSUPPORTED_SCHEME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    new-instance v5, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    const-string v7, "INVALID_PORT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;->EjP:Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    new-instance v7, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    const-string v9, "INVALID_HOST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;->HiB:Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;->vS:[Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;->vS:[Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    return-object v0
.end method
