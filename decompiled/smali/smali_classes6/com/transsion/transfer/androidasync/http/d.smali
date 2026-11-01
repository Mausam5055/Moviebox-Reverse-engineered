.class public final synthetic Lcom/transsion/transfer/androidasync/http/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;

.field public final synthetic b:Lcom/transsion/transfer/androidasync/http/j;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

.field public final synthetic e:Ldv/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/d;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/d;->b:Lcom/transsion/transfer/androidasync/http/j;

    iput p3, p0, Lcom/transsion/transfer/androidasync/http/d;->c:I

    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/d;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    iput-object p5, p0, Lcom/transsion/transfer/androidasync/http/d;->e:Ldv/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/d;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/d;->b:Lcom/transsion/transfer/androidasync/http/j;

    iget v2, p0, Lcom/transsion/transfer/androidasync/http/d;->c:I

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/d;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/d;->e:Ldv/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->U(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V

    return-void
.end method
