.class public Lfv/b;
.super Ljava/lang/Object;

# interfaces
.implements Lfv/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 3

    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    new-instance v1, Lfv/b$a;

    invoke-direct {v1, p0, p1}, Lfv/b$a;-><init>(Lfv/b;Lcom/transsion/transfer/androidasync/p;)V

    new-instance v2, Lfv/b$b;

    invoke-direct {v2, p0, v0}, Lfv/b$b;-><init>(Lfv/b;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    invoke-interface {p1, v2}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    new-instance v2, Lfv/b$c;

    invoke-direct {v2, p0, v1, v0}, Lfv/b$c;-><init>(Lfv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    invoke-interface {p1, v2}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    return-object v1
.end method
