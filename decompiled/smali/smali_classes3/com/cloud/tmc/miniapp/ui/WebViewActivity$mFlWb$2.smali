.class final Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mFlWb$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/WebViewActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mFlWb$2;->this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/FrameLayout;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mFlWb$2;->this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->fl_wb:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mFlWb$2;->invoke()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
