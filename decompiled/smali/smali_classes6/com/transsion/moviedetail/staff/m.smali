.class public final synthetic Lcom/transsion/moviedetail/staff/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/staff/MovieStaffActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/staff/m;->a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/m;->a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    check-cast p1, Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/staff/MovieStaffActivity;->f0(Lcom/transsion/moviedetail/staff/MovieStaffActivity;Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
