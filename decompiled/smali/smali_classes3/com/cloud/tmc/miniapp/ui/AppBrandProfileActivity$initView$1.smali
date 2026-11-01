.class final Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$initView$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$initView$1;->this$0:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$initView$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$initView$1;->this$0:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    return-void
.end method
