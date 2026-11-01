.class Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1;->Sj(Lcom/bytedance/adsdk/sP/TEQ;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/TEQ;

.field final synthetic TKC:Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1;Lcom/bytedance/adsdk/sP/TEQ;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1$1;->TKC:Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1$1;->Sj:Lcom/bytedance/adsdk/sP/TEQ;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1$1;->sP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1$1;->Sj:Lcom/bytedance/adsdk/sP/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TEQ;->Sj()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1$1;->Sj:Lcom/bytedance/adsdk/sP/TEQ;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TEQ;->sP()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1$1;->TKC:Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/TEQ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/vS/TEQ;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/TEQ;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1$1;->sP:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
