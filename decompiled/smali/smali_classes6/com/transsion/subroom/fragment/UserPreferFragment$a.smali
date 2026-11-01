.class public final Lcom/transsion/subroom/fragment/UserPreferFragment$a;
.super Landroidx/recyclerview/widget/DiffUtil$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/fragment/UserPreferFragment;->f0(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/mb/config/download/UserPreferOption;Lcom/transsion/mb/config/download/UserPreferOption;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/mb/config/download/UserPreferOption;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/mb/config/download/UserPreferOption;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/transsion/mb/config/download/UserPreferOption;

    check-cast p2, Lcom/transsion/mb/config/download/UserPreferOption;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/fragment/UserPreferFragment$a;->a(Lcom/transsion/mb/config/download/UserPreferOption;Lcom/transsion/mb/config/download/UserPreferOption;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/transsion/mb/config/download/UserPreferOption;

    check-cast p2, Lcom/transsion/mb/config/download/UserPreferOption;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/fragment/UserPreferFragment$a;->b(Lcom/transsion/mb/config/download/UserPreferOption;Lcom/transsion/mb/config/download/UserPreferOption;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/transsion/mb/config/download/UserPreferOption;Lcom/transsion/mb/config/download/UserPreferOption;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/mb/config/download/UserPreferOption;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/mb/config/download/UserPreferOption;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
