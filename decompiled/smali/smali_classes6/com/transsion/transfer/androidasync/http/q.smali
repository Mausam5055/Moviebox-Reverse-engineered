.class public final synthetic Lcom/transsion/transfer/androidasync/http/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/g;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/t;

.field public final synthetic b:Lcom/transsion/transfer/androidasync/http/g$a;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/q;->a:Lcom/transsion/transfer/androidasync/http/t;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/q;->b:Lcom/transsion/transfer/androidasync/http/g$a;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/q;->c:Landroid/net/Uri;

    iput p4, p0, Lcom/transsion/transfer/androidasync/http/q;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/q;->a:Lcom/transsion/transfer/androidasync/http/t;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/q;->b:Lcom/transsion/transfer/androidasync/http/g$a;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/q;->c:Landroid/net/Uri;

    iget v3, p0, Lcom/transsion/transfer/androidasync/http/q;->d:I

    move-object v5, p2

    check-cast v5, Lcom/transsion/transfer/androidasync/j;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/t;->i(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILjava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    return-void
.end method
