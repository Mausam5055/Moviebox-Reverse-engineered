.class public final Lcom/transsion/publish/ui/SelectImageActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/SelectImageActivity;->O0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/SelectImageActivity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/SelectImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/ui/SelectImageActivity$c;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$c;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectImageActivity;->q0(Lcom/transsion/publish/ui/SelectImageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$c;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectImageActivity;->t0(Lcom/transsion/publish/ui/SelectImageActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onGranted()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$c;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectImageActivity;->q0(Lcom/transsion/publish/ui/SelectImageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$c;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectImageActivity;->w0(Lcom/transsion/publish/ui/SelectImageActivity;)V

    return-void
.end method
