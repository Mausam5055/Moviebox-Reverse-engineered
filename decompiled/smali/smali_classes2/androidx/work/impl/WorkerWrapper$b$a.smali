.class public final Landroidx/work/impl/WorkerWrapper$b$a;
.super Landroidx/work/impl/WorkerWrapper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkerWrapper$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/work/s$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/work/impl/WorkerWrapper$b$a;-><init>(Landroidx/work/s$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/s$a;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$b$a;->a:Landroidx/work/s$a;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/s$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Landroidx/work/s$a$a;

    invoke-direct {p1}, Landroidx/work/s$a$a;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper$b$a;-><init>(Landroidx/work/s$a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/s$a;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$b$a;->a:Landroidx/work/s$a;

    return-object v0
.end method
