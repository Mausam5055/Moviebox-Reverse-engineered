.class public final Lcom/transsion/publish/ui/SelectMusicActivity$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/SelectMusicActivity;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/SelectMusicActivity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/SelectMusicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/ui/SelectMusicActivity$d;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/ui/SelectMusicActivity$d;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectMusicActivity;->j0(Lcom/transsion/publish/ui/SelectMusicActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/ui/SelectMusicActivity$d;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectMusicActivity;->j0(Lcom/transsion/publish/ui/SelectMusicActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectMusicActivity$d;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectMusicActivity;->q0(Lcom/transsion/publish/ui/SelectMusicActivity;)V

    return-void
.end method
