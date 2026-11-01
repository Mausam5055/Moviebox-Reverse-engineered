.class final Lcm/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/a$b;->c:[B

    iput p2, p0, Lcm/a$b;->a:I

    iput p3, p0, Lcm/a$b;->b:I

    return-void
.end method

.method static synthetic a(Lcm/a$b;)[B
    .locals 0

    iget-object p0, p0, Lcm/a$b;->c:[B

    return-object p0
.end method

.method static synthetic b(Lcm/a$b;)I
    .locals 0

    iget p0, p0, Lcm/a$b;->a:I

    return p0
.end method

.method static synthetic c(Lcm/a$b;)I
    .locals 0

    iget p0, p0, Lcm/a$b;->b:I

    return p0
.end method
