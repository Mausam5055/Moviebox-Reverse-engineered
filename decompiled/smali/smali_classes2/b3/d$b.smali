.class public final Lb3/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method private constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb3/d$b;->a:I

    iput-wide p2, p0, Lb3/d$b;->b:J

    iput-wide p4, p0, Lb3/d$b;->c:J

    return-void
.end method

.method synthetic constructor <init>(IJJLb3/d$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lb3/d$b;-><init>(IJJ)V

    return-void
.end method
