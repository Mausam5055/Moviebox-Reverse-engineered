.class public final Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lak/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;->initViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;->access$getCurExposurePosition$p(Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;)I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;->access$setCurExposurePosition$p(Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;I)V

    :cond_0
    return-void
.end method
