.class final Lid/m$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:C

.field private final b:I

.field private final c:Lid/m$b;

.field private final d:I


# direct methods
.method private constructor <init>(CLid/g;ILid/m$b;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    if-ne p1, p5, :cond_0

    move p5, v0

    goto :goto_0

    :cond_0
    move p5, p1

    :goto_0
    iput-char p5, p0, Lid/m$b;->a:C

    iput p3, p0, Lid/m$b;->b:I

    iput-object p4, p0, Lid/m$b;->c:Lid/m$b;

    if-ne p5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1, p3}, Lid/g;->b(CI)[B

    move-result-object p1

    array-length p1, p1

    :goto_1
    if-nez p4, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    iget p2, p4, Lid/m$b;->b:I

    :goto_2
    if-eq p2, p3, :cond_3

    add-int/lit8 p1, p1, 0x3

    :cond_3
    if-eqz p4, :cond_4

    iget p2, p4, Lid/m$b;->d:I

    add-int/2addr p1, p2

    :cond_4
    iput p1, p0, Lid/m$b;->d:I

    return-void
.end method

.method synthetic constructor <init>(CLid/g;ILid/m$b;ILid/m$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lid/m$b;-><init>(CLid/g;ILid/m$b;I)V

    return-void
.end method

.method static synthetic a(Lid/m$b;)I
    .locals 0

    iget p0, p0, Lid/m$b;->b:I

    return p0
.end method

.method static synthetic b(Lid/m$b;)I
    .locals 0

    iget p0, p0, Lid/m$b;->d:I

    return p0
.end method

.method static synthetic c(Lid/m$b;)C
    .locals 0

    iget-char p0, p0, Lid/m$b;->a:C

    return p0
.end method

.method static synthetic d(Lid/m$b;)Lid/m$b;
    .locals 0

    iget-object p0, p0, Lid/m$b;->c:Lid/m$b;

    return-object p0
.end method


# virtual methods
.method e()Z
    .locals 2

    iget-char v0, p0, Lid/m$b;->a:C

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
