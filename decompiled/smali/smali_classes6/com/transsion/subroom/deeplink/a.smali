.class public final synthetic Lcom/transsion/subroom/deeplink/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/subroom/deeplink/DeepLinkHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subroom/deeplink/DeepLinkHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/deeplink/a;->a:Lcom/transsion/subroom/deeplink/DeepLinkHandler;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subroom/deeplink/a;->a:Lcom/transsion/subroom/deeplink/DeepLinkHandler;

    invoke-static {v0}, Lcom/transsion/subroom/deeplink/DeepLinkHandler;->R(Lcom/transsion/subroom/deeplink/DeepLinkHandler;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
