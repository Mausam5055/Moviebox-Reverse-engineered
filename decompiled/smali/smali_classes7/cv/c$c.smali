.class Lcv/c$c;
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
.field final synthetic a:Lcom/transsion/transfer/androidasync/s;

.field final synthetic b:Lcv/c;


# direct methods
.method constructor <init>(Lcv/c;Lcom/transsion/transfer/androidasync/s;)V
    .locals 0

    iput-object p1, p0, Lcv/c$c;->b:Lcv/c;

    iput-object p2, p0, Lcv/c$c;->a:Lcom/transsion/transfer/androidasync/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue(Lcom/transsion/transfer/androidasync/future/Continuation;Lbv/a;)V
    .locals 1

    const-string p1, "\r\n"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object v0, p0, Lcv/c$c;->a:Lcom/transsion/transfer/androidasync/s;

    invoke-static {v0, p1, p2}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLbv/a;)V

    iget-object p2, p0, Lcv/c$c;->b:Lcv/c;

    iget v0, p2, Lcv/c;->n:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p2, Lcv/c;->n:I

    return-void
.end method
