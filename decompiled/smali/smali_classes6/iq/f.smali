.class public final synthetic Liq/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liq/f;->a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Liq/f;->a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;

    check-cast p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;

    invoke-static {v0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->u0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
