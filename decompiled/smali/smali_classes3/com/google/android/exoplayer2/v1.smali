.class public final Lcom/google/android/exoplayer2/v1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/v1$j;,
        Lcom/google/android/exoplayer2/v1$e;,
        Lcom/google/android/exoplayer2/v1$d;,
        Lcom/google/android/exoplayer2/v1$k;,
        Lcom/google/android/exoplayer2/v1$l;,
        Lcom/google/android/exoplayer2/v1$g;,
        Lcom/google/android/exoplayer2/v1$i;,
        Lcom/google/android/exoplayer2/v1$h;,
        Lcom/google/android/exoplayer2/v1$b;,
        Lcom/google/android/exoplayer2/v1$f;,
        Lcom/google/android/exoplayer2/v1$c;
    }
.end annotation


# static fields
.field public static final i:Lcom/google/android/exoplayer2/v1;

.field public static final j:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/exoplayer2/v1$h;

.field public final c:Lcom/google/android/exoplayer2/v1$i;

.field public final d:Lcom/google/android/exoplayer2/v1$g;

.field public final e:Lcom/google/android/exoplayer2/a2;

.field public final f:Lcom/google/android/exoplayer2/v1$d;

.field public final g:Lcom/google/android/exoplayer2/v1$e;

.field public final h:Lcom/google/android/exoplayer2/v1$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/v1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/v1$c;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v1$c;->a()Lcom/google/android/exoplayer2/v1;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/v1;->i:Lcom/google/android/exoplayer2/v1;

    new-instance v0, Lcom/google/android/exoplayer2/u1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/u1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/v1;->j:Lcom/google/android/exoplayer2/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/v1$e;Lcom/google/android/exoplayer2/v1$i;Lcom/google/android/exoplayer2/v1$g;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/v1$j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/v1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    iput-object p3, p0, Lcom/google/android/exoplayer2/v1;->c:Lcom/google/android/exoplayer2/v1$i;

    iput-object p4, p0, Lcom/google/android/exoplayer2/v1;->d:Lcom/google/android/exoplayer2/v1$g;

    iput-object p5, p0, Lcom/google/android/exoplayer2/v1;->e:Lcom/google/android/exoplayer2/a2;

    iput-object p2, p0, Lcom/google/android/exoplayer2/v1;->f:Lcom/google/android/exoplayer2/v1$d;

    iput-object p2, p0, Lcom/google/android/exoplayer2/v1;->g:Lcom/google/android/exoplayer2/v1$e;

    iput-object p6, p0, Lcom/google/android/exoplayer2/v1;->h:Lcom/google/android/exoplayer2/v1$j;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/v1$e;Lcom/google/android/exoplayer2/v1$i;Lcom/google/android/exoplayer2/v1$g;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/v1$j;Lcom/google/android/exoplayer2/v1$a;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/v1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/v1$e;Lcom/google/android/exoplayer2/v1$i;Lcom/google/android/exoplayer2/v1$g;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/v1$j;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/v1;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/v1;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/v1;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/v1;
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/v1;->f(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/v1;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/v1$g;->f:Lcom/google/android/exoplayer2/v1$g;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/v1$g;->g:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/v1$g;

    goto :goto_0

    :goto_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/v1;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/a2;->G:Lcom/google/android/exoplayer2/a2;

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/a2;->H:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a2;

    goto :goto_2

    :goto_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/v1;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/exoplayer2/v1$e;->h:Lcom/google/android/exoplayer2/v1$e;

    :goto_4
    move-object v3, v0

    goto :goto_5

    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/v1$d;->g:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/v1$e;

    goto :goto_4

    :goto_5
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/v1;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/google/android/exoplayer2/v1$j;->d:Lcom/google/android/exoplayer2/v1$j;

    :goto_6
    move-object v7, p0

    goto :goto_7

    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/v1$j;->e:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/v1$j;

    goto :goto_6

    :goto_7
    new-instance p0, Lcom/google/android/exoplayer2/v1;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/v1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/v1$e;Lcom/google/android/exoplayer2/v1$i;Lcom/google/android/exoplayer2/v1$g;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/v1$j;)V

    return-object p0
.end method

.method public static d(Landroid/net/Uri;)Lcom/google/android/exoplayer2/v1;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/v1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/v1$c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/v1$c;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/v1$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/v1$c;->a()Lcom/google/android/exoplayer2/v1;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/google/android/exoplayer2/v1;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/v1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/v1$c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/v1$c;->j(Ljava/lang/String;)Lcom/google/android/exoplayer2/v1$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/v1$c;->a()Lcom/google/android/exoplayer2/v1;

    move-result-object p0

    return-object p0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/v1$c;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/v1$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/v1$c;-><init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/v1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/v1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/v1;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/v1;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/v1;->f:Lcom/google/android/exoplayer2/v1$d;

    iget-object v3, p1, Lcom/google/android/exoplayer2/v1;->f:Lcom/google/android/exoplayer2/v1$d;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/v1$d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    iget-object v3, p1, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/v1;->d:Lcom/google/android/exoplayer2/v1$g;

    iget-object v3, p1, Lcom/google/android/exoplayer2/v1;->d:Lcom/google/android/exoplayer2/v1$g;

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/v1;->e:Lcom/google/android/exoplayer2/a2;

    iget-object v3, p1, Lcom/google/android/exoplayer2/v1;->e:Lcom/google/android/exoplayer2/a2;

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/v1;->h:Lcom/google/android/exoplayer2/v1$j;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v1;->h:Lcom/google/android/exoplayer2/v1$j;

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/v1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/v1$h;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/v1;->d:Lcom/google/android/exoplayer2/v1$g;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/v1$g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/v1;->f:Lcom/google/android/exoplayer2/v1$d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/v1$d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/v1;->e:Lcom/google/android/exoplayer2/a2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/v1;->h:Lcom/google/android/exoplayer2/v1$j;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/v1$j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/v1;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/v1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/v1;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/v1;->d:Lcom/google/android/exoplayer2/v1$g;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/v1$g;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/v1;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/v1;->e:Lcom/google/android/exoplayer2/a2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a2;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/v1;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/v1;->f:Lcom/google/android/exoplayer2/v1$d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/v1$d;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/v1;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/v1;->h:Lcom/google/android/exoplayer2/v1$j;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/v1$j;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
