.class public final synthetic Lcom/transsion/transfer/androidasync/future/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/z;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/future/y;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/future/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/r;->a:Lcom/transsion/transfer/androidasync/future/y;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/r;->a:Lcom/transsion/transfer/androidasync/future/y;

    invoke-static {v0, p1}, Lcom/transsion/transfer/androidasync/future/w;->k(Lcom/transsion/transfer/androidasync/future/y;Ljava/lang/Object;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    return-object p1
.end method
