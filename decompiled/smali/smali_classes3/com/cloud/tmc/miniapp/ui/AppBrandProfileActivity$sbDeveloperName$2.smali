.class final Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbDeveloperName$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/cloud/tmc/miniapp/widget/SettingBar;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbDeveloperName$2;->this$0:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbDeveloperName$2;->this$0:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->sb_developer_name:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbDeveloperName$2;->invoke()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    move-result-object v0

    return-object v0
.end method
