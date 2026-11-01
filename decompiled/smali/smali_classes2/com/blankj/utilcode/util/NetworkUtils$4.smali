.class Lcom/blankj/utilcode/util/NetworkUtils$4;
.super Lcom/blankj/utilcode/util/Utils$Task;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/Utils$Task<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/Utils$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/Utils$Task;-><init>(Lcom/blankj/utilcode/util/Utils$b;)V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->u()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/NetworkUtils$4;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
