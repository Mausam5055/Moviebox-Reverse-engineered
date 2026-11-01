.class public final synthetic Lcom/transsion/transfer/androidasync/http/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/z;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/t;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/transfer/androidasync/http/g$a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/t;ILcom/transsion/transfer/androidasync/http/g$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/o;->a:Lcom/transsion/transfer/androidasync/http/t;

    iput p2, p0, Lcom/transsion/transfer/androidasync/http/o;->b:I

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/o;->c:Lcom/transsion/transfer/androidasync/http/g$a;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/o;->a:Lcom/transsion/transfer/androidasync/http/t;

    iget v1, p0, Lcom/transsion/transfer/androidasync/http/o;->b:I

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/o;->c:Lcom/transsion/transfer/androidasync/http/g$a;

    check-cast p1, [Ljava/net/InetAddress;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/transfer/androidasync/http/t;->k(Lcom/transsion/transfer/androidasync/http/t;ILcom/transsion/transfer/androidasync/http/g$a;[Ljava/net/InetAddress;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    return-object p1
.end method
