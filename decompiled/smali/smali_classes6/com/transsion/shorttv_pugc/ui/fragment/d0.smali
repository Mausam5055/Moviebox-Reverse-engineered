.class public final synthetic Lcom/transsion/shorttv_pugc/ui/fragment/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

.field public final synthetic b:Lcom/transsion/shorttv_pugc/ui/adapter/o;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;Lcom/transsion/shorttv_pugc/ui/adapter/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/d0;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/d0;->b:Lcom/transsion/shorttv_pugc/ui/adapter/o;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/d0;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/d0;->b:Lcom/transsion/shorttv_pugc/ui/adapter/o;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;->f0(Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;Lcom/transsion/shorttv_pugc/ui/adapter/o;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
