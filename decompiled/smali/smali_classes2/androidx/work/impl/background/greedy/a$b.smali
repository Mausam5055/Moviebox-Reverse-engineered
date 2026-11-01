.class Landroidx/work/impl/background/greedy/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/greedy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/work/impl/background/greedy/a$b;->a:I

    iput-wide p2, p0, Landroidx/work/impl/background/greedy/a$b;->b:J

    return-void
.end method

.method synthetic constructor <init>(IJLandroidx/work/impl/background/greedy/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/work/impl/background/greedy/a$b;-><init>(IJ)V

    return-void
.end method
