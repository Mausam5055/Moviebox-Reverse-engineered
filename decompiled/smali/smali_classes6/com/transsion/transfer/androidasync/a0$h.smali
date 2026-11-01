.class Lcom/transsion/transfer/androidasync/a0$h;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/a0;->c(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/transsion/transfer/androidasync/p;

.field final synthetic c:Lcom/transsion/transfer/androidasync/s;

.field final synthetic d:Lbv/a;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$h;->b:Lcom/transsion/transfer/androidasync/p;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/a0$h;->c:Lcom/transsion/transfer/androidasync/s;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/a0$h;->d:Lbv/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->a:Z

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->b:Lcom/transsion/transfer/androidasync/p;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->b:Lcom/transsion/transfer/androidasync/p;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->c:Lcom/transsion/transfer/androidasync/s;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->c:Lcom/transsion/transfer/androidasync/s;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->o(Lbv/j;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->d:Lbv/a;

    invoke-interface {v0, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    return-void
.end method
