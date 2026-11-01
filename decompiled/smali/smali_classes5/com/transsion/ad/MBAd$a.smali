.class public final Lcom/transsion/ad/MBAd$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/MBAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field private final d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Lhi/a;

.field private final j:Z

.field private final k:Z

.field private final l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLcom/transsion/ad/strategy/AppManager$AppEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhi/a;ZZZ)V
    .locals 1

    const-string v0, "hisavanaAppId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appEnum"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotSceneId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfigUrl"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfigHost"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    iput-boolean p3, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    iput-object p4, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    iput-object p5, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/ad/MBAd$a;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/transsion/ad/MBAd$a;->h:Z

    iput-object p9, p0, Lcom/transsion/ad/MBAd$a;->i:Lhi/a;

    iput-boolean p10, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    iput-boolean p11, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    iput-boolean p12, p0, Lcom/transsion/ad/MBAd$a;->l:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    return v0
.end method

.method public final d()Lcom/transsion/ad/strategy/AppManager$AppEnum;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    return-object v0
.end method

.method public final e()Lhi/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->i:Lhi/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/ad/MBAd$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/ad/MBAd$a;

    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    iget-boolean v3, p1, Lcom/transsion/ad/MBAd$a;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    iget-boolean v3, p1, Lcom/transsion/ad/MBAd$a;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    iget-object v3, p1, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/MBAd$a;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->h:Z

    iget-boolean v3, p1, Lcom/transsion/ad/MBAd$a;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->i:Lhi/a;

    iget-object v3, p1, Lcom/transsion/ad/MBAd$a;->i:Lhi/a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    iget-boolean v3, p1, Lcom/transsion/ad/MBAd$a;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    iget-boolean v3, p1, Lcom/transsion/ad/MBAd$a;->k:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->l:Z

    iget-boolean p1, p1, Lcom/transsion/ad/MBAd$a;->l:Z

    if-eq v1, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->h:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->h:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->i:Lhi/a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->l:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->l:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    iget-boolean v2, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    iget-object v3, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    invoke-virtual {v3}, Lcom/transsion/ad/strategy/AppManager$AppEnum;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/transsion/ad/MBAd$a;->h:Z

    iget-object v7, p0, Lcom/transsion/ad/MBAd$a;->i:Lhi/a;

    iget-boolean v8, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    iget-boolean v9, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    iget-boolean v10, p0, Lcom/transsion/ad/MBAd$a;->l:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n                AdInitParams {\n                    hisavanaAppId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n                    adTestDevice = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n                    isDebug = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n                    appEnum = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n                    hotSceneId = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n                    adConfigUrl = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n                    mediaDisposeAppForeground = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n                    businessBridge = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n                    mediaDisposeH5Url = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n                    skipHiSdkInitDelay = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n                    openPsActivateAd = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n                }\n            "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    iget-boolean v2, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    iget-object v3, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    iget-object v4, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/ad/MBAd$a;->g:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/transsion/ad/MBAd$a;->h:Z

    iget-object v8, p0, Lcom/transsion/ad/MBAd$a;->i:Lhi/a;

    iget-boolean v9, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    iget-boolean v10, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    iget-boolean v11, p0, Lcom/transsion/ad/MBAd$a;->l:Z

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AdInitParams(hisavanaAppId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adTestDevice="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDebug="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", appEnum="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hotSceneId="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adConfigUrl="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adConfigHost="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mediaDisposeAppForeground="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", businessBridge="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mediaDisposeH5Url="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", skipHiSdkInitDelay="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", openPsActivateAd="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
