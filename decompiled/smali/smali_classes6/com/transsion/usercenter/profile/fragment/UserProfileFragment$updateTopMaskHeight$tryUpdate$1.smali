.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $vb:Lfw/q0;

.field final synthetic this$0:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;


# direct methods
.method constructor <init>(Lfw/q0;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->$vb:Lfw/q0;

    iput-object p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->this$0:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->$vb:Lfw/q0;

    iget-object v0, v0, Lfw/q0;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->$vb:Lfw/q0;

    iget-object v1, v1, Lfw/q0;->u:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->$vb:Lfw/q0;

    iget-object v2, v2, Lfw/q0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v3, v0, v1

    add-int/2addr v3, v2

    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->this$0:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {v4, v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->J0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;I)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->this$0:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {v0, v1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->K0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;I)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->this$0:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {v0, v2}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->L0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;I)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->$vb:Lfw/q0;

    invoke-virtual {v0}, Lfw/q0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/transsion/usercenter/R$id;->v_top_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    add-int/lit16 v4, v3, 0x12c

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->$vb:Lfw/q0;

    iget-object v0, v0, Lfw/q0;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->$vb:Lfw/q0;

    iget-object v1, v1, Lfw/q0;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->$vb:Lfw/q0;

    iget-object v0, v0, Lfw/q0;->k:Landroid/view/View;

    const-string v1, "ivTopBg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$updateTopMaskHeight$tryUpdate$1;->$vb:Lfw/q0;

    invoke-virtual {v0}, Lfw/q0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
