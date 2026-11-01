.class public final Lcom/transsion/player/longvideo/ui/dialog/a;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/a;->a:Landroidx/lifecycle/b0;

    return-void
.end method


# virtual methods
.method public final b()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/a;->a:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final c(Lgo/b;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/a;->a:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
