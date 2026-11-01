.class public final synthetic Lcom/transsion/transfer/androidasync/future/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/d;


# instance fields
.field public final synthetic a:Ljava/util/Iterator;

.field public final synthetic b:Lcom/transsion/transfer/androidasync/future/z;

.field public final synthetic c:Lcom/transsion/transfer/androidasync/future/w;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/k;->a:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/future/k;->b:Lcom/transsion/transfer/androidasync/future/z;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/future/k;->c:Lcom/transsion/transfer/androidasync/future/w;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/k;->a:Ljava/util/Iterator;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/future/k;->b:Lcom/transsion/transfer/androidasync/future/z;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/future/k;->c:Lcom/transsion/transfer/androidasync/future/w;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/transfer/androidasync/future/l;->a(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V

    return-void
.end method
