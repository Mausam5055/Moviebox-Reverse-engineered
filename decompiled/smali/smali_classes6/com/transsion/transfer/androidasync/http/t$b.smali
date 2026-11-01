.class Lcom/transsion/transfer/androidasync/http/t$b;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/t;->q(Lcom/transsion/transfer/androidasync/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/j;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/t;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/j;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$b;->b:Lcom/transsion/transfer/androidasync/http/t;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/t$b;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$b;->a:Lcom/transsion/transfer/androidasync/j;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$b;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    return-void
.end method
