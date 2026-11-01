.class Lcv/c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcv/c$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcv/c$a;


# direct methods
.method constructor <init>(Lcv/c$a;)V
    .locals 0

    iput-object p1, p0, Lcv/c$a$a;->a:Lcv/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    iget-object p1, p0, Lcv/c$a$a;->a:Lcv/c$a;

    iget-object p1, p1, Lcv/c$a;->b:Lcv/c;

    iget-object p1, p1, Lcv/c;->k:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    return-void
.end method
