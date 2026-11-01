.class Lka/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lka/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;


# instance fields
.field private final a:Lka/f$c;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lka/g;

    invoke-direct {v0}, Lka/g;-><init>()V

    sput-object v0, Lka/f$b;->c:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lka/f$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lka/f$b;->a:Lka/f$c;

    iput p2, p0, Lka/f$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lka/f$c;ILka/f$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lka/f$b;-><init>(Lka/f$c;I)V

    return-void
.end method

.method public static synthetic a(Lka/f$b;Lka/f$b;)I
    .locals 0

    invoke-static {p0, p1}, Lka/f$b;->e(Lka/f$b;Lka/f$b;)I

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lka/f$b;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic c(Lka/f$b;)Lka/f$c;
    .locals 0

    iget-object p0, p0, Lka/f$b;->a:Lka/f$c;

    return-object p0
.end method

.method static synthetic d(Lka/f$b;)I
    .locals 0

    iget p0, p0, Lka/f$b;->b:I

    return p0
.end method

.method private static synthetic e(Lka/f$b;Lka/f$b;)I
    .locals 0

    iget-object p0, p0, Lka/f$b;->a:Lka/f$c;

    iget p0, p0, Lka/f$c;->b:I

    iget-object p1, p1, Lka/f$b;->a:Lka/f$c;

    iget p1, p1, Lka/f$c;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
