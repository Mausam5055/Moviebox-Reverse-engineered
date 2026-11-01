.class public final synthetic Liq/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liq/c;->a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Liq/c;->a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;

    invoke-static {v0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    return-void
.end method
