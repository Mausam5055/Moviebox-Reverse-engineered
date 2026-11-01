.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TmcFragmentManagerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/IFragmentManagerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragmentManager(Landroidx/fragment/app/FragmentActivity;)Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->main:I

    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    return-object v0
.end method
