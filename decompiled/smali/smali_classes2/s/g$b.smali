.class public final Ls/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Ls/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field final synthetic d:Ls/g;


# direct methods
.method public constructor <init>(Ls/g;)V
    .locals 0

    iput-object p1, p0, Ls/g$b;->d:Ls/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ls/g$b;->d:Ls/g;

    invoke-static {v0}, Ls/g;->c(Ls/g;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ls/g$b;->c:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public b(I)I
    .locals 2

    iget-object v0, p0, Ls/g$b;->d:Ls/g;

    invoke-static {v0}, Ls/g;->b(Ls/g;)[I

    move-result-object v0

    iget v1, p0, Ls/g$b;->b:I

    add-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method public final c()Ls/d;
    .locals 2

    iget-object v0, p0, Ls/g$b;->d:Ls/g;

    invoke-static {v0}, Ls/g;->d(Ls/g;)[Ls/d;

    move-result-object v0

    iget v1, p0, Ls/g$b;->a:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final d()Z
    .locals 4

    iget v0, p0, Ls/g$b;->a:I

    iget-object v1, p0, Ls/g$b;->d:Ls/g;

    invoke-static {v1}, Ls/g;->e(Ls/g;)I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Ls/g$b;->c()Ls/d;

    move-result-object v0

    iget v1, p0, Ls/g$b;->b:I

    invoke-virtual {v0}, Ls/d;->b()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Ls/g$b;->b:I

    iget v1, p0, Ls/g$b;->c:I

    invoke-virtual {v0}, Ls/d;->d()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Ls/g$b;->c:I

    iget v0, p0, Ls/g$b;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ls/g$b;->a:I

    iget-object v3, p0, Ls/g$b;->d:Ls/g;

    invoke-static {v3}, Ls/g;->e(Ls/g;)I

    move-result v3

    if-ge v0, v3, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method
