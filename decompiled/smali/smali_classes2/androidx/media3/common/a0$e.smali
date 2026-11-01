.class public final Landroidx/media3/common/a0$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field static final m:Ljava/lang/String;

.field static final n:Ljava/lang/String;

.field static final o:Ljava/lang/String;

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:I

.field public final d:Landroidx/media3/common/t;

.field public final e:Ljava/lang/Object;

.field public final f:I

.field public final g:J

.field public final h:J

.field public final i:I

.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/a0$e;->k:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/a0$e;->l:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/a0$e;->m:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/a0$e;->n:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/a0$e;->o:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/a0$e;->p:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/a0$e;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILandroidx/media3/common/t;Ljava/lang/Object;IJJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/a0$e;->a:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/common/a0$e;->b:I

    iput p2, p0, Landroidx/media3/common/a0$e;->c:I

    iput-object p3, p0, Landroidx/media3/common/a0$e;->d:Landroidx/media3/common/t;

    iput-object p4, p0, Landroidx/media3/common/a0$e;->e:Ljava/lang/Object;

    iput p5, p0, Landroidx/media3/common/a0$e;->f:I

    iput-wide p6, p0, Landroidx/media3/common/a0$e;->g:J

    iput-wide p8, p0, Landroidx/media3/common/a0$e;->h:J

    iput p10, p0, Landroidx/media3/common/a0$e;->i:I

    iput p11, p0, Landroidx/media3/common/a0$e;->j:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/a0$e;)Z
    .locals 4

    iget v0, p0, Landroidx/media3/common/a0$e;->c:I

    iget v1, p1, Landroidx/media3/common/a0$e;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/common/a0$e;->f:I

    iget v1, p1, Landroidx/media3/common/a0$e;->f:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroidx/media3/common/a0$e;->g:J

    iget-wide v2, p1, Landroidx/media3/common/a0$e;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/common/a0$e;->h:J

    iget-wide v2, p1, Landroidx/media3/common/a0$e;->h:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/common/a0$e;->i:I

    iget v1, p1, Landroidx/media3/common/a0$e;->i:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/common/a0$e;->j:I

    iget v1, p1, Landroidx/media3/common/a0$e;->j:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/common/a0$e;->d:Landroidx/media3/common/t;

    iget-object p1, p1, Landroidx/media3/common/a0$e;->d:Landroidx/media3/common/t;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/common/a0$e;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/a0$e;

    invoke-virtual {p0, p1}, Landroidx/media3/common/a0$e;->a(Landroidx/media3/common/a0$e;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/a0$e;->a:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media3/common/a0$e;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/a0$e;->e:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/media3/common/a0$e;->e:Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 11

    iget-object v0, p0, Landroidx/media3/common/a0$e;->a:Ljava/lang/Object;

    iget v1, p0, Landroidx/media3/common/a0$e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/a0$e;->d:Landroidx/media3/common/t;

    iget-object v3, p0, Landroidx/media3/common/a0$e;->e:Ljava/lang/Object;

    iget v4, p0, Landroidx/media3/common/a0$e;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroidx/media3/common/a0$e;->g:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroidx/media3/common/a0$e;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v7, p0, Landroidx/media3/common/a0$e;->i:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Landroidx/media3/common/a0$e;->j:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v3, v9, v0

    const/4 v0, 0x4

    aput-object v4, v9, v0

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    invoke-static {v9}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
