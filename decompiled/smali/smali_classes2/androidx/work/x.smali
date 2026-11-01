.class final Landroidx/work/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/w;


# instance fields
.field private final c:Landroidx/lifecycle/LiveData;

.field private final d:Lcom/google/common/util/concurrent/r;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/google/common/util/concurrent/r;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "future"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/x;->c:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Landroidx/work/x;->d:Lcom/google/common/util/concurrent/r;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/util/concurrent/r;
    .locals 1

    iget-object v0, p0, Landroidx/work/x;->d:Lcom/google/common/util/concurrent/r;

    return-object v0
.end method
