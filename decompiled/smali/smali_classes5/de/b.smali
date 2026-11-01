.class public final synthetic Lde/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lcom/hisavana/mediation/bridge/MediationJsBridge;

.field public final synthetic b:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/mediation/bridge/MediationJsBridge;Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/b;->a:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    iput-object p2, p0, Lde/b;->b:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 2

    iget-object v0, p0, Lde/b;->a:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    iget-object v1, p0, Lde/b;->b:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    invoke-static {v0, v1}, Lcom/hisavana/mediation/bridge/MediationJsBridge;->a(Lcom/hisavana/mediation/bridge/MediationJsBridge;Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V

    return-void
.end method
