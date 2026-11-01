.class Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/uvD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/HiB/TKC/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sj"
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

.field private sP:Lcom/bytedance/sdk/component/HiB/uvD;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/HiB/TKC/TKC;Lcom/bytedance/sdk/component/HiB/uvD;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->sP:Lcom/bytedance/sdk/component/HiB/uvD;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;)Lcom/bytedance/sdk/component/HiB/uvD;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->sP:Lcom/bytedance/sdk/component/HiB/uvD;

    return-object p0
.end method

.method private Sj(Landroid/widget/ImageView;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x413c0901

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TEQ(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public Sj(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->uA(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Jcg(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->sP:Lcom/bytedance/sdk/component/HiB/uvD;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->HiB(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->vS(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Jcg(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$1;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Dq(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/Dq;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Dq(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/Dq;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/Dq;->Sj(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/HiB/Ym;->Sj(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->uA(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Jcg(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$2;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;Lcom/bytedance/sdk/component/HiB/Ym;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->sP:Lcom/bytedance/sdk/component/HiB/uvD;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V

    :cond_3
    return-void
.end method
