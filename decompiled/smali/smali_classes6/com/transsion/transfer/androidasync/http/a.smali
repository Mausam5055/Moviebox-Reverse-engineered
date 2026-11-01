.class public final synthetic Lcom/transsion/transfer/androidasync/http/a;
.super Ljava/lang/Object;

# interfaces
.implements Ldv/a;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

.field public final synthetic b:Ldv/b;

.field public final synthetic c:Lcom/transsion/transfer/androidasync/future/w;

.field public final synthetic d:Lfv/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lfv/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/a;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/a;->b:Ldv/b;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/a;->c:Lcom/transsion/transfer/androidasync/future/w;

    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/a;->d:Lfv/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/a;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/a;->b:Ldv/b;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/a;->c:Lcom/transsion/transfer/androidasync/future/w;

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/a;->d:Lfv/a;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->b(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lfv/a;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V

    return-void
.end method
