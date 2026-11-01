.class public final synthetic Lcom/transsion/transfer/androidasync/http/s;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/b;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/future/w;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/future/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/s;->a:Lcom/transsion/transfer/androidasync/future/w;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/s;->a:Lcom/transsion/transfer/androidasync/future/w;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/transfer/androidasync/future/w;->H(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-void
.end method
