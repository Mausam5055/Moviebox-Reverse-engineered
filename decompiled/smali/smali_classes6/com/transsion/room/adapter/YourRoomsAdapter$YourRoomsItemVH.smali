.class public final Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/adapter/YourRoomsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "YourRoomsItemVH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lbq/a0;",
        "viewBinding",
        "<init>",
        "(Lbq/a0;)V",
        "a",
        "Lbq/a0;",
        "f",
        "()Lbq/a0;",
        "Room_psRelease"
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
.field private final a:Lbq/a0;


# direct methods
.method public constructor <init>(Lbq/a0;)V
    .locals 2

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbq/a0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;->a:Lbq/a0;

    return-void
.end method


# virtual methods
.method public final f()Lbq/a0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;->a:Lbq/a0;

    return-object v0
.end method
