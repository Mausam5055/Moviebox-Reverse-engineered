.class public final Landroidx/navigation/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroidx/navigation/o;

.field private b:Z

.field private c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/navigation/d;
    .locals 5

    iget-object v0, p0, Landroidx/navigation/d$a;->a:Landroidx/navigation/o;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/navigation/o;->c:Landroidx/navigation/o$l;

    iget-object v1, p0, Landroidx/navigation/d$a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/navigation/o$l;->c(Ljava/lang/Object;)Landroidx/navigation/o;

    move-result-object v0

    :cond_0
    new-instance v1, Landroidx/navigation/d;

    iget-boolean v2, p0, Landroidx/navigation/d$a;->b:Z

    iget-object v3, p0, Landroidx/navigation/d$a;->c:Ljava/lang/Object;

    iget-boolean v4, p0, Landroidx/navigation/d$a;->d:Z

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/navigation/d;-><init>(Landroidx/navigation/o;ZLjava/lang/Object;Z)V

    return-object v1
.end method

.method public final b(Ljava/lang/Object;)Landroidx/navigation/d$a;
    .locals 0

    iput-object p1, p0, Landroidx/navigation/d$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/navigation/d$a;->d:Z

    return-object p0
.end method

.method public final c(Z)Landroidx/navigation/d$a;
    .locals 0

    iput-boolean p1, p0, Landroidx/navigation/d$a;->b:Z

    return-object p0
.end method

.method public final d(Landroidx/navigation/o;)Landroidx/navigation/d$a;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/d$a;->a:Landroidx/navigation/o;

    return-object p0
.end method
