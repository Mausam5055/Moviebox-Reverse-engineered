.class public Lfv/d;
.super Ljava/lang/Object;

# interfaces
.implements Lfv/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    new-instance v0, Lfv/f;

    invoke-direct {v0}, Lfv/f;-><init>()V

    invoke-virtual {v0, p1}, Lfv/f;->a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    new-instance v0, Lfv/c;

    invoke-direct {v0}, Lfv/c;-><init>()V

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/future/f;->h(Lcom/transsion/transfer/androidasync/future/y;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    return-object p1
.end method
