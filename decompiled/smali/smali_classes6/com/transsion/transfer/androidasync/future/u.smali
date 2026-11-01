.class public final synthetic Lcom/transsion/transfer/androidasync/future/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/w$a;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/future/w;

.field public final synthetic b:Lcom/transsion/transfer/androidasync/future/e;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/u;->a:Lcom/transsion/transfer/androidasync/future/w;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/future/u;->b:Lcom/transsion/transfer/androidasync/future/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/u;->a:Lcom/transsion/transfer/androidasync/future/w;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/future/u;->b:Lcom/transsion/transfer/androidasync/future/e;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/transfer/androidasync/future/w;->i(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/e;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V

    return-void
.end method
