.class public Lcom/bytedance/sdk/openadsdk/component/TKC$sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sP"
.end annotation


# instance fields
.field private final Sj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/component/TKC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC$sP;->Sj:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 0

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;->EjP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC$sP;->Sj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/TKC;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;->sP()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;->Sj()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/TKC;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
