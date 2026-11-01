.class public final synthetic Lcom/transsion/room/fragment/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# instance fields
.field public final synthetic a:Lcom/transsion/room/fragment/RoomDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/fragment/RoomDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/fragment/s;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    return-void
.end method


# virtual methods
.method public final onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/fragment/s;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    invoke-static {v0, p1, p2}, Lcom/transsion/room/fragment/RoomDetailFragment;->w0(Lcom/transsion/room/fragment/RoomDetailFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method
