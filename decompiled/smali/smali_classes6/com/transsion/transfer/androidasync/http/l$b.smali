.class Lcom/transsion/transfer/androidasync/http/l$b;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/l;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/l;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l$b;->a:Lcom/transsion/transfer/androidasync/http/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l$b;->a:Lcom/transsion/transfer/androidasync/http/l;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/l;->e()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l$b;->a:Lcom/transsion/transfer/androidasync/http/l;

    new-instance v1, Lcom/transsion/transfer/androidasync/http/ConnectionClosedException;

    const-string v2, "connection closed before headers received."

    invoke-direct {v1, v2, p1}, Lcom/transsion/transfer/androidasync/http/ConnectionClosedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/l;->M(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l$b;->a:Lcom/transsion/transfer/androidasync/http/l;

    iget-boolean v1, v0, Lcom/transsion/transfer/androidasync/http/l;->k:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/transsion/transfer/androidasync/http/ConnectionClosedException;

    const-string v2, "connection closed before response completed."

    invoke-direct {v1, v2, p1}, Lcom/transsion/transfer/androidasync/http/ConnectionClosedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/l;->M(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l$b;->a:Lcom/transsion/transfer/androidasync/http/l;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/l;->M(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
