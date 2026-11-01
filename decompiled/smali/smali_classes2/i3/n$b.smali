.class Li3/n$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li3/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:[B


# direct methods
.method private constructor <init>(J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Li3/n$b;->a:J

    iput-object p3, p0, Li3/n$b;->b:[B

    return-void
.end method

.method synthetic constructor <init>(J[BLi3/n$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Li3/n$b;-><init>(J[B)V

    return-void
.end method

.method static synthetic a(Li3/n$b;)J
    .locals 2

    iget-wide v0, p0, Li3/n$b;->a:J

    return-wide v0
.end method

.method static synthetic b(Li3/n$b;)[B
    .locals 0

    iget-object p0, p0, Li3/n$b;->b:[B

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Li3/n$b;

    invoke-virtual {p0, p1}, Li3/n$b;->d(Li3/n$b;)I

    move-result p1

    return p1
.end method

.method public d(Li3/n$b;)I
    .locals 4

    iget-wide v0, p0, Li3/n$b;->a:J

    iget-wide v2, p1, Li3/n$b;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
