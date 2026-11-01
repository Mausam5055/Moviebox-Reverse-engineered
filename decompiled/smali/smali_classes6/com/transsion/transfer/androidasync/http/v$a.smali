.class Lcom/transsion/transfer/androidasync/http/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/v;->f(Lcom/transsion/transfer/androidasync/http/g$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbv/a;

.field final synthetic b:Lcom/transsion/transfer/androidasync/n;

.field final synthetic c:Lcom/transsion/transfer/androidasync/http/v;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/v;Lbv/a;Lcom/transsion/transfer/androidasync/n;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$a;->c:Lcom/transsion/transfer/androidasync/http/v;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/v$a;->a:Lbv/a;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/v$a;->b:Lcom/transsion/transfer/androidasync/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/v$a;->a:Lbv/a;

    invoke-static {v0, p1}, Lcom/transsion/transfer/androidasync/a0;->b(Lbv/a;Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$a;->b:Lcom/transsion/transfer/androidasync/n;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/n;->g(Z)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$a;->b:Lcom/transsion/transfer/androidasync/n;

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/n;->q(I)V

    :cond_0
    return-void
.end method
