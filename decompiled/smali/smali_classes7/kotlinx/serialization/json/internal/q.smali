.class public final Lkotlinx/serialization/json/internal/q;
.super Lkotlinx/serialization/json/internal/j;


# instance fields
.field private final c:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/h0;Z)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/j;-><init>(Lkotlinx/serialization/json/internal/h0;)V

    iput-boolean p2, p0, Lkotlinx/serialization/json/internal/q;->c:Z

    return-void
.end method


# virtual methods
.method public d(B)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q;->c:Z

    invoke-static {p1}, Lkotlin/UByte;->b(B)B

    move-result p1

    invoke-static {p1}, Lkotlin/UByte;->f(B)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h(I)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q;->c:Z

    invoke-static {p1}, Lkotlin/UInt;->b(I)I

    move-result p1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlinx/serialization/json/internal/m;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/n;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q;->c:Z

    invoke-static {p1, p2}, Lkotlin/ULong;->b(J)J

    move-result-wide p1

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/k;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/l;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public k(S)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q;->c:Z

    invoke-static {p1}, Lkotlin/UShort;->b(S)S

    move-result p1

    invoke-static {p1}, Lkotlin/UShort;->f(S)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
