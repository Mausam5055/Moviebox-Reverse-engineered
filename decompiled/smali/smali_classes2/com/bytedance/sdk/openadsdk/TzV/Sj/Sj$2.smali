.class Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj;Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/sU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$2;->Sj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$2;->Sj:I

    if-gtz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$2;->Sj:I

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/EjP/Sj;->Sj(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
