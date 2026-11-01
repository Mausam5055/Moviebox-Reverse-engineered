.class public final Lcom/transsion/ad/MBAd$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/MBAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lhi/a;

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/ad/MBAd$b;->a:Ljava/lang/String;

    sget-object v1, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_MOVIE_BOX:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    iput-object v1, p0, Lcom/transsion/ad/MBAd$b;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    iput-object v0, p0, Lcom/transsion/ad/MBAd$b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/ad/MBAd$b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/ad/MBAd$b;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/ad/MBAd$a;
    .locals 14

    iget-object v0, p0, Lcom/transsion/ad/MBAd$b;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/ad/MBAd$a;

    iget-object v2, p0, Lcom/transsion/ad/MBAd$b;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/transsion/ad/MBAd$b;->b:Z

    iget-boolean v4, p0, Lcom/transsion/ad/MBAd$b;->c:Z

    iget-object v5, p0, Lcom/transsion/ad/MBAd$b;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    iget-object v6, p0, Lcom/transsion/ad/MBAd$b;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/ad/MBAd$b;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/ad/MBAd$b;->g:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/transsion/ad/MBAd$b;->h:Z

    iget-object v10, p0, Lcom/transsion/ad/MBAd$b;->i:Lhi/a;

    iget-boolean v11, p0, Lcom/transsion/ad/MBAd$b;->j:Z

    iget-boolean v12, p0, Lcom/transsion/ad/MBAd$b;->k:Z

    iget-boolean v13, p0, Lcom/transsion/ad/MBAd$b;->l:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/transsion/ad/MBAd$a;-><init>(Ljava/lang/String;ZZLcom/transsion/ad/strategy/AppManager$AppEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhi/a;ZZZ)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HiSavana App ID must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;
    .locals 1

    const-string v0, "adConfigHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/MBAd$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;
    .locals 1

    const-string v0, "adConfigUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/MBAd$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->b:Z

    return-object p0
.end method

.method public final e(Lcom/transsion/ad/strategy/AppManager$AppEnum;)Lcom/transsion/ad/MBAd$b;
    .locals 1

    const-string v0, "appEnum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/MBAd$b;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    return-object p0
.end method

.method public final f(Lhi/a;)Lcom/transsion/ad/MBAd$b;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/MBAd$b;->i:Lhi/a;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;
    .locals 1

    const-string v0, "hisavanaAppId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/MBAd$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;
    .locals 1

    const-string v0, "hotSceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/MBAd$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final i(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->c:Z

    return-object p0
.end method

.method public final j(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->h:Z

    return-object p0
.end method

.method public final k(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->j:Z

    return-object p0
.end method

.method public final l(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->l:Z

    return-object p0
.end method

.method public final m(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->k:Z

    return-object p0
.end method
