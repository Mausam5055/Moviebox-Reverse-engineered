.class public final Lcom/transsion/postdetail/ui/dialog/o;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/ui/dialog/o;->a:Landroidx/lifecycle/b0;

    return-void
.end method


# virtual methods
.method public final b()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/dialog/o;->a:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final c(F)V
    .locals 1

    sget-object v0, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {v0, p1}, Lcom/transsion/baselib/helper/d;->g(F)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/dialog/o;->a:Landroidx/lifecycle/b0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
