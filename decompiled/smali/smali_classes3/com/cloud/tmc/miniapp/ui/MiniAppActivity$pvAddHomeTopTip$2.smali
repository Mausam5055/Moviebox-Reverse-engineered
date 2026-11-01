.class final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeTopTip$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeTopTip$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeTopTip$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->pv_add_home_top_tip:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeTopTip$2;->invoke()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    move-result-object v0

    return-object v0
.end method
