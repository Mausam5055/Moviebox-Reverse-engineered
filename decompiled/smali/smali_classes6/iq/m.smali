.class public final synthetic Liq/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liq/m;->a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Liq/m;->a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionListFragment;

    check-cast p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData;

    invoke-static {v0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionListFragment;->n0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionListFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
