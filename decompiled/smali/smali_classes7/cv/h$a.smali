.class Lcv/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcv/h;->r(Lcom/transsion/transfer/androidasync/p;Lbv/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field final synthetic b:Lcv/h;


# direct methods
.method constructor <init>(Lcv/h;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    iput-object p1, p0, Lcv/h$a;->b:Lcv/h;

    iput-object p2, p0, Lcv/h$a;->a:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    iget-object p1, p0, Lcv/h$a;->a:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    return-void
.end method
