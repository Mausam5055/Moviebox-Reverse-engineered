.class public final Lfs/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfs/b$a;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 1

    invoke-static {}, Lfs/b;->a()Lfs/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lfs/b$a;->b()Lfs/a;

    move-result-object v0

    invoke-static {v0}, Lfs/b;->b(Lfs/a;)V

    :cond_0
    return-void
.end method

.method private final b()Lfs/a;
    .locals 1

    sget-object v0, Lis/b;->a:Lis/b$a;

    invoke-virtual {v0}, Lis/b$a;->a()Lis/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lis/b;->a:Lis/b$a;

    invoke-virtual {v0, p1}, Lis/b$a;->b(Landroid/app/Application;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    invoke-direct {p0}, Lfs/b$a;->a()V

    invoke-static {}, Lfs/b;->a()Lfs/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lfs/a;->a(I)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Lfs/b$a;->a()V

    invoke-static {}, Lfs/b;->a()Lfs/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lfs/a;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
