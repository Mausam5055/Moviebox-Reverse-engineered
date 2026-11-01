.class Lcom/transsion/transfer/androidasync/http/n$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/n$b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/j;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/n$b;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/n$b;Lcom/transsion/transfer/androidasync/j;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->b:Lcom/transsion/transfer/androidasync/http/n$b;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->b:Lcom/transsion/transfer/androidasync/http/n$b;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/n$b;->a:Lbv/b;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0, p1, v1}, Lbv/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    return-void

    :cond_0
    new-instance p1, Lcom/transsion/transfer/androidasync/v;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/v;-><init>()V

    new-instance v0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/n$b$a$a;-><init>(Lcom/transsion/transfer/androidasync/http/n$b$a;)V

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/v;->a(Lcom/transsion/transfer/androidasync/v$a;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/n$b$a$b;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/n$b$a$b;-><init>(Lcom/transsion/transfer/androidasync/http/n$b$a;)V

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    return-void
.end method
