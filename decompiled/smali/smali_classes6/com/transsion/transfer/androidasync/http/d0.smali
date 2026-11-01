.class public final synthetic Lcom/transsion/transfer/androidasync/http/d0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/f0;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/f0;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/d0;->a:Lcom/transsion/transfer/androidasync/http/f0;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/d0;->b:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/d0;->a:Lcom/transsion/transfer/androidasync/http/f0;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/d0;->b:[B

    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/http/f0;->j(Lcom/transsion/transfer/androidasync/http/f0;[B)V

    return-void
.end method
