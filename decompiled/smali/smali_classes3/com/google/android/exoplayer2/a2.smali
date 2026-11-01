.class public final Lcom/google/android/exoplayer2/a2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/a2$b;
    }
.end annotation


# static fields
.field public static final G:Lcom/google/android/exoplayer2/a2;

.field public static final H:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final A:Ljava/lang/Integer;

.field public final B:Ljava/lang/Integer;

.field public final C:Ljava/lang/CharSequence;

.field public final D:Ljava/lang/CharSequence;

.field public final E:Ljava/lang/CharSequence;

.field public final F:Landroid/os/Bundle;

.field public final a:Ljava/lang/CharSequence;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/CharSequence;

.field public final d:Ljava/lang/CharSequence;

.field public final e:Ljava/lang/CharSequence;

.field public final f:Ljava/lang/CharSequence;

.field public final g:Ljava/lang/CharSequence;

.field public final h:Lcom/google/android/exoplayer2/v2;

.field public final i:Lcom/google/android/exoplayer2/v2;

.field public final j:[B

.field public final k:Ljava/lang/Integer;

.field public final l:Landroid/net/Uri;

.field public final m:Ljava/lang/Integer;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/Boolean;

.field public final q:Ljava/lang/Integer;

.field public final r:Ljava/lang/Integer;

.field public final s:Ljava/lang/Integer;

.field public final t:Ljava/lang/Integer;

.field public final u:Ljava/lang/Integer;

.field public final v:Ljava/lang/Integer;

.field public final w:Ljava/lang/Integer;

.field public final x:Ljava/lang/CharSequence;

.field public final y:Ljava/lang/CharSequence;

.field public final z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2$b;->F()Lcom/google/android/exoplayer2/a2;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/a2;->G:Lcom/google/android/exoplayer2/a2;

    new-instance v0, Lcom/google/android/exoplayer2/z1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/z1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/a2;->H:Lcom/google/android/exoplayer2/k$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/a2$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->a(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->a:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->l(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->b:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->w(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->c:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->z(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->d:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->A(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->e:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->B(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->f:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->C(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->g:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->D(Lcom/google/android/exoplayer2/a2$b;)Lcom/google/android/exoplayer2/v2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->h:Lcom/google/android/exoplayer2/v2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->E(Lcom/google/android/exoplayer2/a2$b;)Lcom/google/android/exoplayer2/v2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->i:Lcom/google/android/exoplayer2/v2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->b(Lcom/google/android/exoplayer2/a2$b;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->j:[B

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->c(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->k:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->d(Lcom/google/android/exoplayer2/a2$b;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->l:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->e(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->m:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->f(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->n:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->g(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->o:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->h(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->p:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->i(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->q:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->i(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->r:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->j(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->s:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->k(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->t:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->m(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->u:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->n(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->v:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->o(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->w:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->p(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->x:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->q(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->y:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->r(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->z:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->s(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->A:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->t(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->B:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->u(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->C:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->v(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->D:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->x(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->E:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->y(Lcom/google/android/exoplayer2/a2$b;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/a2;->F:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/a2$b;Lcom/google/android/exoplayer2/a2$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a2;-><init>(Lcom/google/android/exoplayer2/a2$b;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/a2;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/a2;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/a2;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/a2;
    .locals 5

    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->i0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->M(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->L(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->K(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->U(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->h0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x1d

    invoke-static {v3}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/a2$b;->N([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->O(Landroid/net/Uri;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->n0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->Q(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->R(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->X(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->P(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->g0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->V(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/a2$b;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/google/android/exoplayer2/v2;->a:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->m0(Lcom/google/android/exoplayer2/v2;)Lcom/google/android/exoplayer2/a2$b;

    :cond_1
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/google/android/exoplayer2/v2;->a:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->Z(Lcom/google/android/exoplayer2/v2;)Lcom/google/android/exoplayer2/a2$b;

    :cond_2
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->l0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    :cond_3
    const/16 v1, 0xd

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->k0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    :cond_4
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->W(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    :cond_5
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->Y(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/a2$b;

    :cond_6
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->c0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    :cond_7
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->b0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    :cond_8
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->a0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    :cond_9
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->f0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    :cond_a
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    :cond_b
    const/16 v1, 0x15

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->d0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    :cond_c
    const/16 v1, 0x19

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    :cond_d
    const/16 v1, 0x1a

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/a2$b;->j0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/a2$b;

    :cond_e
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2$b;->F()Lcom/google/android/exoplayer2/a2;

    move-result-object p0

    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/a2$b;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/a2$b;-><init>(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2$a;)V

    return-object v0
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

    const-class v3, Lcom/google/android/exoplayer2/a2;

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/a2;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->a:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->a:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->b:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->c:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->c:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->d:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->d:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->e:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->f:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->g:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->g:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->h:Lcom/google/android/exoplayer2/v2;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->h:Lcom/google/android/exoplayer2/v2;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->i:Lcom/google/android/exoplayer2/v2;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->i:Lcom/google/android/exoplayer2/v2;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->j:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->j:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->k:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->k:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->l:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->l:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->m:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->m:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->n:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->n:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->o:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->p:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->p:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->r:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->r:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->s:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->s:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->t:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->t:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->u:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->u:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->v:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->v:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->w:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->w:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->x:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->x:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->y:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->y:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->z:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->z:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->A:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->A:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->B:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->B:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->C:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->C:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->D:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->D:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->E:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/google/android/exoplayer2/a2;->E:Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/a2;->a:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/google/android/exoplayer2/a2;->b:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/google/android/exoplayer2/a2;->c:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/google/android/exoplayer2/a2;->d:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/google/android/exoplayer2/a2;->e:Ljava/lang/CharSequence;

    iget-object v6, v0, Lcom/google/android/exoplayer2/a2;->f:Ljava/lang/CharSequence;

    iget-object v7, v0, Lcom/google/android/exoplayer2/a2;->g:Ljava/lang/CharSequence;

    iget-object v8, v0, Lcom/google/android/exoplayer2/a2;->h:Lcom/google/android/exoplayer2/v2;

    iget-object v9, v0, Lcom/google/android/exoplayer2/a2;->i:Lcom/google/android/exoplayer2/v2;

    iget-object v10, v0, Lcom/google/android/exoplayer2/a2;->j:[B

    invoke-static {v10}, Ljava/util/Arrays;->hashCode([B)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/exoplayer2/a2;->k:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/google/android/exoplayer2/a2;->l:Landroid/net/Uri;

    iget-object v13, v0, Lcom/google/android/exoplayer2/a2;->m:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/google/android/exoplayer2/a2;->n:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->o:Ljava/lang/Integer;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->p:Ljava/lang/Boolean;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->r:Ljava/lang/Integer;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->s:Ljava/lang/Integer;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->t:Ljava/lang/Integer;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->u:Ljava/lang/Integer;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->v:Ljava/lang/Integer;

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->w:Ljava/lang/Integer;

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->x:Ljava/lang/CharSequence;

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->y:Ljava/lang/CharSequence;

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->z:Ljava/lang/CharSequence;

    move-object/from16 v26, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->A:Ljava/lang/Integer;

    move-object/from16 v27, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->B:Ljava/lang/Integer;

    move-object/from16 v28, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->C:Ljava/lang/CharSequence;

    move-object/from16 v29, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->D:Ljava/lang/CharSequence;

    move-object/from16 v30, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/a2;->E:Ljava/lang/CharSequence;

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v31, 0x0

    aput-object v1, v0, v31

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v7, v0, v1

    const/4 v1, 0x7

    aput-object v8, v0, v1

    const/16 v1, 0x8

    aput-object v9, v0, v1

    const/16 v1, 0x9

    aput-object v10, v0, v1

    const/16 v1, 0xa

    aput-object v11, v0, v1

    const/16 v1, 0xb

    aput-object v12, v0, v1

    const/16 v1, 0xc

    aput-object v13, v0, v1

    const/16 v1, 0xd

    aput-object v14, v0, v1

    const/16 v1, 0xe

    aput-object v16, v0, v1

    const/16 v1, 0xf

    aput-object v17, v0, v1

    const/16 v1, 0x10

    aput-object v18, v0, v1

    const/16 v1, 0x11

    aput-object v19, v0, v1

    const/16 v1, 0x12

    aput-object v20, v0, v1

    const/16 v1, 0x13

    aput-object v21, v0, v1

    const/16 v1, 0x14

    aput-object v22, v0, v1

    const/16 v1, 0x15

    aput-object v23, v0, v1

    const/16 v1, 0x16

    aput-object v24, v0, v1

    const/16 v1, 0x17

    aput-object v25, v0, v1

    const/16 v1, 0x18

    aput-object v26, v0, v1

    const/16 v1, 0x19

    aput-object v27, v0, v1

    const/16 v1, 0x1a

    aput-object v28, v0, v1

    const/16 v1, 0x1b

    aput-object v29, v0, v1

    const/16 v1, 0x1c

    aput-object v30, v0, v1

    const/16 v1, 0x1d

    aput-object v15, v0, v1

    invoke-static {v0}, Lcom/google/common/base/j;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->j:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->l:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0x16

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->x:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x17

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->y:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->z:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1b

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->C:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->D:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->E:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->h:Lcom/google/android/exoplayer2/v2;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->h:Lcom/google/android/exoplayer2/v2;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/k;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->i:Lcom/google/android/exoplayer2/v2;

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->i:Lcom/google/android/exoplayer2/v2;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/k;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->m:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->o:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->p:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->p:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->r:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->r:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->s:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->s:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->t:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->u:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->v:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->w:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->w:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->A:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->A:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->B:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v1, 0x1a

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->B:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v1, 0x1d

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->F:Landroid/os/Bundle;

    if-eqz v1, :cond_f

    const/16 v1, 0x3e8

    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->F:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f
    return-object v0
.end method
