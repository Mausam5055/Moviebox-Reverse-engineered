.class public final Lcom/transsion/audio/fragment/AudioBottomSheetFragment$e;
.super Ljava/lang/Object;

# interfaces
.implements Laj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->H0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/adapter/dialog/ClearTipsDialog;

.field final synthetic b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/transsion/audio/adapter/dialog/ClearTipsDialog;Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$e;->a:Lcom/transsion/audio/adapter/dialog/ClearTipsDialog;

    iput-object p2, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$e;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$e;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->s0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/transsion/audio/adapter/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_0
    sget-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager;->n()V

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$e;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$e;->a:Lcom/transsion/audio/adapter/dialog/ClearTipsDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
