.class public final Lcom/transsion/room/fragment/RoomBaseFragment$c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomBaseFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/fragment/RoomBaseFragment$c;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomBaseFragment$c;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/room/fragment/RoomBaseFragment;->m0(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/baseui/fragment/EmptyFragment;

    invoke-direct {p1}, Lcom/transsion/baseui/fragment/EmptyFragment;-><init>()V

    :cond_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomBaseFragment$c;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

    invoke-virtual {v0}, Lcom/transsion/room/fragment/RoomBaseFragment;->y0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
