.class public final Lcom/transsion/ugcvideodetail/hepler/subtitle/a;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->a:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->b:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->c:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d:Landroidx/lifecycle/b0;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->b:Landroidx/lifecycle/b0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->c:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->a:Landroidx/lifecycle/b0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final d()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->a:Landroidx/lifecycle/b0;

    return-object v0
.end method
