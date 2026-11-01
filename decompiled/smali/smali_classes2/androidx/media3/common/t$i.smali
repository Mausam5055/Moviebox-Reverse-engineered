.class public final Landroidx/media3/common/t$i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/t$i$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/media3/common/t$i;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/common/t$i$a;

    invoke-direct {v0}, Landroidx/media3/common/t$i$a;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/t$i$a;->d()Landroidx/media3/common/t$i;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/t$i;->d:Landroidx/media3/common/t$i;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/t$i;->e:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/t$i;->f:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/t$i;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/t$i$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/t$i$a;->a(Landroidx/media3/common/t$i$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$i;->a:Landroid/net/Uri;

    invoke-static {p1}, Landroidx/media3/common/t$i$a;->b(Landroidx/media3/common/t$i$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$i;->b:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/t$i$a;->c(Landroidx/media3/common/t$i$a;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/t$i;->c:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t$i$a;Landroidx/media3/common/t$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/t$i;-><init>(Landroidx/media3/common/t$i$a;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/t$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/t$i;

    iget-object v1, p0, Landroidx/media3/common/t$i;->a:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media3/common/t$i;->a:Landroid/net/Uri;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/media3/common/t$i;->b:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/t$i;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/media3/common/t$i;->c:Landroid/os/Bundle;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object p1, p1, Landroidx/media3/common/t$i;->c:Landroid/os/Bundle;

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    if-ne v1, p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/t$i;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/t$i;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/t$i;->c:Landroid/os/Bundle;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method
