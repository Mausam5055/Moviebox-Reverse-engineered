.class public final Lcom/google/android/exoplayer2/o1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/o1$b;
    }
.end annotation


# static fields
.field private static final G:Lcom/google/android/exoplayer2/o1;

.field public static final H:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field private F:I

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:I

.field public final n:Ljava/util/List;

.field public final o:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final p:J

.field public final q:I

.field public final r:I

.field public final s:F

.field public final t:I

.field public final u:F

.field public final v:[B

.field public final w:I

.field public final x:Lcom/google/android/exoplayer2/video/c;

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/o1;->G:Lcom/google/android/exoplayer2/o1;

    new-instance v0, Lcom/google/android/exoplayer2/n1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/o1;->H:Lcom/google/android/exoplayer2/k$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/o1$b;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->a(Lcom/google/android/exoplayer2/o1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->l(Lcom/google/android/exoplayer2/o1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->w(Lcom/google/android/exoplayer2/o1$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->D0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->y(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/o1;->d:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->z(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/o1;->e:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->A(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/o1;->f:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->B(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/o1;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/o1;->h:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->C(Lcom/google/android/exoplayer2/o1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->D(Lcom/google/android/exoplayer2/o1$b;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->b(Lcom/google/android/exoplayer2/o1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->c(Lcom/google/android/exoplayer2/o1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->d(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/o1;->m:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->e(Lcom/google/android/exoplayer2/o1$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->e(Lcom/google/android/exoplayer2/o1$b;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/o1;->n:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->f(Lcom/google/android/exoplayer2/o1$b;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->g(Lcom/google/android/exoplayer2/o1$b;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/o1;->p:J

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->h(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/o1;->q:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->i(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/o1;->r:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->j(Lcom/google/android/exoplayer2/o1$b;)F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/o1;->s:F

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->k(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->k(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer2/o1;->t:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->m(Lcom/google/android/exoplayer2/o1$b;)F

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->m(Lcom/google/android/exoplayer2/o1$b;)F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/google/android/exoplayer2/o1;->u:F

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->n(Lcom/google/android/exoplayer2/o1$b;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/o1;->v:[B

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->o(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/o1;->w:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->p(Lcom/google/android/exoplayer2/o1$b;)Lcom/google/android/exoplayer2/video/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/o1;->x:Lcom/google/android/exoplayer2/video/c;

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->q(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/o1;->y:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->r(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/o1;->z:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->s(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/o1;->A:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->t(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->t(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/google/android/exoplayer2/o1;->B:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->u(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->u(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v3

    :goto_4
    iput v3, p0, Lcom/google/android/exoplayer2/o1;->C:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->v(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/o1;->D:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->x(Lcom/google/android/exoplayer2/o1$b;)I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/o1;->E:I

    goto :goto_5

    :cond_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/o1$b;->x(Lcom/google/android/exoplayer2/o1$b;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/o1;->E:I

    :goto_5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/o1$b;Lcom/google/android/exoplayer2/o1$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/o1;-><init>(Lcom/google/android/exoplayer2/o1$b;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/o1;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/o1;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/o1;
    .locals 6

    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/d;->a(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/o1;->G:Lcom/google/android/exoplayer2/o1;

    iget-object v4, v3, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/o1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/o1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/o1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/o1;->d:I

    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o1$b;->g0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/o1;->e:I

    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o1$b;->c0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/o1;->f:I

    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o1$b;->G(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/o1;->g:I

    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o1$b;->Z(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    const/4 v4, 0x7

    invoke-static {v4}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/o1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v5, v3, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/o1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    const/16 v4, 0x9

    invoke-static {v4}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/o1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o1$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/o1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v3, v3, Lcom/google/android/exoplayer2/o1;->m:I

    invoke-virtual {p0, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/o1$b;->W(I)Lcom/google/android/exoplayer2/o1$b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/o1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/o1;->G:Lcom/google/android/exoplayer2/o1;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/o1;->p:J

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/o1$b;->i0(J)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/o1;->q:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->j0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/o1;->r:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->Q(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/o1;->s:F

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->P(F)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/o1;->t:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->d0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/o1;->u:F

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->a0(F)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->b0([B)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/o1;->w:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->h0(I)Lcom/google/android/exoplayer2/o1$b;

    const/16 v1, 0x16

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/exoplayer2/video/c;->f:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/c;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->J(Lcom/google/android/exoplayer2/video/c;)Lcom/google/android/exoplayer2/o1$b;

    :cond_0
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v3, Lcom/google/android/exoplayer2/o1;->y:I

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->H(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/o1;->z:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->f0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/o1;->A:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->Y(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/o1;->B:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->N(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/o1;->C:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->O(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/o1;->D:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->F(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v3, Lcom/google/android/exoplayer2/o1;->E:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/o1$b;->L(I)Lcom/google/android/exoplayer2/o1$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private static h(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/o1$b;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/o1$b;-><init>(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1$a;)V

    return-object v0
.end method

.method public c(I)Lcom/google/android/exoplayer2/o1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/o1$b;->L(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/o1;

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/o1;

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->F:I

    if-eqz v2, :cond_2

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->F:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/o1;->d:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->e:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->f:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->g:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->g:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->m:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->m:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/o1;->p:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/o1;->p:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->q:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->q:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->r:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->r:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->t:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->t:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->w:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->w:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->y:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->y:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->z:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->z:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->A:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->A:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->B:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->B:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->C:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->C:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->D:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->D:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->E:I

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->E:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->s:F

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->s:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->u:F

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->u:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->v:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->v:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->x:Lcom/google/android/exoplayer2/video/c;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->x:Lcom/google/android/exoplayer2/video/c;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/o1;->g(Lcom/google/android/exoplayer2/o1;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public f()I
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->r:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public g(Lcom/google/android/exoplayer2/o1;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/o1;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/o1;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/o1;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->F:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->d:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->e:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->f:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->g:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->m:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lcom/google/android/exoplayer2/o1;->p:J

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->q:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->r:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->s:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->t:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->u:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->w:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->y:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->z:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->A:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->B:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->C:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->D:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->E:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/o1;->F:I

    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/o1;->F:I

    return v0
.end method

.method public j(Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/o1;
    .locals 11

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->l(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v4, :cond_2

    if-ne v0, v5, :cond_3

    :cond_2
    iget-object v4, p1, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v3, v4

    :cond_3
    iget v4, p0, Lcom/google/android/exoplayer2/o1;->f:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    iget v4, p1, Lcom/google/android/exoplayer2/o1;->f:I

    :cond_4
    iget v7, p0, Lcom/google/android/exoplayer2/o1;->g:I

    if-ne v7, v6, :cond_5

    iget v7, p1, Lcom/google/android/exoplayer2/o1;->g:I

    :cond_5
    iget-object v6, p0, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    if-nez v6, :cond_6

    iget-object v8, p1, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/p0;->U0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v5, :cond_6

    move-object v6, v8

    :cond_6
    iget-object v5, p0, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v5, :cond_7

    iget-object v5, p1, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    goto :goto_1

    :cond_7
    iget-object v8, p1, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v5

    :goto_1
    iget v8, p0, Lcom/google/android/exoplayer2/o1;->s:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v8, v9

    if-nez v9, :cond_8

    const/4 v9, 0x2

    if-ne v0, v9, :cond_8

    iget v8, p1, Lcom/google/android/exoplayer2/o1;->s:F

    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/o1;->d:I

    iget v9, p1, Lcom/google/android/exoplayer2/o1;->d:I

    or-int/2addr v0, v9

    iget v9, p0, Lcom/google/android/exoplayer2/o1;->e:I

    iget v10, p1, Lcom/google/android/exoplayer2/o1;->e:I

    or-int/2addr v9, v10

    iget-object p1, p1, Lcom/google/android/exoplayer2/o1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v10, p0, Lcom/google/android/exoplayer2/o1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/drm/DrmInitData;->createSessionCreationData(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/o1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/o1$b;->g0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/o1$b;->c0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/o1$b;->G(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/o1$b;->Z(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/o1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/o1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/o1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/o1$b;->P(F)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    return-object p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/o1;->d:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/o1;->e:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/o1;->f:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/o1;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/o1;->m:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->i(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->n:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/o1;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->s:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->u:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->v:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/o1;->x:Lcom/google/android/exoplayer2/video/c;

    if-eqz v1, :cond_1

    const/16 v1, 0x16

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->x:Lcom/google/android/exoplayer2/video/c;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/c;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->z:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->A:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1a

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->B:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1b

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->C:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->D:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1d

    invoke-static {v1}, Lcom/google/android/exoplayer2/o1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->E:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->s:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/o1;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/o1;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
