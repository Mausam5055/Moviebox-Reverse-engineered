.class public final Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/staff/MovieStaffActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/staff/MovieStaffActivity;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->e:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    iput p2, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->f:I

    iput p3, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->g:I

    iput p4, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->h:I

    iput p5, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->i:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 1

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->e:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    invoke-static {v0}, Lcom/transsion/moviedetail/staff/MovieStaffActivity;->v0(Lcom/transsion/moviedetail/staff/MovieStaffActivity;)Lcom/transsion/moviedetail/staff/s;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mMovieStaffAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->f:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->g:I

    goto :goto_1

    :cond_2
    :goto_0
    iget p1, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->g:I

    iget v0, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->h:I

    add-int/2addr p1, v0

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->i:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->i:I

    :goto_1
    return p1
.end method
