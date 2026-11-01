.class Lr3/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;


# instance fields
.field private final a:Lr3/e$c;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr3/f;

    invoke-direct {v0}, Lr3/f;-><init>()V

    sput-object v0, Lr3/e$b;->c:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lr3/e$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/e$b;->a:Lr3/e$c;

    iput p2, p0, Lr3/e$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lr3/e$c;ILr3/e$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr3/e$b;-><init>(Lr3/e$c;I)V

    return-void
.end method

.method public static synthetic a(Lr3/e$b;Lr3/e$b;)I
    .locals 0

    invoke-static {p0, p1}, Lr3/e$b;->e(Lr3/e$b;Lr3/e$b;)I

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lr3/e$b;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic c(Lr3/e$b;)Lr3/e$c;
    .locals 0

    iget-object p0, p0, Lr3/e$b;->a:Lr3/e$c;

    return-object p0
.end method

.method static synthetic d(Lr3/e$b;)I
    .locals 0

    iget p0, p0, Lr3/e$b;->b:I

    return p0
.end method

.method private static synthetic e(Lr3/e$b;Lr3/e$b;)I
    .locals 0

    iget-object p0, p0, Lr3/e$b;->a:Lr3/e$c;

    iget p0, p0, Lr3/e$c;->b:I

    iget-object p1, p1, Lr3/e$b;->a:Lr3/e$c;

    iget p1, p1, Lr3/e$c;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
