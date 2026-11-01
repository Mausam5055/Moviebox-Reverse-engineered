.class public final synthetic Lfv/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/y;


# instance fields
.field public final synthetic a:Lfv/f;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lfv/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfv/e;->a:Lfv/f;

    iput-object p2, p0, Lfv/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfv/e;->a:Lfv/f;

    iget-object v1, p0, Lfv/e;->b:Ljava/lang/String;

    check-cast p1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-static {v0, v1, p1}, Lfv/f;->b(Lfv/f;Ljava/lang/String;Lcom/transsion/transfer/androidasync/ByteBufferList;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
