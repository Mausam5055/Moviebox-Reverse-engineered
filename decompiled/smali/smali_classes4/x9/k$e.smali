.class public Lx9/k$e;
.super Lx9/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx9/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field final d:J

.field final e:J


# direct methods
.method public constructor <init>()V
    .locals 10

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lx9/k$e;-><init>(Lx9/i;JJJJ)V

    return-void
.end method

.method public constructor <init>(Lx9/i;JJJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lx9/k;-><init>(Lx9/i;JJ)V

    iput-wide p6, p0, Lx9/k$e;->d:J

    iput-wide p8, p0, Lx9/k$e;->e:J

    return-void
.end method


# virtual methods
.method public c()Lx9/i;
    .locals 7

    iget-wide v4, p0, Lx9/k$e;->e:J

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v6, Lx9/i;

    const/4 v1, 0x0

    iget-wide v2, p0, Lx9/k$e;->d:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lx9/i;-><init>(Ljava/lang/String;JJ)V

    :goto_0
    return-object v0
.end method
