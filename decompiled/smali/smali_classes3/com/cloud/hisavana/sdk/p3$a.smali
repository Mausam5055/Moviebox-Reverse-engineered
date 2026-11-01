.class Lcom/cloud/hisavana/sdk/p3$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/p3;Landroid/os/Looper;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/cloud/hisavana/sdk/p3$a;->c:I

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/p3$a;->a:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/cloud/hisavana/sdk/p3$a;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/p3$a;->c:I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p0, Lcom/cloud/hisavana/sdk/p3$a;->c:I

    iget v0, p0, Lcom/cloud/hisavana/sdk/p3$a;->b:I

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/cloud/hisavana/sdk/p3$a;->c:I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p3$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p3$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p3;->L(Lcom/cloud/hisavana/sdk/p3;)V

    :cond_1
    return-void
.end method
