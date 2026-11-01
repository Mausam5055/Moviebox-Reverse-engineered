.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;
.super Lcom/transsion/transfer/androidasync/future/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field public f:Lcom/transsion/transfer/androidasync/j;

.field public g:Lcom/transsion/transfer/androidasync/future/a;

.field public h:Ljava/lang/Runnable;

.field final synthetic i:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;


# direct methods
.method private constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->i:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    invoke-super {p0}, Lcom/transsion/transfer/androidasync/future/w;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->f:Lcom/transsion/transfer/androidasync/j;

    if-eqz v0, :cond_1

    new-instance v1, Lbv/d$a;

    invoke-direct {v1}, Lbv/d$a;-><init>()V

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->g:Lcom/transsion/transfer/androidasync/future/a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/future/a;->cancel()Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
