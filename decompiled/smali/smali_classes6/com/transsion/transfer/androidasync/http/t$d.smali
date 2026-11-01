.class Lcom/transsion/transfer/androidasync/http/t$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

.field c:Lcom/transsion/transfer/androidasync/util/ArrayDeque;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/t$d;->b:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    new-instance v0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/t$d;->c:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    return-void
.end method
