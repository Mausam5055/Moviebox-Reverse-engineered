.class public abstract Lq/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lq/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x32

    invoke-static {v0}, Lq/g;->a(I)Lq/f;

    move-result-object v0

    sput-object v0, Lq/g;->a:Lq/f;

    return-void
.end method

.method public static final a(I)Lq/f;
    .locals 0

    invoke-static {p0}, Lq/c;->a(I)Lq/b;

    move-result-object p0

    invoke-static {p0}, Lq/g;->b(Lq/b;)Lq/f;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lq/b;)Lq/f;
    .locals 1

    new-instance v0, Lq/f;

    invoke-direct {v0, p0, p0, p0, p0}, Lq/f;-><init>(Lq/b;Lq/b;Lq/b;Lq/b;)V

    return-object v0
.end method

.method public static final c(F)Lq/f;
    .locals 0

    invoke-static {p0}, Lq/c;->b(F)Lq/b;

    move-result-object p0

    invoke-static {p0}, Lq/g;->b(Lq/b;)Lq/f;

    move-result-object p0

    return-object p0
.end method

.method public static final d(FFFF)Lq/f;
    .locals 1

    new-instance v0, Lq/f;

    invoke-static {p0}, Lq/c;->b(F)Lq/b;

    move-result-object p0

    invoke-static {p1}, Lq/c;->b(F)Lq/b;

    move-result-object p1

    invoke-static {p2}, Lq/c;->b(F)Lq/b;

    move-result-object p2

    invoke-static {p3}, Lq/c;->b(F)Lq/b;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lq/f;-><init>(Lq/b;Lq/b;Lq/b;Lq/b;)V

    return-object v0
.end method

.method public static final e()Lq/f;
    .locals 1

    sget-object v0, Lq/g;->a:Lq/f;

    return-object v0
.end method
