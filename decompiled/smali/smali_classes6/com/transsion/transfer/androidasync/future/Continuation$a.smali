.class Lcom/transsion/transfer/androidasync/future/Continuation$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/future/Continuation;->wrap()Lbv/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/transsion/transfer/androidasync/future/Continuation;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/future/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/Continuation$a;->b:Lcom/transsion/transfer/androidasync/future/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation$a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation$a;->a:Z

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation$a;->b:Lcom/transsion/transfer/androidasync/future/Continuation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/future/Continuation;->b(Lcom/transsion/transfer/androidasync/future/Continuation;Z)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/future/Continuation$a;->b:Lcom/transsion/transfer/androidasync/future/Continuation;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/future/Continuation;->c(Lcom/transsion/transfer/androidasync/future/Continuation;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation$a;->b:Lcom/transsion/transfer/androidasync/future/Continuation;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/future/Continuation;->reportCompleted(Ljava/lang/Exception;)V

    return-void
.end method
