.class public final Lcom/transsion/member/adapter/l$a;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/adapter/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/member/adapter/l$a;->a:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/member/adapter/l$a;->b:I

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/member/adapter/l$a;->c:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 4

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.transsion.member.adapter.TaskAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/member/adapter/l;

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/transsion/member/constants/TaskType;->TITLE:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v2}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget p3, p0, Lcom/transsion/member/adapter/l$a;->a:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_1
    :goto_0
    if-lez p2, :cond_4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/member/adapter/l;

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v0

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v0, :cond_3

    iget p3, p0, Lcom/transsion/member/adapter/l$a;->b:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_3
    :goto_1
    iget p3, p0, Lcom/transsion/member/adapter/l$a;->c:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    :cond_4
    :goto_2
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_5

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    return-void
.end method
