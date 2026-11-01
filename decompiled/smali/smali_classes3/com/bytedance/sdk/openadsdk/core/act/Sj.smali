.class public Lcom/bytedance/sdk/openadsdk/core/act/Sj;
.super Ljava/lang/Object;


# static fields
.field private static EjP:Ljava/lang/Boolean; = null

.field private static Sj:I = -0x1

.field private static volatile TKC:Z = false

.field private static sP:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static Sj()I
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->EjP:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static Sj(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static Sj(I)V
    .locals 0

    sput p0, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->Sj:I

    return-void
.end method

.method public static sP(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static sP(I)V
    .locals 0

    sput p0, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->sP:I

    return-void
.end method
