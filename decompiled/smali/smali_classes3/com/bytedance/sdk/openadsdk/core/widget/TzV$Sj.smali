.class public final enum Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/TzV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic EjP:[Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

.field public static final enum Sj:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

.field public static final enum TKC:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

.field public static final enum sP:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    const-string v1, "PAUSE_VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    const-string v3, "RELEASE_VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    const-string v5, "START_VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;->EjP:[Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;->EjP:[Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    return-object v0
.end method
