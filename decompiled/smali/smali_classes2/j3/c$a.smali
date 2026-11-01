.class final Lj3/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;


# instance fields
.field public final a:Lu1/a;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj3/b;

    invoke-direct {v0}, Lj3/b;-><init>()V

    sput-object v0, Lj3/c$a;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu1/a$b;

    invoke-direct {v0}, Lu1/a$b;-><init>()V

    invoke-virtual {v0, p1}, Lu1/a$b;->o(Ljava/lang/CharSequence;)Lu1/a$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lu1/a$b;->p(Landroid/text/Layout$Alignment;)Lu1/a$b;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lu1/a$b;->h(FI)Lu1/a$b;

    move-result-object p1

    invoke-virtual {p1, p5}, Lu1/a$b;->i(I)Lu1/a$b;

    move-result-object p1

    invoke-virtual {p1, p6}, Lu1/a$b;->k(F)Lu1/a$b;

    move-result-object p1

    invoke-virtual {p1, p7}, Lu1/a$b;->l(I)Lu1/a$b;

    move-result-object p1

    invoke-virtual {p1, p8}, Lu1/a$b;->n(F)Lu1/a$b;

    move-result-object p1

    if-eqz p9, :cond_0

    invoke-virtual {p1, p10}, Lu1/a$b;->s(I)Lu1/a$b;

    :cond_0
    invoke-virtual {p1}, Lu1/a$b;->a()Lu1/a;

    move-result-object p1

    iput-object p1, p0, Lj3/c$a;->a:Lu1/a;

    iput p11, p0, Lj3/c$a;->b:I

    return-void
.end method

.method public static synthetic a(Lj3/c$a;Lj3/c$a;)I
    .locals 0

    invoke-static {p0, p1}, Lj3/c$a;->c(Lj3/c$a;Lj3/c$a;)I

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lj3/c$a;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method private static synthetic c(Lj3/c$a;Lj3/c$a;)I
    .locals 0

    iget p1, p1, Lj3/c$a;->b:I

    iget p0, p0, Lj3/c$a;->b:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
