.class Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$a;
.super Lcom/blankj/utilcode/util/Utils$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;I)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$a;->b:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$a;->a:I

    invoke-direct {p0}, Lcom/blankj/utilcode/util/Utils$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$a;->b:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->g(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$a;->b:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    iget v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$a;->a:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->h(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;Landroid/app/Activity;IZ)V

    :cond_0
    return-void
.end method
