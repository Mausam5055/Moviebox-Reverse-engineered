.class public final synthetic Lcom/transsion/transfer/androidasync/http/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/g;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

.field public final synthetic b:Ldv/b;

.field public final synthetic c:Lcom/transsion/transfer/androidasync/future/w;

.field public final synthetic d:Lcom/transsion/transfer/androidasync/http/k;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/b;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/b;->b:Ldv/b;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/b;->c:Lcom/transsion/transfer/androidasync/future/w;

    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/b;->d:Lcom/transsion/transfer/androidasync/http/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/b;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/b;->b:Ldv/b;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/b;->c:Lcom/transsion/transfer/androidasync/future/w;

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/b;->d:Lcom/transsion/transfer/androidasync/http/k;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->c(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
