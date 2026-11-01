.class Lcom/transsion/transfer/androidasync/http/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/n;->C(Lcom/transsion/transfer/androidasync/http/g$a;Lbv/b;)Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbv/b;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/n;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/n;Lbv/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$a;->b:Lcom/transsion/transfer/androidasync/http/n;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/n$a;->a:Lbv/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/a;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$a;->a:Lbv/b;

    invoke-interface {v0, p1, p2}, Lbv/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    return-void
.end method
