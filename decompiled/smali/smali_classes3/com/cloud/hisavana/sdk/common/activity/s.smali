.class public final synthetic Lcom/cloud/hisavana/sdk/common/activity/s;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/s;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/s;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/s;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/s;->b:Z

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
