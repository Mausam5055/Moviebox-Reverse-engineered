.class public abstract Landroidx/compose/ui/text/style/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/e$b$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/text/style/e$b$a;

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/e$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/e$b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/e$b;->a:Landroidx/compose/ui/text/style/e$b$a;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/ui/text/style/e$b;->d(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/e$b;->b:I

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/text/style/e$b;->d(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/e$b;->c:I

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/compose/ui/text/style/e$b;->d(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/e$b;->d:I

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/text/style/e$b;->d(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/e$b;->e:I

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/e$b;->d:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/e$b;->c:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/e$b;->b:I

    return v0
.end method

.method public static d(I)I
    .locals 0

    return p0
.end method

.method public static final e(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(I)Ljava/lang/String;
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/e$b;->b:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/e$b;->e(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Strategy.Simple"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/style/e$b;->c:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/e$b;->e(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Strategy.HighQuality"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/style/e$b;->d:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/e$b;->e(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Strategy.Balanced"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/text/style/e$b;->e:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/e$b;->e(II)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Strategy.Unspecified"

    goto :goto_0

    :cond_3
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method
