.class public final synthetic Lcom/transsion/transfer/androidasync/http/c;
.super Ljava/lang/Object;

# interfaces
.implements Ldv/a;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/future/w;

.field public final synthetic b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;

.field public final synthetic c:Lcom/transsion/transfer/androidasync/http/j;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/c;->a:Lcom/transsion/transfer/androidasync/future/w;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/c;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/c;->c:Lcom/transsion/transfer/androidasync/http/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/c;->a:Lcom/transsion/transfer/androidasync/future/w;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/c;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/c;->c:Lcom/transsion/transfer/androidasync/http/j;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V

    return-void
.end method
