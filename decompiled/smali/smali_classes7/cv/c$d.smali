.class Lcv/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcv/c;->C(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcv/d;

.field final synthetic b:Lcom/transsion/transfer/androidasync/s;

.field final synthetic c:Lcv/c;


# direct methods
.method constructor <init>(Lcv/c;Lcv/d;Lcom/transsion/transfer/androidasync/s;)V
    .locals 0

    iput-object p1, p0, Lcv/c$d;->c:Lcv/c;

    iput-object p2, p0, Lcv/c$d;->a:Lcv/d;

    iput-object p3, p0, Lcv/c$d;->b:Lcom/transsion/transfer/androidasync/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue(Lcom/transsion/transfer/androidasync/future/Continuation;Lbv/a;)V
    .locals 4

    iget-object p1, p0, Lcv/c$d;->a:Lcv/d;

    invoke-virtual {p1}, Lcv/d;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcv/c$d;->c:Lcv/c;

    iget v2, p1, Lcv/c;->n:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p1, Lcv/c;->n:I

    :cond_0
    iget-object p1, p0, Lcv/c$d;->a:Lcv/d;

    iget-object v0, p0, Lcv/c$d;->b:Lcom/transsion/transfer/androidasync/s;

    invoke-virtual {p1, v0, p2}, Lcv/d;->d(Lcom/transsion/transfer/androidasync/s;Lbv/a;)V

    return-void
.end method
