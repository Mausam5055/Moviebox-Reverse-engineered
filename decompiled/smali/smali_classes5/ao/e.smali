.class public final Lao/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private d:Lcom/transsion/player/enum/PlayMimeType;

.field private final e:Lcom/transsion/player/mediasession/MediaItem;

.field private f:Ljava/lang/String;

.field private final g:Lkotlin/Lazy;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lao/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lao/e;->b:Ljava/lang/String;

    iput p3, p0, Lao/e;->c:I

    iput-object p4, p0, Lao/e;->d:Lcom/transsion/player/enum/PlayMimeType;

    iput-object p5, p0, Lao/e;->e:Lcom/transsion/player/mediasession/MediaItem;

    new-instance p1, Lao/d;

    invoke-direct {p1, p0}, Lao/d;-><init>(Lao/e;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lao/e;->g:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, -0x1

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    sget-object p4, Lcom/transsion/player/enum/PlayMimeType;->DEFAULT:Lcom/transsion/player/enum/PlayMimeType;

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;)V

    return-void
.end method

.method public static synthetic a(Lao/e;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lao/e;->o(Lao/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lao/e;->b:Ljava/lang/String;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "?"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Loo/d;->a:Loo/d$a;

    iget-object v2, p0, Lao/e;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "substring(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Loo/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Loo/d;->a:Loo/d$a;

    iget-object v1, p0, Lao/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Loo/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static final o(Lao/e;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lao/e;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lao/e;->h:Z

    return v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lao/e;->k:Ljava/util/Map;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lao/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lao/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lao/e;

    iget-object v1, p0, Lao/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lao/e;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lao/e;->b:Ljava/lang/String;

    iget-object v3, p1, Lao/e;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lao/e;->c:I

    iget v3, p1, Lao/e;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lao/e;->d:Lcom/transsion/player/enum/PlayMimeType;

    iget-object v3, p1, Lao/e;->d:Lcom/transsion/player/enum/PlayMimeType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lao/e;->e:Lcom/transsion/player/mediasession/MediaItem;

    iget-object p1, p1, Lao/e;->e:Lcom/transsion/player/mediasession/MediaItem;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lao/e;->j:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lao/e;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lao/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lao/e;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lao/e;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lao/e;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lao/e;->d:Lcom/transsion/player/enum/PlayMimeType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lao/e;->e:Lcom/transsion/player/mediasession/MediaItem;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/player/mediasession/MediaItem;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Lcom/transsion/player/mediasession/MediaItem;
    .locals 1

    iget-object v0, p0, Lao/e;->e:Lcom/transsion/player/mediasession/MediaItem;

    return-object v0
.end method

.method public final j()Lcom/transsion/player/enum/PlayMimeType;
    .locals 1

    iget-object v0, p0, Lao/e;->d:Lcom/transsion/player/enum/PlayMimeType;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lao/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lao/e;->c:I

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lao/e;->i:Z

    return v0
.end method

.method public final n()Z
    .locals 5

    iget-object v0, p0, Lao/e;->d:Lcom/transsion/player/enum/PlayMimeType;

    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->DASH:Lcom/transsion/player/enum/PlayMimeType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->HLS:Lcom/transsion/player/enum/PlayMimeType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lao/e;->b:Ljava/lang/String;

    const-string v1, ".mpd"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lao/e;->b:Ljava/lang/String;

    const-string v1, ".m3u8"

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final p(Z)V
    .locals 0

    iput-boolean p1, p0, Lao/e;->h:Z

    return-void
.end method

.method public final q(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lao/e;->k:Ljava/util/Map;

    return-void
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Lao/e;->j:Z

    return-void
.end method

.method public final s(Z)V
    .locals 0

    iput-boolean p1, p0, Lao/e;->i:Z

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lao/e;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lao/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lao/e;->b:Ljava/lang/String;

    iget v2, p0, Lao/e;->c:I

    iget-object v3, p0, Lao/e;->d:Lcom/transsion/player/enum/PlayMimeType;

    iget-object v4, p0, Lao/e;->e:Lcom/transsion/player/mediasession/MediaItem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaSource(id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", weights="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mimeType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mediaItem="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lcom/transsion/player/enum/PlayMimeType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lao/e;->d:Lcom/transsion/player/enum/PlayMimeType;

    return-void
.end method
