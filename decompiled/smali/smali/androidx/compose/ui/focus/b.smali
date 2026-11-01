.class public final Landroidx/compose/ui/focus/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/b$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/compose/ui/focus/b$a;

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/focus/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/ui/focus/b;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/b;->c:I

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/focus/b;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/b;->d:I

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/compose/ui/focus/b;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/b;->e:I

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/compose/ui/focus/b;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/b;->f:I

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/compose/ui/focus/b;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/b;->g:I

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/compose/ui/focus/b;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/b;->h:I

    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/compose/ui/focus/b;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/b;->i:I

    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/compose/ui/focus/b;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/b;->j:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/focus/b;->a:I

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Landroidx/compose/ui/focus/b;->h:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Landroidx/compose/ui/focus/b;->i:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Landroidx/compose/ui/focus/b;->j:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    sget v0, Landroidx/compose/ui/focus/b;->e:I

    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    sget v0, Landroidx/compose/ui/focus/b;->c:I

    return v0
.end method

.method public static final synthetic f()I
    .locals 1

    sget v0, Landroidx/compose/ui/focus/b;->d:I

    return v0
.end method

.method public static final synthetic g()I
    .locals 1

    sget v0, Landroidx/compose/ui/focus/b;->f:I

    return v0
.end method

.method public static final synthetic h()I
    .locals 1

    sget v0, Landroidx/compose/ui/focus/b;->g:I

    return v0
.end method

.method public static final synthetic i(I)Landroidx/compose/ui/focus/b;
    .locals 1

    new-instance v0, Landroidx/compose/ui/focus/b;

    invoke-direct {v0, p0}, Landroidx/compose/ui/focus/b;-><init>(I)V

    return-object v0
.end method

.method public static j(I)I
    .locals 0

    return p0
.end method

.method public static k(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/focus/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/focus/b;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/b;->o()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final l(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(I)I
    .locals 0

    return p0
.end method

.method public static n(I)Ljava/lang/String;
    .locals 1

    sget v0, Landroidx/compose/ui/focus/b;->c:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Next"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/focus/b;->d:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Previous"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/focus/b;->e:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Left"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/focus/b;->f:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Right"

    goto :goto_0

    :cond_3
    sget v0, Landroidx/compose/ui/focus/b;->g:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Up"

    goto :goto_0

    :cond_4
    sget v0, Landroidx/compose/ui/focus/b;->h:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "Down"

    goto :goto_0

    :cond_5
    sget v0, Landroidx/compose/ui/focus/b;->i:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Enter"

    goto :goto_0

    :cond_6
    sget v0, Landroidx/compose/ui/focus/b;->j:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Exit"

    goto :goto_0

    :cond_7
    const-string p0, "Invalid FocusDirection"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/focus/b;->a:I

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/b;->k(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/focus/b;->a:I

    invoke-static {v0}, Landroidx/compose/ui/focus/b;->m(I)I

    move-result v0

    return v0
.end method

.method public final synthetic o()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/focus/b;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/focus/b;->a:I

    invoke-static {v0}, Landroidx/compose/ui/focus/b;->n(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
