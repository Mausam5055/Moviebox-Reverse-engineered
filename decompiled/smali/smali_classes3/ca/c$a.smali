.class final Lca/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;


# instance fields
.field public final a:Lba/b;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lca/b;

    invoke-direct {v0}, Lca/b;-><init>()V

    sput-object v0, Lca/c$a;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lba/b$b;

    invoke-direct {v0}, Lba/b$b;-><init>()V

    invoke-virtual {v0, p1}, Lba/b$b;->o(Ljava/lang/CharSequence;)Lba/b$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lba/b$b;->p(Landroid/text/Layout$Alignment;)Lba/b$b;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lba/b$b;->h(FI)Lba/b$b;

    move-result-object p1

    invoke-virtual {p1, p5}, Lba/b$b;->i(I)Lba/b$b;

    move-result-object p1

    invoke-virtual {p1, p6}, Lba/b$b;->k(F)Lba/b$b;

    move-result-object p1

    invoke-virtual {p1, p7}, Lba/b$b;->l(I)Lba/b$b;

    move-result-object p1

    invoke-virtual {p1, p8}, Lba/b$b;->n(F)Lba/b$b;

    move-result-object p1

    if-eqz p9, :cond_0

    invoke-virtual {p1, p10}, Lba/b$b;->s(I)Lba/b$b;

    :cond_0
    invoke-virtual {p1}, Lba/b$b;->a()Lba/b;

    move-result-object p1

    iput-object p1, p0, Lca/c$a;->a:Lba/b;

    iput p11, p0, Lca/c$a;->b:I

    return-void
.end method

.method public static synthetic a(Lca/c$a;Lca/c$a;)I
    .locals 0

    invoke-static {p0, p1}, Lca/c$a;->c(Lca/c$a;Lca/c$a;)I

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lca/c$a;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method private static synthetic c(Lca/c$a;Lca/c$a;)I
    .locals 0

    iget p1, p1, Lca/c$a;->b:I

    iget p0, p0, Lca/c$a;->b:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
