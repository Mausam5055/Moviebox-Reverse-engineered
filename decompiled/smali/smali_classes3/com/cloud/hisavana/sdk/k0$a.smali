.class Lcom/cloud/hisavana/sdk/k0$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/q0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/k0;->l(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lcom/cloud/hisavana/sdk/o4;

.field final synthetic c:Lcom/cloud/hisavana/sdk/k0$d;

.field final synthetic d:Lcom/cloud/hisavana/sdk/k0;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/k0;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/k0$a;->d:Lcom/cloud/hisavana/sdk/k0;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/k0$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/k0$a;->b:Lcom/cloud/hisavana/sdk/o4;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/k0$a;->c:Lcom/cloud/hisavana/sdk/k0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/k0$a;->d:Lcom/cloud/hisavana/sdk/k0;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k0$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k0$a;->b:Lcom/cloud/hisavana/sdk/o4;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/k0$a;->c:Lcom/cloud/hisavana/sdk/k0$d;

    invoke-static {p1, v0, v1, v2}, Lcom/cloud/hisavana/sdk/k0;->d(Lcom/cloud/hisavana/sdk/k0;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/k0$a;->d:Lcom/cloud/hisavana/sdk/k0;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k0$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k0$a;->b:Lcom/cloud/hisavana/sdk/o4;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/k0$a;->c:Lcom/cloud/hisavana/sdk/k0$d;

    invoke-static {p1, v0, v1, v2}, Lcom/cloud/hisavana/sdk/k0;->d(Lcom/cloud/hisavana/sdk/k0;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    return-void
.end method
