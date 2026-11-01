.class public abstract Landroidx/compose/foundation/text/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/text/input/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/text/e;

    sget-object v1, Landroidx/compose/ui/text/input/v;->a:Landroidx/compose/ui/text/input/v$a;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/v$a;->a()Landroidx/compose/ui/text/input/v;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/compose/foundation/text/e;-><init>(Landroidx/compose/ui/text/input/v;II)V

    sput-object v0, Landroidx/compose/foundation/text/f;->a:Landroidx/compose/ui/text/input/v;

    return-void
.end method

.method public static final synthetic a(III)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/f;->c(III)V

    return-void
.end method

.method public static final b()Landroidx/compose/ui/text/input/v;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/f;->a:Landroidx/compose/ui/text/input/v;

    return-object v0
.end method

.method private static final c(III)V
    .locals 2

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OffsetMapping.originalToTransformed returned invalid mapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not in range of transformed text [0, "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
