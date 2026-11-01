.class Lcom/facebook/biddingkit/logging/e$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/logging/e;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/biddingkit/logging/e;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/logging/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/e$a;->a:Lcom/facebook/biddingkit/logging/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/facebook/biddingkit/logging/e;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/facebook/biddingkit/logging/f;->g(Lcom/facebook/biddingkit/logging/e;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/facebook/biddingkit/logging/e;

    invoke-virtual {p0, p1}, Lcom/facebook/biddingkit/logging/e$a;->a([Lcom/facebook/biddingkit/logging/e;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
