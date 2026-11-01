.class final Lm9/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm9/a$b;->a:I

    iput-wide p2, p0, Lm9/a$b;->b:J

    return-void
.end method

.method synthetic constructor <init>(IJLm9/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lm9/a$b;-><init>(IJ)V

    return-void
.end method

.method static synthetic a(Lm9/a$b;)J
    .locals 2

    iget-wide v0, p0, Lm9/a$b;->b:J

    return-wide v0
.end method

.method static synthetic b(Lm9/a$b;)I
    .locals 0

    iget p0, p0, Lm9/a$b;->a:I

    return p0
.end method
