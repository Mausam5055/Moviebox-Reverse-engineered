.class public final Lbp/v;
.super Lbp/q;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lbp/q;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void
.end method


# virtual methods
.method public m()I
    .locals 1

    sget v0, Lcom/transsion/postdetail/R$layout;->item_provider_room_post_nearby:I

    return v0
.end method
