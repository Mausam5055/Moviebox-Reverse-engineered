.class Lcom/transsion/sdk/oneid/d$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sdk/oneid/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/sdk/oneid/d;


# direct methods
.method constructor <init>(Lcom/transsion/sdk/oneid/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sdk/oneid/d$a;->a:Lcom/transsion/sdk/oneid/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplyMessenger msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sdk/oneid/d$a;->a:Lcom/transsion/sdk/oneid/d;

    invoke-static {v0}, Lcom/transsion/sdk/oneid/d;->a(Lcom/transsion/sdk/oneid/d;)Landroid/os/Handler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sdk/oneid/d$a;->a:Lcom/transsion/sdk/oneid/d;

    invoke-static {v0}, Lcom/transsion/sdk/oneid/d;->a(Lcom/transsion/sdk/oneid/d;)Landroid/os/Handler$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object p1, p0, Lcom/transsion/sdk/oneid/d$a;->a:Lcom/transsion/sdk/oneid/d;

    invoke-static {p1}, Lcom/transsion/sdk/oneid/d;->c(Lcom/transsion/sdk/oneid/d;)V

    return-void
.end method
