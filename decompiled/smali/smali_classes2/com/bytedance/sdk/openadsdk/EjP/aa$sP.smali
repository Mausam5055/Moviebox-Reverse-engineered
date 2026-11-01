.class Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/EjP/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "sP"
.end annotation


# instance fields
.field public Sj:I

.field public sP:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;->Sj:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;->sP:I

    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;-><init>()V

    return-object v0
.end method
