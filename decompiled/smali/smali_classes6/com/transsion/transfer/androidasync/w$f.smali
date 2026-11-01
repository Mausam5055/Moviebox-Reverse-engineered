.class Lcom/transsion/transfer/androidasync/w$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/w$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/w;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/w;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/w$f;->a:Lcom/transsion/transfer/androidasync/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/w$f;->b([B)V

    return-void
.end method

.method public b([B)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w$f;->a:Lcom/transsion/transfer/androidasync/w;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/w;->a(Lcom/transsion/transfer/androidasync/w;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
