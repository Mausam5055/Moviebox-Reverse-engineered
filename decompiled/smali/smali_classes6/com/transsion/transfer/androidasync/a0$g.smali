.class Lcom/transsion/transfer/androidasync/a0$g;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/a0;->c(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/p;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/p;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$g;->a:Lcom/transsion/transfer/androidasync/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$g;->a:Lcom/transsion/transfer/androidasync/p;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->resume()V

    return-void
.end method
