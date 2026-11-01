.class public final synthetic Lcom/transsion/moviedetail/staff/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/staff/MovieStaffActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/staff/j;->a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/j;->a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lkotlin/Pair;

    invoke-static {v0, p1, p2}, Lcom/transsion/moviedetail/staff/MovieStaffActivity;->j0(Lcom/transsion/moviedetail/staff/MovieStaffActivity;ILkotlin/Pair;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
