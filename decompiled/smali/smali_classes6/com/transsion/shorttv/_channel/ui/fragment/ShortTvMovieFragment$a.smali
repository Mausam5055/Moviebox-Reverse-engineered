.class public final Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;
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

    invoke-direct {p0}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hide_header_bg"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "filter_json"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    invoke-direct {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
