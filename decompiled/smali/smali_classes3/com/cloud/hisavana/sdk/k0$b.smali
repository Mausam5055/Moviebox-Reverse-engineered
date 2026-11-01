.class Lcom/cloud/hisavana/sdk/k0$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/k0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic e:Lcom/cloud/hisavana/sdk/o4;

.field final synthetic f:Lcom/cloud/hisavana/sdk/k0$d;

.field final synthetic g:Lcom/cloud/hisavana/sdk/k0;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/k0;ZLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/k0$b;->g:Lcom/cloud/hisavana/sdk/k0;

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/k0$b;->b:Z

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/k0$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/k0$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/k0$b;->e:Lcom/cloud/hisavana/sdk/o4;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/k0$b;->f:Lcom/cloud/hisavana/sdk/k0$d;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/k0$b;->g:Lcom/cloud/hisavana/sdk/k0;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k0$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k0$b;->e:Lcom/cloud/hisavana/sdk/o4;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/k0$b;->f:Lcom/cloud/hisavana/sdk/k0$d;

    invoke-static {p1, v0, v1, v2}, Lcom/cloud/hisavana/sdk/k0;->d(Lcom/cloud/hisavana/sdk/k0;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/k0$b;->b:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/k0$b;->g:Lcom/cloud/hisavana/sdk/k0;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k0$b;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/cloud/hisavana/sdk/k0;->c(Lcom/cloud/hisavana/sdk/k0;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/k0$b;->g:Lcom/cloud/hisavana/sdk/k0;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/k0$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k0$b;->e:Lcom/cloud/hisavana/sdk/o4;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k0$b;->f:Lcom/cloud/hisavana/sdk/k0$d;

    invoke-static {p1, p2, v0, v1}, Lcom/cloud/hisavana/sdk/k0;->d(Lcom/cloud/hisavana/sdk/k0;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    return-void
.end method
