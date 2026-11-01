.class public abstract Landroidx/compose/ui/text/style/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/e$a;,
        Landroidx/compose/ui/text/style/e$b;,
        Landroidx/compose/ui/text/style/e$c;,
        Landroidx/compose/ui/text/style/e$d;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/text/style/e$a;

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/compose/ui/text/style/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/e;->a:Landroidx/compose/ui/text/style/e$a;

    sget-object v0, Landroidx/compose/ui/text/style/e$b;->a:Landroidx/compose/ui/text/style/e$b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$b$a;->c()I

    move-result v1

    sget-object v2, Landroidx/compose/ui/text/style/e$c;->a:Landroidx/compose/ui/text/style/e$c$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/e$c$a;->c()I

    move-result v3

    sget-object v4, Landroidx/compose/ui/text/style/e$d;->a:Landroidx/compose/ui/text/style/e$d$a;

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/e$d$a;->a()I

    move-result v5

    invoke-static {v1, v3, v5}, Landroidx/compose/ui/text/style/f;->a(III)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/e;->c(I)I

    move-result v1

    sput v1, Landroidx/compose/ui/text/style/e;->b:I

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$b$a;->a()I

    move-result v1

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/e$c$a;->b()I

    move-result v3

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/e$d$a;->b()I

    move-result v5

    invoke-static {v1, v3, v5}, Landroidx/compose/ui/text/style/f;->a(III)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/e;->c(I)I

    move-result v1

    sput v1, Landroidx/compose/ui/text/style/e;->c:I

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$b$a;->b()I

    move-result v0

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/e$c$a;->d()I

    move-result v1

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/e$d$a;->a()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/text/style/f;->a(III)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/e;->c(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/e;->d:I

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/text/style/e;->c(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/e;->e:I

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/e;->b:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/e;->e:I

    return v0
.end method

.method private static c(I)I
    .locals 0

    return p0
.end method

.method public static final d(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final e(I)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/text/style/f;->b(I)I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/text/style/e$b;->d(I)I

    move-result p0

    return p0
.end method

.method public static final f(I)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/text/style/f;->c(I)I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/text/style/e$c;->e(I)I

    move-result p0

    return p0
.end method

.method public static final g(I)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/text/style/f;->d(I)I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/text/style/e$d;->c(I)I

    move-result p0

    return p0
.end method

.method public static h(I)I
    .locals 0

    return p0
.end method

.method public static i(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineBreak(strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/compose/ui/text/style/e;->e(I)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/e$b;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", strictness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/compose/ui/text/style/e;->f(I)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/e$c;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wordBreak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/compose/ui/text/style/e;->g(I)I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/text/style/e$d;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
