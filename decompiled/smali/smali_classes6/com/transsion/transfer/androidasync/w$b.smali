.class Lcom/transsion/transfer/androidasync/w$b;
.super Lcom/transsion/transfer/androidasync/w$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/transfer/androidasync/w;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/w;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/w$b;->b:Lcom/transsion/transfer/androidasync/w;

    invoke-direct {p0, p2}, Lcom/transsion/transfer/androidasync/w$l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)Lcom/transsion/transfer/androidasync/w$l;
    .locals 0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/w$b;->b:Lcom/transsion/transfer/androidasync/w;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/w;->a(Lcom/transsion/transfer/androidasync/w;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->e()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method
