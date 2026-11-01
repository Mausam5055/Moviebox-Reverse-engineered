.class public abstract Lcom/transsion/transfer/androidasync/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/p;


# instance fields
.field private a:Z

.field b:Lbv/a;

.field c:Lbv/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public I()Lbv/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/q;->c:Lbv/d;

    return-object v0
.end method

.method public final L()Lbv/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/q;->b:Lbv/a;

    return-object v0
.end method

.method protected M(Ljava/lang/Exception;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/q;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/q;->a:Z

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/q;->L()Lbv/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/q;->L()Lbv/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final s(Lbv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/q;->b:Lbv/a;

    return-void
.end method

.method public t(Lbv/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/q;->c:Lbv/d;

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
