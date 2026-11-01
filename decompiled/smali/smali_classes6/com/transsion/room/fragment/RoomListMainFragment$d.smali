.class public final Lcom/transsion/room/fragment/RoomListMainFragment$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomListMainFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomListMainFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListMainFragment$d;->a:Lcom/transsion/room/fragment/RoomListMainFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/room/fragment/RoomMyListFragment;->o:Lcom/transsion/room/fragment/RoomMyListFragment$a;

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment$d;->a:Lcom/transsion/room/fragment/RoomListMainFragment;

    invoke-static {v0}, Lcom/transsion/room/fragment/RoomListMainFragment;->c0(Lcom/transsion/room/fragment/RoomListMainFragment;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/room/fragment/RoomMyListFragment$a;->a(ZLjava/lang/String;)Lcom/transsion/room/fragment/RoomMyListFragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/room/fragment/RoomFilterListFragment;->f:Lcom/transsion/room/fragment/RoomFilterListFragment$a;

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment$d;->a:Lcom/transsion/room/fragment/RoomListMainFragment;

    invoke-static {v0}, Lcom/transsion/room/fragment/RoomListMainFragment;->c0(Lcom/transsion/room/fragment/RoomListMainFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/room/fragment/RoomFilterListFragment$a;->a(Z)Lcom/transsion/room/fragment/RoomFilterListFragment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment$d;->a:Lcom/transsion/room/fragment/RoomListMainFragment;

    invoke-static {v0}, Lcom/transsion/room/fragment/RoomListMainFragment;->b0(Lcom/transsion/room/fragment/RoomListMainFragment;)[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
