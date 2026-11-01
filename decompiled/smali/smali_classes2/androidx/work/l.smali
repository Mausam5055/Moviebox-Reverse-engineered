.class public abstract Landroidx/work/l;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Landroidx/work/k;
.end method

.method public final b(Ljava/lang/String;)Landroidx/work/k;
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/work/l;->a(Ljava/lang/String;)Landroidx/work/k;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/work/m;->a(Ljava/lang/String;)Landroidx/work/k;

    move-result-object v0

    :cond_0
    return-object v0
.end method
