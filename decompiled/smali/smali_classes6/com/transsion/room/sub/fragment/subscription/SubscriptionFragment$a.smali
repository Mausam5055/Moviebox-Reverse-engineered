.class public final Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;

    invoke-direct {v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
