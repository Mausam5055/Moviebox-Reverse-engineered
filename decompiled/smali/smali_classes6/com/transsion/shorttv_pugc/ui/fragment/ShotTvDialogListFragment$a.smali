.class public final Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;
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

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/ranges/IntRange;)Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;
    .locals 4

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->f()I

    move-result v2

    const-string v3, "start"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "end"

    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->h()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
