.class Lcom/blankj/utilcode/util/ShellUtils$1;
.super Lcom/blankj/utilcode/util/Utils$Task;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/Utils$Task<",
        "Lcom/blankj/utilcode/util/z$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$commands:[Ljava/lang/String;

.field final synthetic val$isNeedResultMsg:Z

.field final synthetic val$isRooted:Z


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/Utils$b;[Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p2, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$commands:[Ljava/lang/String;

    iput-boolean p3, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$isRooted:Z

    iput-boolean p4, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$isNeedResultMsg:Z

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/Utils$Task;-><init>(Lcom/blankj/utilcode/util/Utils$b;)V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/blankj/utilcode/util/z$a;
    .locals 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$commands:[Ljava/lang/String;

    iget-boolean v1, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$isRooted:Z

    iget-boolean v2, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$isNeedResultMsg:Z

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/z;->b([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/z$a;

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

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShellUtils$1;->doInBackground()Lcom/blankj/utilcode/util/z$a;

    move-result-object v0

    return-object v0
.end method
