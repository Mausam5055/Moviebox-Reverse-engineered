.class public final Lcom/transsion/room/fragment/RoomDetailFragment$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomDetailFragment;->initViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/fragment/RoomDetailFragment$c;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomDetailFragment$c;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/room/fragment/RoomDetailFragment;->A0(Lcom/transsion/room/fragment/RoomDetailFragment;I)V

    return-void
.end method
