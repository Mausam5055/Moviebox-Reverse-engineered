.class public final Lcom/transsion/moviedetail/staff/y$a;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/staff/y;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/moviedetail/staff/y;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/staff/y;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/staff/y$a;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$a;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->e(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/moviedetail/staff/bean/MovieStaffList;

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/staff/y$a;->e(Lcom/transsion/moviedetail/staff/bean/MovieStaffList;)V

    return-void
.end method

.method public e(Lcom/transsion/moviedetail/staff/bean/MovieStaffList;)V
    .locals 1

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$a;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-static {v0}, Lcom/transsion/moviedetail/staff/y;->e(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
