.class Lcom/transsion/transfer/androidasync/future/w$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/future/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field b:Ljava/lang/Object;

.field c:Lcom/transsion/transfer/androidasync/future/w$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/w$b;->c:Lcom/transsion/transfer/androidasync/future/w$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/future/w$b;->a:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/future/w$b;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/transsion/transfer/androidasync/future/w$b;->c:Lcom/transsion/transfer/androidasync/future/w$a;

    iput-object v3, p0, Lcom/transsion/transfer/androidasync/future/w$b;->a:Ljava/lang/Exception;

    iput-object v3, p0, Lcom/transsion/transfer/androidasync/future/w$b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/transfer/androidasync/future/w$a;->a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method
