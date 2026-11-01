.class public final synthetic Lcom/transsion/moviedetail/staff/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/staff/MovieStaffActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/staff/h;->a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/h;->a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    invoke-static {v0}, Lcom/transsion/moviedetail/staff/MovieStaffActivity;->u0(Lcom/transsion/moviedetail/staff/MovieStaffActivity;)V

    return-void
.end method
