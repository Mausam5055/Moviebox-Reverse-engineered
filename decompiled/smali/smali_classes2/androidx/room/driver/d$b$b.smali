.class public final Landroidx/room/driver/d$b$b;
.super Ljava/lang/Object;

# interfaces
.implements La4/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/driver/d$b;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/driver/d$b;


# direct methods
.method constructor <init>(Landroidx/room/driver/d$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/driver/d$b$b;->a:Landroidx/room/driver/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La4/f;)V
    .locals 6

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/driver/d$b$b;->a:Landroidx/room/driver/d$b;

    invoke-static {v0}, Landroidx/room/driver/d$b;->l(Landroidx/room/driver/d$b;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Landroidx/room/driver/d$b$b;->a:Landroidx/room/driver/d$b;

    invoke-static {v3}, Landroidx/room/driver/d$b;->l(Landroidx/room/driver/d$b;)[I

    move-result-object v3

    aget v3, v3, v2

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, La4/f;->g(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroidx/room/driver/d$b$b;->a:Landroidx/room/driver/d$b;

    invoke-static {v3}, Landroidx/room/driver/d$b;->m(Landroidx/room/driver/d$b;)[[B

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, La4/f;->e(I[B)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroidx/room/driver/d$b$b;->a:Landroidx/room/driver/d$b;

    invoke-static {v3}, Landroidx/room/driver/d$b;->p(Landroidx/room/driver/d$b;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, La4/f;->y(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroidx/room/driver/d$b$b;->a:Landroidx/room/driver/d$b;

    invoke-static {v3}, Landroidx/room/driver/d$b;->n(Landroidx/room/driver/d$b;)[D

    move-result-object v3

    aget-wide v4, v3, v2

    invoke-interface {p1, v2, v4, v5}, La4/f;->a(ID)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroidx/room/driver/d$b$b;->a:Landroidx/room/driver/d$b;

    invoke-static {v3}, Landroidx/room/driver/d$b;->o(Landroidx/room/driver/d$b;)[J

    move-result-object v3

    aget-wide v4, v3, v2

    invoke-interface {p1, v2, v4, v5}, La4/f;->c(IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/driver/d$b$b;->a:Landroidx/room/driver/d$b;

    invoke-virtual {v0}, Landroidx/room/driver/d;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
