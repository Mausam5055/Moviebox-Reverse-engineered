.class public final Lcom/transsion/player/longvideo/ui/TestLongVodFragment$a;
.super Landroidx/activity/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/TestLongVodFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/TestLongVodFragment;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/TestLongVodFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/TestLongVodFragment$a;->a:Lcom/transsion/player/longvideo/ui/TestLongVodFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/TestLongVodFragment$a;->a:Lcom/transsion/player/longvideo/ui/TestLongVodFragment;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/TestLongVodFragment;->b0(Lcom/transsion/player/longvideo/ui/TestLongVodFragment;)Lfo/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lfo/a;->onBackPressed()Z

    :cond_0
    return-void
.end method
