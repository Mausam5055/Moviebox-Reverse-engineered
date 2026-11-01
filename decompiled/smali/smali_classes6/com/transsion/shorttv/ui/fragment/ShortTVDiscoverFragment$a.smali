.class public final Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;
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

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$a;ZLandroid/os/Bundle;ILjava/lang/Object;)Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$a;->a(ZLandroid/os/Bundle;)Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ZLandroid/os/Bundle;)Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;
    .locals 2

    new-instance v0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-direct {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    if-eqz p2, :cond_0

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p2, "arg_has_top_tabs"

    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
