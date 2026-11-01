.class final Lo9/b$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo9/b$g;->a:I

    iput-wide p2, p0, Lo9/b$g;->b:J

    iput p4, p0, Lo9/b$g;->c:I

    return-void
.end method

.method static synthetic a(Lo9/b$g;)J
    .locals 2

    iget-wide v0, p0, Lo9/b$g;->b:J

    return-wide v0
.end method

.method static synthetic b(Lo9/b$g;)I
    .locals 0

    iget p0, p0, Lo9/b$g;->a:I

    return p0
.end method

.method static synthetic c(Lo9/b$g;)I
    .locals 0

    iget p0, p0, Lo9/b$g;->c:I

    return p0
.end method
