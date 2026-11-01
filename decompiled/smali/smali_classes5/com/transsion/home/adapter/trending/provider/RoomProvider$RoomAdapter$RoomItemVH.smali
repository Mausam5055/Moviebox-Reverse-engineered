.class public final Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoomItemVH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lgl/h0;",
        "viewBinding",
        "<init>",
        "(Lgl/h0;)V",
        "a",
        "Lgl/h0;",
        "f",
        "()Lgl/h0;",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lgl/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lgl/h0;)V
    .locals 2

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lgl/h0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;->a:Lgl/h0;

    return-void
.end method


# virtual methods
.method public final f()Lgl/h0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;->a:Lgl/h0;

    return-object v0
.end method
