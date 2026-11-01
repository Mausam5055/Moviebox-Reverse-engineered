.class public Lfv/f;
.super Ljava/lang/Object;

# interfaces
.implements Lfv/a;


# instance fields
.field a:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lfv/f;Ljava/lang/String;Lcom/transsion/transfer/androidasync/ByteBufferList;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lfv/f;->c(Ljava/lang/String;Lcom/transsion/transfer/androidasync/ByteBufferList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Ljava/lang/String;Lcom/transsion/transfer/androidasync/ByteBufferList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfv/f;->a:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->z(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->v()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfv/b;

    invoke-direct {v1}, Lfv/b;-><init>()V

    invoke-virtual {v1, p1}, Lfv/b;->a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    new-instance v1, Lfv/e;

    invoke-direct {v1, p0, v0}, Lfv/e;-><init>(Lfv/f;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/future/f;->h(Lcom/transsion/transfer/androidasync/future/y;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    return-object p1
.end method
